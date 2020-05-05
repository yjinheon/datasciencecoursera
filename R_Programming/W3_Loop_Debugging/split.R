# split 은 벡터를 받아서 여러 factor나 list of factors 기준으로 분할하는 함수이다.

x <- c(rnorm(10),runif(10),rnorm(10,1))
f <- gl(3,10)

# fucntionstudy
# gl은 factor level을 만들어내는 함수이다.(level수, level당 수)
# label을 정해주지 않으면 그냥 숫자(문자열)이름으로 된 factor가 만들어진다.

sp<- split(x,f) # split은 기본적으로 리스트를 반환한다

# @@이해함: split의 기능은 기본적으로 factor를 기준으로 분할하는 것이다.

# ex

lapply(split(x,f), mean) # tapply는 이 코드와 같은 기능을 수행한다.

library(datasets)
head(airquality)

s <- split(airquality,airquality$Month)

lapply(s, function(x) colMeans(x[,c("Ozone","Solar.R","Wind")]))

# x의 column의 Ozone,Solar,Wind 열을 받아서 colMeans를 수행하는 anonymous 함수 수행

sap<- sapply(s, function(x) colMeans(x[,c("Ozone","Solar.R","Wind")]))

# sapply는 lapply를 단순화한 것으로  list대신 배열(행렬)을 반환한다.

as.data.frame(sap)

# splitting on more than one level

x <- rnorm(10)
f1 <- gl(2,5,labels = c("남","여"))
f2 <- gl(5,2)
f1 # 1:2 5개씩
f2 # 1:5 2개씩

# fucntionstudy
interaction(f1,f2) # 복수의 factor를 인자로받아 상호작용(조합)을 반환한다
# 1.2 가 있다면 2.1 은 사라지는 식으로 겹치는 조합의 level은 비게 된다.

interaction(f2,f1) # 앞쪽인자의 level기준으로 생성됨
                   # 값 자체는 그냥 두 factor를 대응시키는 거지만.. level은 가능한 조합을 기준으로 생성됨 <- f1이 2개 level, f2가 5개 level이라면 10개 생성되는 식

str(split(x,list(f1,f2))) # 두개의 factor를 list로 묶은 뒤 그걸로 x split()하면 자동으로 interaction을 불러온다

split(x,list(f1,f2),drop = T) # 빈 level을 보고싶지 않을 경우

x <- 1:10

