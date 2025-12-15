# 📊 PISA Data Analysis: Socioeconomic Inequalities in Education

![R](https://img.shields.io/badge/Language-R-blue)
![Analysis](https://img.shields.io/badge/Type-Data%20Analysis-green)
![Context](https://img.shields.io/badge/Context-USA%20Education-red)
<img width="575" height="329" alt="Plot1_ESCS_Distribution png" src="https://github.com/user-attachments/assets/37682e2e-dd39-4d95-9d6b-4849d1355fa7" />
<img width="454" height="393" alt="Plot2_ESCS_Boxplot png" src="https://github.com/user-attachments/assets/9ff123a3-2bbe-4c6c-852c-d439cfc81c2a" />

## 📌 Project Overview
This project analyzes data from the **Programme for International Student Assessment (PISA)** to investigate the impact of socioeconomic background on 15-year-old students' academic performance in the United States. 

The primary goal is to quantify the "Inequality of Opportunity" by examining how factors like **parental education** and **home resources** influence **reading scores**.

---

## 📂 Dataset Description
The analysis is based on a simulated dataset reflecting real-world distributions of U.S. students. It includes **1,000 student records** with the following key variables:

| Variable Name | Description | Type |
| :--- | :--- | :--- |
| **`escs_trend`** | **Index of Economic, Social and Cultural Status.** A composite score summarizing the student's background. | Numeric |
| **`hisei_trend`** | **Highest Parental Occupational Status.** Measures the prestige of parents' jobs (10-90 scale). | Numeric |
| **`paredint_trend`** | **Parental Education Level.** Measured in years of schooling (e.g., 12 = High School, 16 = College). | Numeric |
| **`homepos_trend`** | **Home Possessions Index.** Availability of educational resources (books, desks, internet) at home. | Numeric |
| **`Reading_Score`** | **Academic Performance.** The outcome variable representing student achievement in reading literacy. | Numeric |

---

## 🔍 Research Problem & Objectives
Despite global efforts to improve education quality, significant achievement gaps persist. This project aims to:
1.  **Examine relationships** between socioeconomic status (ESCS) and academic performance.
2.  **Identify gaps** caused by differences in parental education levels.
3.  **Provide data-driven evidence** to support policies for educational equity.

**Key Question:** *To what extent does a student's family background predetermine their academic success?*

---

## 🛠️ Methodology & Tools
The analysis was performed using **R Language** inside RStudio.
* **Data Cleaning & Simulation:** Generated a clean dataset representing the USA context.
* **Descriptive Statistics:** Calculated Mean, Mode, Variance, and Standard Deviation.
* **Visual Analysis:** Used `ggplot2` to create histograms and boxplots.
* **Correlation Analysis:** Performed Pearson correlation to test relationships between variables.

**Libraries Used:**
* `dplyr` (Data Manipulation)
* `ggplot2` (Data Visualization)

---

## 📈 Key Findings & Visualizations

### 1. Distribution of Socioeconomic Status
The analysis shows that the ESCS index follows a normal distribution centered around the mean. However, tails on both ends indicate the presence of significant inequality.

![Distribution of ESCS](Plot1_ESCS_Distribution.png)
*Figure 1: Histogram showing the distribution of ESCS trends among students.*

### 2. Impact of Parental Education
There is a strong positive linear relationship between parental education and a student's socioeconomic status. Students whose parents have completed higher education (16+ years) consistently show higher SES scores.

![ESCS by Parental Education](Plot2_ESCS_Boxplot.png)
*Figure 2: Boxplot demonstrating the rise in ESCS median scores as parental education increases.*

---

## 🚀 How to Run the Code
1.  Clone this repository.
2.  Open `PISA_Analysis.R` in RStudio.
3.  Install required packages if not already installed:
    ```r
    install.packages("ggplot2")
    install.packages("dplyr")
    ```
4.  Run the script. It will generate the `PISA_Project_Data.csv` file and save the visualization plots locally.

---

## 📚 References
1.  **OECD (2018).** *Equity in Education: Breaking Down Barriers to Social Mobility*. PISA, OECD Publishing.
2.  **Sirin, S. R. (2005).** "Socioeconomic status and academic achievement: A meta-analytic review of research". *Review of Educational Research*.

---

### 👤 Author
**Mohamed Nabil** *Data Analyst & Educational Researcher* ```
