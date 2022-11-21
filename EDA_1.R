install.packages('readxl')
library(readxl)

main_data1 <- read_excel("C:/Users/anyperformance/OneDrive/바탕 화면/method/20221118.xlsx")
View(main_data1)
str(main_data1)

install.packages("descr")
library(descr)

freq1 <- freq(main_data1$코스시도명)
freq1

barplot(dist_city, ylim = c(0,25), main = "코스 빈도", xlab = "지역", ylab = "FREQUENCY", names = c("강원도", "경기도", "경상남도", "경상북도", "광주광역시", "대구광역시", "대전광역시", "부산광역시", "서울특별시", "울산광역시", "인천광역시", "전라남도", "전라북도", "제주특별자치도", "충청남도", "충청북도"))
dist_city <- table(main_data1$코스시도명)
dist_city

hist(main_data1$코스총길이)
hist(main_data1$코스평균경도)
hist(main_data1$코스평지길이)
hist(main_data1$코스오름길이)
hist(main_data1$코스내림길이)
hist(main_data1$코스최고해발고도)
hist(main_data1$코스최저해발고도)
hist(main_data1$트랙소요시간)
hist(main_data1$트랙휴식시간)


cor(main_data1$트랙소요시간, main_data1$트랙휴식시간)
