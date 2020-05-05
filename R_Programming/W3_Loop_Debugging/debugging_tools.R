# the primary tools for debugging functions in R
# 5가지 기본함수

# traceback : 

# debug :

# browser :

# trace : allows you to insert debugging code into a function a specific places

# recover : allows you to modify the error behavior so that you can browse the function call stack

rm(x)
mean(x)

lm(y~x)
traceback() # 가장의 최근의 에러를 불어온다.

debug(lm) # 함수 execute 이전에 debug를 call한다
lm(y~x) # n 옵션으로 

# recover 함수에서 문제가 있는 코드를 찾기 위해 사용한다
# 사용예시

options(error=recover)
read.csv("nosuchfile")

#https://blog.acronym.co.kr/589 참고

3
2
# 요약 
