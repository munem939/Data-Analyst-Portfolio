import pandas as pd
import os

# Obtain file location
file_path = [
    '<File Path>/vgsales.csv',
    '<File Path>/vgsales-with-reviews.csv']

for i in file_path:
    # Extract File Name
    file_name = os.path.basename(i)

    # Read the CSV file and convert to dataframe
    data = pd.read_csv(i)
    dataframe = pd.DataFrame(data)

    # Print results
    print(f"\n{file_name} Info:")
    print(dataframe.info())
