# -------------------------------------------------------------
# Project: PISA Data Analysis (USA Context)
# Name: Mohamed Nabil
# Description: Analysis of socioeconomic factors affecting student performance.
# -------------------------------------------------------------

# 1. Load Required Libraries
if(!require(ggplot2)) install.packages("ggplot2")
if(!require(dplyr)) install.packages("dplyr")
library(ggplot2)
library(dplyr)

set.seed(123) # Ensure reproducibility of results

# -------------------------------------------------------------
# 2. Data Preparation and Simulation
# -------------------------------------------------------------
# Simulation parameters based on PISA descriptive statistics for USA
n_students <- 1000

# Generating socioeconomic variables
escs_trend <- rnorm(n_students, mean = -0.076, sd = 1.02)
hisei_trend <- rnorm(n_students, mean = 54.14, sd = 15)
homepos_trend <- rnorm(n_students, mean = 0.27, sd = 0.8)
paredint_trend <- sample(8:18, n_students, replace = TRUE, 
                         prob = c(0.05, 0.05, 0.1, 0.1, 0.2, 0.2, 0.1, 0.1, 0.05, 0.03, 0.02))

# Constructing the main dataframe
USA_studentt <- data.frame(
  student_id = 1:n_students,
  cnt = "USA",
  escs_trend = escs_trend,
  hisei_trend = pmax(10, pmin(90, hisei_trend)), # Cap values between 10 and 90
  homepos_trend = homepos_trend,
  paredint_trend = paredint_trend,
  # Outcome variable: Reading Score (dependent on ESCS)
  Reading_Score = 480 + (25 * escs_trend) + rnorm(n_students, 0, 50)
)

# Export clean dataset to CSV
write.csv(USA_studentt, "PISA_Project_Data.csv", row.names = FALSE)
print("Data exported successfully.")

# -------------------------------------------------------------
# 3. Statistical Analysis
# -------------------------------------------------------------
# Measures of Central Tendency and Dispersion
print("--- Statistical Summary ---")
print(paste("Mean ESCS:", mean(USA_studentt$escs_trend)))
print(paste("SD ESCS:", sd(USA_studentt$escs_trend)))
print(paste("Variance ESCS:", var(USA_studentt$escs_trend)))

# Correlation Matrix
cor_matrix <- cor(USA_studentt %>% select(escs_trend, hisei_trend, homepos_trend, paredint_trend))
print("--- Correlation Matrix ---")
print(cor_matrix)

# -------------------------------------------------------------
# 4. Data Visualization
# -------------------------------------------------------------

# Figure 1: Distribution of Socioeconomic Status (ESCS)
plot1 <- ggplot(USA_studentt, aes(x = escs_trend)) +
  geom_histogram(binwidth = 0.2, fill = "steelblue", color = "white") +
  labs(
    title = "DISTRIBUTION OF ESCS TREND AMONG U.S. STUDENTS",
    x = "ESCS SCORE",
    y = "NUMBER OF STUDENTS"
  ) +
  theme_minimal()

ggsave("Plot1_ESCS_Distribution.png", plot = plot1, width = 8, height = 6)

# Figure 2: ESCS by Parental Education Level
plot2 <- ggplot(USA_studentt, aes(x = factor(round(paredint_trend)), y = escs_trend)) +
  geom_boxplot(fill = "lightblue") +
  labs(
    title = "ESCS by Parental Education Level",
    x = "Parental Education Level (Rounded)",
    y = "ESCS Trend"
  ) +
  theme_minimal()

ggsave("Plot2_ESCS_Boxplot.png", plot = plot2, width = 8, height = 6)

print("Analysis completed. Plots saved.")
