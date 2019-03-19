#Write a program to create barplots for all the categorical
#columns in mtcars.
head(mtcars)
mtcars$cyl
table(mtcars$cyl)
barplot(table(mtcars$cyl))
boxplot(mpg ~ cyl + am, data = mtcars)
install.packages("ggplot2")
library(ggplot2)
qplot(mtcars$am,geom = "bar")
qplot(mtcars$vs,geom="bar")
barplot(table(mtcars$cyl))
counts <- table(mtcars$gear)
barplot(counts, main="Car Distribution", 
        xlab="Number of Gears")
barplot(counts, main="Car Distribution", horiz=TRUE,
        names.arg=c("3 Gears", "4 Gears", "5 Gears"))
## Stacked Bar Plot with Colors and Legend
counts <- table(mtcars$vs, mtcars$gear)
barplot(counts, main="Car Distribution by Gears and VS",
        xlab="Number of Gears", col=c("darkblue","red"),
        legend = rownames(counts))
# Grouped Bar Plot
counts <- table(mtcars$vs, mtcars$gear)
barplot(counts, main="Car Distribution by Gears and VS",
        xlab="Number of Gears", col=c("darkblue","red"),
        legend = rownames(counts), beside=TRUE)
