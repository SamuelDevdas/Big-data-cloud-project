#!/bin/bash

# Navigate to the folder containing the CSV files
cd Western-Europe-Power-Consumption

# Create a new folder called 'subset_csv' to store the subset files
mkdir -p subset_csv

# Loop through each CSV file and subset the first 1000 rows
for file in *.csv; do
    # Extract the first 1000 rows and save to a new file in the 'subset_csv' folder
    head -n 1000 "$file" > "subset_csv/subset_$file"


# Script completed
echo "Subsetting completed for all CSV files. Files saved in the 'subset_csv' folder."

done