
## A Comprehensive Analysis of Video Game Sales
## Introduction

This report aims to present a comprehensive analysis of the video game sales dataset, integrating SQL queries for data preprocessing and Python code for data visualization. The report covers initial data cleaning, merging, export, and subsequent analysis using Python and Tableau, with additional insights from SQL queries.
## Data Analysis Tools Used

- SQL
- Python
- Excel
- Tableau


## Python Code to Summarise Data for Each Heading for Each File:

- Two datasets, named "*vgsales*" and "*vgsalesreviews*", were obtained in CSV format. These files contain information about video games, encompassing sales data and review-related details, respectively.
- A Python script was developed to summarises key insights for each heading in "*vgsales*" and "*vgsalesreviews*" files, offering valuable information on the data types for each header and how many blank spaces are present in the dataset.

*Code:*

![DataSummariseCode](https://i.imgur.com/QnJU0d1.png)

*Output:*

![DataSummariseCodeOutput1](https://i.imgur.com/mG880Lg.png)

![DataSummariseCodeOutput2](https://i.imgur.com/pymT0ep.png)


## Data Cleaning and Integration using SQL:

- Blank cells in the “*vgsalesreviews*” table were identified and nullified, focusing on critical columns such as “*year_of_release*”, “*critic_score*”, “*critic_count*”, “*user_score*”, and “*user_count*”.
- Columns in the “*vgsalesreviews*” table were converted from "Text" to specific data fields, enhancing the data's accuracy and usability.
- The two tables were then merged into a new table named “*vgsalesfull*” using a left join on the game names.
- The “*vgsalesfull*” table was exported as a CSV file for further analysis.

![SQLCode1](https://i.imgur.com/98mvk9c.png)

![SQLCode2](https://i.imgur.com/KeATgQQ.png)


## Data Analysis, Key Findings and Visualizations

- Utilizing SQL, an analysis of total global, North American, European, Japanese, and "Other" region sales was conducted across various genres. The findings revealed that the action genre holds the highest global sales, trailed by sports and shooter games.
- A potential explanation for the notable dominance of action games in sales is the extensive variety within the genre. Additionally, the robust sales of sports and shooter games can be attributed to the consistent annual releases of popular franchises in these genres. 

![SQLCode3](https://i.imgur.com/rYno22y.png)

![SQLCode3Output](https://i.imgur.com/ZljZyPT.png)

- On average, publishers released 20 games. Namco Bandai Games led with 774 releases, followed by Nintendo and Konami

![SQLCode4](https://i.imgur.com/DwM8eHb.png)

![SQLCode4Output](https://i.imgur.com/YBz33HF.png)

- Common Table Expressions (CTEs) were leveraged on SQL to identify and present the top 3 games from each genre based on global sales.

![SQLCode5](https://i.imgur.com/nyBvFyh.png)

![SQLCode5Output](https://i.imgur.com/jqPKsB1.png)


- Demonstrating substantial sales figures, the DS and PS2 led in game releases. Meanwhile, Xbox 360, PS3, and PS2 showcased parallel global sales, signifying their joint market dominance in distinct eras.
- Notably, action game sales soared on home consoles like the PS2, Xbox 360, and PS3, requiring external displays. In contrast, handheld consoles like the DS and PSP saw a prevalence of miscellaneous and puzzle games in their releases.
- This trend is likely influenced by the handheld consoles' target audience, catering to younger individuals and those with on-the-go lifestyles, who prefer shorter gaming sessions.

https://public.tableau.com/app/profile/muhammad.ali1564/viz/VideoGameSalesandReleasesAcrossDifferentPlatforms/Dashboard1

![TableauDashboard](https://i.imgur.com/TLf3pz9.png)

- A Python script was developed to visualize the top games' sales by region, demonstrating the global sales across “North America”, “Europe”, “Japan”, and “Other” regions.
- North America consistently led in overall sales compared to Europe and Japan, attributed to the larger U.S. market.

*Code:*

![PythonCode1](https://i.imgur.com/8N41mHC.png)

*Data Visualization Output:*

![PythonCode1Output](https://i.imgur.com/ra9zWwL.png)

- Python was employed to craft a bar chart highlighting the top 10 publishers by total global sales. The chart spotlighted Electronic Arts, Activision, and Nintendo as the foremost contributors, underscoring the influential market presence of their recurring annual franchise releases.

![PythonCode2](https://i.imgur.com/0rHf6C0.png)

*Data Visualization Output:*

![PythonCode2Output](https://i.imgur.com/zhVTW60.png)


## Conclusion

This analysis provides a comprehensive overview of video game sales, integrating SQL for data preprocessing and Python for visualization. The combination of Tableau visualizations, Python-generated charts, and SQL-derived insights offers a holistic perspective on platform preferences, regional sales, top publishers, and genre-specific market trends.