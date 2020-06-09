# get/set your working directory

getwd()

# Relative - setwd("./data"), setwd("../")

setwd("../") # 앞지점으로 돌아가기

getwd()

setwd("C:/Users/yjinh/Documents/R_Personal/Coursera/datasciencecoursera/getting_and_cleaning data")

dir.create() # 폴더생성함수

if(!file.exists("data")){
  dir.create("data")
} # 디렉토리에 data가없다면 data 폴더를 만드는 함수



fileurl<- "https://data.baltimorecity.gov/Transportation/Baltimore-Fixed-Speed-Cameras/dz54-2aru#Download"

download.file(fileurl,destfile = "./data/cameras.csv",method = "curl")

list.files("./data")

date_downloaded <- date() # 데이터를 받아온 날짜 저장

