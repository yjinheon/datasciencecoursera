set.seed(20)
x <- rnorm(100)
e <- rnorm(100,0,2)
y <- 0.5+2*x+e

summary(y)

plot(x,y)

# how do I simulate from model?


# what if x is binary? #이항분포일 경우
set.seed(10)
x <- rbinom(100,40,0.5)
e <- rnorm(100,0,2)
y <- 0.5+2*x+e


plot(x,y)
