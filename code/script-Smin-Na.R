# ===========================================================
# Title: Lab05
# Description:
#   This script computes descriptive statistics, as well as
#   various exploratory data visualizations.
# Input(s): data file 'nba2018-players.csv'
# Output(s): summary data files, and plots
# Auther: Smin Na
# Data: 10-3-2019
# ===========================================================

# packages
library(dplyr)
library(tidyverse)

### 6 Exporting some data tables
nba2018 <- read.csv("nba2018-players.csv", sep = ",")
warriors <- filter(nba2018, team == "WAS")
write.csv(warriors, file = "warriors.csv", row.names = TRUE)
# mv warriors.csv ../data/
# ls ../data/


