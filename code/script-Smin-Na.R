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

### 7 Exporting some R output
sink(file = '../output/data-structure.txt')
str(nba2018)
sink()
sink(file = '../output/summary-warriors.txt')
summary(warriors)
sink()
sink(file = '../output/summary-lakers.txt')
summary(filter(nba2018, team == "LAL"))
sink()

### 8 Exporting graphs
jpeg(filename = "../images/histogram-age.jpeg", width = 600, height = 400)
hist(nba2018$age)
dev.off()
png(filename = "../images/scatterplot2-height-weight.png", pointsize = 20)
plot(nba2018$height, nba2018$weight)
dev.off()
ggsave(height_weight_by_position.pdf, path = "../images/height_weight_by_position.pdf")
ggplot(data = nba2018, aes(x = height, y = weight)) + geom_point(aes(color = position)) + facet_wrap( ~ position)
dev.off()



