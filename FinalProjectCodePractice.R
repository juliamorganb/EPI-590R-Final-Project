setwd("/Users/juliabaumohl/Library/CloudStorage/OneDrive-Emory/EPI 590 R Bootcamp/EPI590R Final Project/covid_testing.rda")

library(tidyverse)
library(gtsummary)

tbl_summary(
	covid_testing,
	by = gender,
	include = c(result,age,pan_day),
label = list(
	result ~ "Test Result",
	age ~ "Age (Years)",
	pan_day ~ "Day after start of pandemic in which specimen was collected"
),
missing_text = "Missing")

linear_model <- lm(gender ~ age + pan_day, data=covid_testing)

