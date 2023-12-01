import pandas as pd
import matplotlib.pyplot as plt

data = pd.read_csv('<File Path>/vgsalesfull-PROCESSED.csv')

# Create a new column for sales rank
data['Sales_Rank'] = data['index_number']

# Define regions
regions = ['na_sales', 'eu_sales', 'jp_sales', 'other_sales']
legend_labels = ['North America', 'Europe', 'Japan', 'Other']

# Sort the DataFrame by global sales in descending order
data = data.sort_values(by='global_sales', ascending=False)

# Plot all regions on the same plot
plt.figure(figsize=(12, 9))

for region in regions:
    plt.plot(data['Sales_Rank'], data[region], marker='o')

plt.title('Top Games Sales by Region')
plt.xlabel('Global Sales Ranking')
plt.ylabel('Number of Sales (Millions)')
plt.legend(legend_labels)
plt.xlim(0, 100)
plt.xticks(range(0, 101, 10))
plt.yticks(range(0, 45, 5))
plt.minorticks_on()
plt.grid(True)

# Calculate total global sales for each publisher
publisher_sales = data.groupby('publisher')['global_sales'].sum()

# Select the top 10 publishers
top_10_publishers = publisher_sales.nlargest(10)

# Replace spaces with newline character for better readability
top_10_publishers.index = top_10_publishers.index.str.replace(' ', '\n')

# Plot bar graph
plt.figure(figsize=(12, 9))
plt.bar(top_10_publishers.index, top_10_publishers, color='maroon')
plt.title('Top 10 Selling Publishers')
plt.xlabel('Publisher')
plt.ylabel('Total Global Sales (Millions)')
plt.xticks(fontsize=8)
plt.show()
