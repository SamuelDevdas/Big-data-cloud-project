
# CSV Subsetter

The Bash script contains a script that subsets the first `n` rows (or the first 1000 rows by default) of all CSV files in a given folder. The subsetted CSV files are saved into a new directory.

## Features

- Extracts the first `n` rows of all `.csv` files in a directory.
- Creates a new folder (`subset_csv`) to store the subsetted files.
- The new files are prefixed with `subset_` to distinguish them from the original files.

## Prerequisites

- A Linux or macOS system with Bash (the script may also work in Git Bash on Windows).
- Make sure that the script has execute permissions (use `chmod +x subset_csv.sh`).

## How to Use

### 1. Clone the repository
Clone the repository to your local machine:

```bash
git clone https://github.com/yourusername/csv-subsetter.git
cd csv-subsetter
```

### 2. Add CSV files
Place your `.csv` files into the directory where the script resides (or modify the script to point to the folder containing your files).

### 3. Run the script

You can run the script by executing the following command:

```bash
./subset_csv.sh
```

By default, this will extract the first 1000 rows from each CSV file in the directory and save the subsetted files in a folder named `subset_csv`.

### 4. Modify the row count (optional)

To subset a different number of rows (e.g., 500), modify the `head` command in the script as follows:

```bash
head -n 500 "$file" > "subset_csv/subset_$file"
```

### 5. View the results

The subsetted CSV files will be saved in the `subset_csv` folder with the prefix `subset_`.

### Example

Suppose you have a directory with the following CSV files:
```
data1.csv
data2.csv
```

After running the script, you will have a new folder called `subset_csv` containing:
```
subset_data1.csv
subset_data2.csv
```

These new files will contain the first 1000 rows (or the number you specify).

### Check the results by running the following command:
```
 wc -l *.csv
```

### 6. Debugging and Issues

- If you encounter the error `syntax error: unexpected end of file`, ensure the `for` loop in your script is properly closed with `done`.
- Check for Windows-style line endings (use the `dos2unix` command to fix them if necessary).

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.
