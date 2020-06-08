# 코드 수행시간 측정 관련
# https://medium.com/@hslee09/r-%EC%BD%94%EB%93%9C-%EC%88%98%ED%96%89-%EC%8B%9C%EA%B0%84-%EC%B8%A1%EC%A0%95-9453faf3780

# design first then optimize 
# you should act like a scientist

# using system.time()
# 임의의 R 코드를 인자로 받아서 실행시간을 계산한다.

# user time : ‘user time’ is the CPU time charged for the execution of user
# instructions of the calling process. The ‘system time’ is the CPU
# time charged for execution by the system on behalf of the calling process.
# elapsed time  : wall clock time # 실제 코드수행이 기다린시간 

# 보통은 elaped time과 usertime은 유사하다. 

#  elaped time이 usertime 보다 긴 예시
system.time(readLines("http://www.jhsph.edu"))

#  usertime이 elaped time보다 긴 예시 # 힐베르트 행렬 생성함수

hilbert <- function(n){
  i <- 1:n
  1/outer(i-1,i,"+")
}

x<- hilbert(1000) 

system.time(svd(x))

head(x)

############################################### the R profiler
# The R Profiler

# Rprof() : calls function call stack


