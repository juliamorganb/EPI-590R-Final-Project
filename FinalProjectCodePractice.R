

library(tidyverse)
setwd("/Users/juliabaumohl/Library/CloudStorage/OneDrive-Emory/EPI 590 R Bootcamp/EPI590R Final Project/covid_testing.rda")
library(gtsummary)

tbl_summary(
	covid_testing,
	by = result,
	include = c(gender,demo_group,age))
