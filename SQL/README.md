## Data Cleaning, Merging and Integration using SQL:

- Blank cells in the “*vgsalesreviews*” table were identified and nullified, focusing on critical columns such as “*year_of_release*”, “*critic_score*”, “*critic_count*”, “*user_score*”, and “*user_count*”.
- Columns in the “*vgsalesreviews*” table were converted from "Text" to specific data fields, enhancing the data's accuracy and usability.
- The two tables were then merged into a new table named “*vgsalesfull*” using a left join on the game names.
- The “*vgsalesfull*” table was exported as a CSV file for further analysis using SQL.

## Data Analysis using SQL:

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