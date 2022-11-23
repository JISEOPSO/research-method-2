install.packages('XML')
library(XML)

serviceURL <- "http://api.forest.go.kr/openapi/service/trailInfoService/getforeststoryservice"

operation <- "getforeststoryservice"

ServiceKey <- "%2Bd2O9yuKzyTCd8VPACq%2BbCPHqZa2jSglYvM2rAs1ZQfepirWMIfOhYpRWoDsxeOlb9YwXE0cexSLMbTPDwO8uw%3D%3D"

pageNo <- 4

row <- 4

type_data_format <- "xml"

url <- paste0(serviceURL,
              operation,
              paste0("?serviceKey=",ServiceKey),
              paste0("&pageNo=",pageNo),
              paste0("&numOfRows=",row),
              paste0("&resultType=",type_data_format)
              )

xmlDocument <- xmlTreeParse(url, useInternalNodes + TRUE, encoding = "UTF-8")

rootNode <- xmlRoot(xmlDocument)

numOfRows <- as.numeric(xpathSApply(rootNode, "//numOfRows", xmlValue))

totalCount <- as.numeric(xpathSApply(rootNode,"//totalCount",xmlValue))

loopCount <- ceiling(totalCount/numOfRows)

finalTotalData <- data.frame()

for (i in 1:loopCount){
  url <- paste0(serviceURL,
                operation,
                paste0("?serviceKey=",ServiceKey),
                paste0("&pageNo=",i),
                paste0("&numOfRows=",row),
                paste0("&resultType=", type_data_format))
)

doc <- xmlTreeParse(url, useInternalNodes = TRUE, encoding = "UTF-8")

rootNode <- xmlRoot(doc)

xmlData <- xmlToDataFrame(nodes = getNodeSet(rootNode,'//item'))

finalTotalData <- rbind(finalTotalData,xmlData)
}

View(finalTotalData)