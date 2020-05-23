set.seed(20)
x <- rnorm(100)
e <- rnorm(100,0,2)
y <- 0.5+2*x+e

summary(y)

plot(x,y)

# how do I simulate from model?


# what if x is binary? #이항분포일 경우
# 이항분포는 단순히 난수를 생성하는 것이 아니라 독립시행에서 성공하는 횟수를 반환한다

x <- rbinom(n=1,size=10,0.5) # 10개 사이즈에서 1번시도 

x2 <- rbinom(n=10,size = 100,0.3)

plot(x2) # 0.3 확률이 100개 사이즈 있고 10번시도할 때 성공할 확률


set.seed(10)
x <- rbinom(100,1,0.5)

x_2 <- rbinom(100,size = 20, 0.5)

e <- rnorm(100,0,2)
y <- 0.5+2*x+e

plot(x,y)

## 포항
