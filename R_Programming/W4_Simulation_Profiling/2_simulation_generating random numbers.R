# d for density
# r for random number 
# p for cululitive distribution
# q for quantile function

x <- rnorm(10)

dnorm(x,mean = 0, sd=1, log = F)

set.seed() # 무작위 숫자를 생성할때  그걸 재현할 수 있도록 integer를 넣어주어야 한다

# seed : sets the random variable 


# 포아송 분포 생성하기

rpois(10,1)
