library(tidyverse)
library(gtsummary)

tbl_summary(
	covid_testing,
	by = result,
	include = c(gender,demo_group,age))
