ggplot(data=iris, aes(x = Sepal.Length, y=Sepal.Width)) + geom_point()

#let's make the points larger
ggplot(data=iris, aes(x = Sepal.Length, y=Sepal.Width)) + geom_point(size = 3)

#we can also change the shape of the points
ggplot(data=iris, aes(x = Sepal.Length, y=Sepal.Width, color = Species)) + geom_point(aes (shaped = Species),size = 3)

#we can fit a line through our scatterplot to determine relationship
ggplot(data=iris, aes(x = Sepal.Length, y=Sepal.Width, color = Species)) + geom_point(aes (shape = Species),size = 3) + geom_smooth(method = "lm")
# the gray shape around the fitted lines represent the CI of the regression line

#now let's try makking a histogram
ggplot(data=iris, aes(x = Sepal.Length, fill = Species)) + geom_bar(stat="count")


