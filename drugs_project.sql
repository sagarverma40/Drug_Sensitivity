CREATE DATABASE GDSC_DB;
USE GDSC_DB;

DROP TABLE drug_sensitivity;
 
# 1. Count of Unique Drugs
 SELECT COUNT(DISTINCT Drug_Name) AS Unique_Drugs 
 FROM drug_sensitivity;
 
# 2. Top 5 Most Tested Drugs
SELECT drug_name, COUNT(*) AS test_count
FROM drug_sensitivity
GROUP BY drug_name
ORDER BY test_count DESC
LIMIT 5;

# 3. Distribution of Drug Responses (ln_ic50 values)
SELECT 
    CASE 
        WHEN ln_ic50 < -5 THEN 'Highly Sensitive'
        WHEN ln_ic50 BETWEEN -5 AND -2 THEN 'Moderately Sensitive'
        ELSE 'Resistant'
    END AS sensitivity_category,
    COUNT(*) AS sample_count
FROM drug_sensitivity
GROUP BY sensitivity_category;

# 3. Top 5 Tissue Types with Most Drug Tests
SELECT gdsc_tissue_descriptor_1, COUNT(*) AS test_count
FROM drug_sensitivity
GROUP BY gdsc_tissue_descriptor_1
ORDER BY test_count DESC
LIMIT 5;

# 4. Average AUC per Target Pathway
SELECT target_pathway, ROUND(AVG(auc),2) AS avg_auc
FROM drug_sensitivity
GROUP BY target_pathway
ORDER BY avg_auc DESC;

# 5. Number of Unique Cell Lines per Cancer Type
SELECT tcga_desc, COUNT(DISTINCT cell_line_name) AS unique_cell_lines
FROM drug_sensitivity
GROUP BY tcga_desc
ORDER BY unique_cell_lines DESC;

 
 


