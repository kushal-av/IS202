# Load required packages
library(readr)
library(dplyr)

# Set Working Directory
setwd("C:/Users/vasik/OneDrive/Documents/IS202/PROJECT")

# Import the dataset
sleep_data <- read_csv ("Sleep_Health_and_Lifestyle_Dataset.csv")

# Data Cleaning
# Handle missing values (e.g., impute or remove rows)
sleep_data <- na.omit(sleep_data)  # Remove rows with NA for simplicity; consider imputation if needed

# Standardize variable formats (e.g., convert text to lowercase where applicable)
sleep_data$Gender <- tolower(sleep_data$Gender)
sleep_data$Occupation <- tolower(sleep_data$Occupation)

# Check data
print("Column names:")
print(colnames(sleep_data))
print("First few rows:")
print(head(sleep_data))

# Remove duplicates
sleep_data <- distinct(sleep_data)

# Data Summarization
cat("Number of observations:", nrow(sleep_data), "\n")
cat("Number of variables:", ncol(sleep_data), "\n")
str(sleep_data)  # Check variable types and structure
summary(sleep_data)  # Key characteristics (e.g., min, max, mean, outliers)
