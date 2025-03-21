# GDSC Drug Sensitivity Dashboard
![image alt](https://github.com/sagarverma40/Drug_Sensitivity/blob/main/Logo.jpg)
## Project Overview

This project analyzes the Genomics of Drug Sensitivity in Cancer (GDSC) dataset to derive insights into drug responses across different cancer types. The goal is to process and clean the dataset, store it in a MySQL database, and create a dynamic Power BI dashboard with key performance indicators (KPIs), visualizations, and interactive slicers.

## Dashboard Demo
![image alt](https://github.com/sagarverma40/Drug_Sensitivity/blob/main/1.png)
![image alt]()
![image alt]()
## Tools & Technologies Used

1. Python (Pandas, SQLAlchemy, Matplotlib, Seaborn)

2. MySQL Workbench (Database storage and queries)

3. Power BI (Data visualization and reporting)

4. GitHub (Version control and project documentation)

5. Jupyter Notebook (Data preprocessing and analysis)

6. Dataset Processing & Cleaning

7. Load the dataset using Pandas.

8. Handle missing values and normalize data.

9. Save the cleaned dataset as cleaned_GDSC_DATASET.csv.

## Python to SQL Integration

1. Create a MySQL database and table.

2. Use SQLAlchemy to load data from Pandas to MySQL.

from sqlalchemy import create_engine

#### Create SQL connection
engine = create_engine("mysql+pymysql://user:password@localhost/your_database")

#### Load cleaned data into MySQL
df = pd.read_csv("cleaned_GDSC_DATASET.csv")
df.to_sql("drug_sensitivity", con=engine, if_exists="replace", index=False)

print("Data inserted into MySQL successfully!")

## SQL to Power BI Connection

1. Open Power BI and go to Get Data → MySQL Database.

2. Enter your server name, database name, and credentials.

3. Select the drug_sensitivity table and load data.

4. Create relationships and build visualizations.

## Dashboard Features

### KPIs

1. Total Number of Drugs Tested

2. Average AUC Score

3. Most Tested Drug

4. Most Common Cancer Type

5. Average Drug Sensitivity

### Slicers

1. Drug Name

2. Target Pathway

3. GDSC Tissue Descriptor

### Visualizations

1. Bar Chart: Top 5 Most Tested Drugs

2. Pie Chart: Drug Response Distribution

3. Column Chart: Top Tissue Types for Drug Testing

4. Line Chart: Average AUC by Target Pathway

5. Bar Chart: Top 10 Most Effective Drugs

6. Tree Map: Drug Target Pathway Distribution

7. Table: Unique Cell Lines Per Cancer Types

8. Scatter Plot: Cell Lines Growth Properties vs. Drug Sensitivity

## Click Here to the View the Project 
https://github.com/sagarverma40/Drug_Sensitivity.git

## Conclusion

This project provides a comprehensive analysis of drug sensitivity in cancer using Python, MySQL, and Power BI. By leveraging SQL for data management and Power BI for interactive visualizations, we have created a dynamic dashboard that offers real-time insights into drug response patterns. This approach can aid researchers in making data-driven decisions for targeted cancer therapies.

