# Something's Wrong!

log(-1) # log에 음수를 취할수 없으니까 NaN을 반환한다.

printmessage <- function(x){
  if(is.na(x))
        print("x is a missing value")
  else if(x>0) 
        print("x is greater than zero")
  else 
        print("x is less than or equal to zero")
  invisible(x) # x를 반환하고 싶지않고 프린트문만 반환하고 싶을때
} # 제어문은 else,else if,else

printmessage(1)
printmessage(NA)

# something is actually wrong or is it just a user error 
# 1. 문제를 재현할 수 있어야 한다.
# 2. ~이런걸 하려고 했는 데 ~ 이런 결과가 나왔다. 라는 식의 질문을 하는 것이 문제를 해결하는 데 중요하다.


