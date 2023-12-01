## Automated Spatial Mapping of D/G Ratios in Raman Spectroscopy Data Using Python

**RamanMappingScript.py**

- This Python script processes Raman spectroscopy data from multiple text files, calculating the intensity ratio of the D and G peaks (D-peak/G-peak Ratio) for each file.
- The Python script retrieves x and y coordinates from file names, which adhere to a specific syntax exported from the utilized machine, by utilising the Tkinter package.
- It then reads the data, employs signal smoothing, and calculates the D-peak/G-peak Ratio, by utilising the Pandas package.

The layout of the file names for the outputted data files are shown below, with the x and y coordinates shown in bold:

| File Number | File Name                |
| :-------- | :------------------------- |
| 1 | "RamanMap1_1500_x100obj_10pwr_3sx1_0__X_**8679.02**__Y_**-70129.4**__Time_0.txt" |
| 2 | "RamanMap1_1500_x100obj_10pwr_3sx1_1__X_**8679.52**__Y_**-70129.4**__Time_3.txt" |
| 3 | "RamanMap1_1500_x100obj_10pwr_3sx1_2__X_**8680.02**__Y_**-70129.4**__Time_7.txt" |
| 4 | "RamanMap1_1500_x100obj_10pwr_3sx1_3__X_**8680.52**__Y_**-70129.4**__Time_10.txt" |
| 5 | "RamanMap1_1500_x100obj_10pwr_3sx1_4__X_**8681.02**__Y_**-70129.4**__Time_14.txt" |
|  | ... |
| 32 | "RamanMap1_1500_x100obj_10pwr_3sx1_31__X_**8679.02**__Y_**-70128.9**__Time_109.txt" |
| 33| "RamanMap1_1500_x100obj_10pwr_3sx1_32__X_**8679.52**__Y_**-70128.9**__Time_113.txt" |
| 34 | "RamanMap1_1500_x100obj_10pwr_3sx1_33__X_**8680.02**__Y_**-70128.9**__Time_116.txt" |
| 35 | "RamanMap1_1500_x100obj_10pwr_3sx1_34__X_**8680.52**__Y_**-70128.9**__Time_120.txt" |
| 36 | "RamanMap1_1500_x100obj_10pwr_3sx1_35__X_**8681.02**__Y_**-70128.9**__Time_123.txt" |

The results are organized into a 2D array representing a spatial map, shown below. The script then generates a contour plot using matplotlib, providing insights into the spatial distribution of D-peak/G-peak Ratios. Additionally, the script records the execution time, enhancing efficiency assessment. Overall, it automates complex data analysis tasks, aiding researchers in visualizing and interpreting Raman spectroscopy results

**Example Data 1 Data Visualisation:**

![Data1Output](https://i.imgur.com/Vqo3Zlp.png)

**Example Data 2 Data Visualisation:**

![Data1Output](https://i.imgur.com/8YAecsc.png)

## Python Code to Summarise 2 CSV File Datasets and Analyse Data:

**DataSummarise.py**

- Two datasets, named "*vgsales*" and "*vgsalesreviews*", were obtained in CSV format. These files contain information about video games, encompassing sales data and review-related details, respectively.
- A Python script was developed to summarises key insights for each heading in "*vgsales*" and "*vgsalesreviews*" files, offering valuable information on the data types for each header and how many blank spaces are present in the dataset.

**VideoGameDataAnalysis.py**

- A Python script was developed to visualize the top games' sales by region, demonstrating the global sales across “North America”, “Europe”, “Japan”, and “Other” regions.
- Python was employed to craft a bar chart highlighting the top 10 publishers by total global sales

**Data Visualization Output:**

**Top Game Sales by Region Data Visualisation**

![PythonCode1Output](https://i.imgur.com/ra9zWwL.png)

**Top 10 Selling Publishers Data Visualisation**

![PythonCode2Output](https://i.imgur.com/zhVTW60.png)

