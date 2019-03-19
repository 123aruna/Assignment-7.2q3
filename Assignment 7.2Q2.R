#3. Write a program to create a plot density by class variable.
library(ggplot2)
install.packages("ggpubr")
library(ggpubr)
theme_set(theme_pubr())
install.packages("dplyr")
library(dplyr)

library(ggpubr)
library(magrittr)
set.seed(1234)
wdata = data.frame(
  sex = factor(rep(c("F", "M"), each=200)),
  weight = c(rnorm(200, 55), rnorm(200, 58))
)
head(wdata, 4)

ggdensity(wdata, x = "weight", 
          fill = "#0073C2FF", color = "#0073C2FF",
          add = "mean", rug = TRUE)
#FOR MT CARS
d <- density(mtcars$mpg)
plot(d)
install.packages("sm")
library(sm)
attach(mtcars)
cyl.f <- factor(cyl, levels= c(4,6,8),
                labels = c("4 cylinder", "6 cylinder", "8 cylinder")) 
sm.density.compare(mpg, cyl, xlab="Miles Per Gallon")
title(main="MPG Distribution by Car Cylinders")
# add legend via mouse click
colfill<-c(2:(2+length(levels(cyl.f)))) 
legend(locator(1), levels(cyl.f), fill=colfill)
