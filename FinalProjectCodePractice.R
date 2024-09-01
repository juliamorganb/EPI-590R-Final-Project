setwd("/Users/juliabaumohl/Library/CloudStorage/OneDrive-Emory/EPI 590 R Bootcamp/EPI590R Final Project/covid_testing.rda")

library(tidyverse)
library(gtsummary)

covid_testing$gender_num <- ifelse(covid_testing$gender == "female",1,0)
covid_testing$result_num <- ifelse(covid_testing$result == "negative",0,
																	 ifelse(covid_testing$result == "positive", 1, NA))

table(covid_testing$gender_num)
table(covid_testing$result_num)

##pt 1
tbl_summary(
	covid_testing,
	by = result,
	include = c(gender,age,pan_day),
label = list(
	gender ~ "Gender",
	age ~ "Age (Years)",
	pan_day ~ "Day after start of pandemic in which specimen was collected"
))

##pt 2
tbl_uvregression(
	covid_testing,
	y = result_num,
	include = c(gender_num, age, pan_day),
	method = glm,
	method.args = list(family = binomial()),
	exponentiate = TRUE)

##pt 3
hist(covid_testing$pan_day)




