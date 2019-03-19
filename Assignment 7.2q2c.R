#Create a scatterplot matrix by gear types in mtcars dataset
install.packages("ggplot2")
library(ggplot2)
ggplot(mtcars, aes(x = drat, y = mpg)) +
  geom_point()
ggplot(mtcars, aes(x = mpg, y = drat)) +
  geom_point(aes(color = factor(gear)))
mean_mpg <- mean(mtcars$mpg)
my_graph + labs(
  title = paste("Plot Mile per hours and drat, in log. Average mpg is", mean_mpg)
)
ggplot(mtcars, aes(x = log(mpg), y = log(drat))) +

