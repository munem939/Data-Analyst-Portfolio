-- Fixing importing vgsalesreviews table by nulling all blank cells
update vgsalesreviews
set year_of_release = nullif(year_of_release, ''), 
	critic_score = nullif(critic_score, ''), 
	critic_count = nullif(critic_count, ''), 
	user_score = nullif(user_score, ''), 
	user_count = nullif(user_count, '')
where `name` is not null;

-- Turning columns from "Text" to specific data fields    
alter table vgsalesreviews
modify column year_of_release int,
modify column critic_score int,
modify column critic_count int,
modify column user_score float,
modify column user_count int;

-- Retriving basic information from both vgsalesreviews table and vgsales table
select *
from vgsalesreviews
limit 100;

select *
from vgsales
limit 100;

-- Merging vgsalesreviews table and vgsales table, and saving as a table
create table vgsalesfull as
select 
	vg1.Rank as index_number,
    vg1.Name as game_name,
    vg1.Console as console,
    vg1.Year as release_year,
    vg2.Rating as rating,
    vg1.Genre as genre,
    vg1.Publisher as publisher,
    vg2.Developer as developer,
    vg1.NA_Sales as na_sales,
    vg1.EU_Sales as eu_sales,
    vg1.JP_Sales as jp_sales,
    vg1.Other_Sales as other_sales,
    vg1.Global_Sales as global_sales,
    vg2.Critic_Score as critic_score,
    vg2.Critic_Count as critic_count,
    vg2.User_Score as user_score,
    vg2.User_Count as user_count
from vgsales as vg1
left join vgsalesreviews as vg2
on vg1.Name = vg2.Name;

-- Exporting new vgsalesfull table as a .csv file
select *
into outfile 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/vgsalesfull.csv'
fields terminated by '\t'
enclosed by '"'
lines terminated by '\n'
from vgsalesfull;

-- Filtering the data to showcase data between 2010 and 2020
select *
from vgsalesfull
where release_year >= 2010 and release_year <= 2020
order by release_year desc, game_name asc;

-- Calculating the total NA, EU, JP, Other and Global sales for each genre
select 
	genre, 
    round(sum(na_sales),2) as total_na_sales, 
    round(sum(eu_sales),2) as total_eu_sales, 
    round(sum(jp_sales),2) as total_jp_sales, 
    round(sum(other_sales),2) as total_other_sales,
    round(sum(global_sales),2) as total_global_sales
from vgsalesfull
group by genre
order by total_global_sales desc;

-- Finding Out Which Publisher Released More Games Than the Average Number by All Publishers          
select
    publisher,
    count(distinct game_name) as num_games,
    floor((select avg(game_count) from (
		select count(distinct game_name) as game_count from vgsalesfull group by publisher)
			as avg_games)) as avg_games
from vgsalesfull
group by publisher
having num_games > avg_games
order by num_games desc;

-- Place Each Game In a sales category based on their global sale numbers 
select
	index_number,
    game_name,
    console,
    release_year,
    publisher,
    developer,
    global_sales,
    case
		when global_sales >= 30.0 then 'Very High Sales'
        when global_sales < 30.0 and global_sales >= 15.0 then 'High Sales' 
		when global_sales < 15.0 and global_sales >= 5.0 then 'Moderate Sales'
		when global_sales < 5.0 and global_sales >= 0.5 then 'Low sales'
		else 'Very Low Sales' end as sales_category
from vgsalesfull
order by index_number;

-- Retrieve the Top 3 Games From Each Genre
-- Due to the Presence of Duplicate Data, Because of Variations in Other Columns,
-- a Common Table Expression (CTE) Was Used Before Selecting Distinct Video Games
with ranked_data as (
    select
        game_name,
        console,
        genre,
        global_sales,
        dense_rank() over (partition by genre order by global_sales desc) as sales_rank
    from vgsalesfull)
select distinct game_name, console, genre, global_sales, sales_rank
from ranked_data
where sales_rank <= 3
order by genre, sales_rank;

