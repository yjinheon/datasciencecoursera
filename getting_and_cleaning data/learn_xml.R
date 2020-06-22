install.packages("XML")
library(XML)

fileurl <- "http://www.w3schools.com/xml/simple.xml"
download.file(fileurl,destfile = "./data/simple.xml")
doc <- xmlTreeParse(file = "./data/simple.xml",
                    useInternal = T) # 파일 내 모든 다른 노드 추출
help("xmlTreeParse")

doc
rootnode<- xmlRoot(doc)
names(rootnode)

xmlApply(rootnode,xmlValue) 

################## 
# /node : Top level node
# //node : Node at any level
# 
