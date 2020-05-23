str(str) #함수의 구조 반환환
str(lm)
str(ls)


x <- rnorm(100,2,4)

f <- gl(40,10)
str(f)

summary(f)

head(airquality)
str(airquality)

m <- matrix(rnorm(100),10,10)

m

library(datasets)
data("iris")

?iris

library(tidyverse)

a<- iris %>% filter(Species=="virginica") %>% select(Sepal.Length) 

mean(as.matrix(a))
round(mean(as.matrix(a)))

str(iris)
head(iris)

apply(iris[,1:4],2,mean)


rowMeans(iris[,1:4])


iris[,1:4]

colMeans(iris[,1:4])

a<- mtcars %>% select(hp,cyl)


mean(a[a$cyl==4,]$hp)-mean(a[a$cyl==8,]$hp)

round(abs(mean(a[a$cyl==4,]$hp)-mean(a[a$cyl==8,]$hp)))


debug(ls)

ls()
