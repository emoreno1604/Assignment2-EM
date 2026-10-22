setwd("~/Desktop/Fall 2026 Resources/QAC380/assignment2-PB/")
penguins <- read.csv("penguins.csv")

library(descr)

freq(penguins$island)
freq(penguins$sex)

my.lm <- lm(body_mass_g ~ bill_length_mm + flipper_length_mm + bill_depth_mm, data = penguins) 
summary(my.lm)
