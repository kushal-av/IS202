# Load libraries
library(dplyr)
library(ggplot2)
library(readr)

setwd("C:/Users/kavis/Desktop/IS202 Assignment")

# Read the dataset
sleep_data <- read_csv("Sleep_health_and_lifestyle_dataset.csv")

# Quick look
glimpse(sleep_data)
summary(sleep_data)



# Numerical summaries
numeric_vars <- sleep_data %>% select(where(is.numeric))
summary(numeric_vars)


# Frequency of Gender
table(sleep_data$Gender)

# Frequency of Occupation
table(sleep_data$Occupation)

# Frequency of Sleep Disorder
table(sleep_data$"Sleep Disorder")


#Histogram: Sleep Duration
ggplot(sleep_data, aes(x = Sleep_Duration)) +
  geom_histogram(binwidth = 0.5, fill = "pink", color = "white") +
  labs(title = "Sleep Duration Distribution", x = "Hours", y = "Count")


#Bar Chart: Sleep Disorder Frequency
ggplot(sleep_data, aes(x = Sleep_Disorder)) +
  geom_bar(fill = "coral") +
  labs(title = "Sleep Disorder Frequency", x = "Disorder Type", y = "Count")


#Scatterplot: BMI vs Sleep Duration
ggplot(sleep_data, aes(x = BMI_Category, y = Sleep_Duration)) +
  geom_point(alpha = 0.6, color = "darkgreen") +
  labs(title = "BMI vs Sleep Duration", x = "BMI", y = "Sleep Duration (hrs)")


#Insights Example
# Average sleep duration by occupation
sleep_data %>%
  group_by(Occupation) %>%
  summarise(AvgSleep = mean(Sleep_Duration, na.rm = TRUE)) %>%
  arrange(desc(AvgSleep))










