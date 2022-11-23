install.packages('readxl')
library(readxl)
# 전국 등산로 코스 데이터 불러오기
main_data1 <- read_excel("C:/Users/anyperformance/OneDrive/바탕 화면/method/20221118.xlsx")
View(main_data1)
str(main_data1)
# 빈도분석 패키지 설치
install.packages("descr")
library(descr)
#코스 시도명 분석
freq1 <- freq(main_data1$코스시도명)
freq1

barplot(dist_city, ylim = c(0,25), main = "코스 빈도", xlab = "지역", ylab = "FREQUENCY", names = c("강원도", "경기도", "경상남도", "경상북도", "광주광역시", "대구광역시", "대전광역시", "부산광역시", "서울특별시", "울산광역시", "인천광역시", "전라남도", "전라북도", "제주특별자치도", "충청남도", "충청북도"))
dist_city <- table(main_data1$코스시도명)
dist_city

#연속형 변수 히스토그램 시각화
hist(main_data1$코스총길이)
hist(main_data1$코스평균경도)
hist(main_data1$코스평지길이)
hist(main_data1$코스오름길이)
hist(main_data1$코스내림길이)
hist(main_data1$코스최고해발고도)
hist(main_data1$코스최저해발고도)
hist(main_data1$트랙소요시간)
hist(main_data1$트랙휴식시간)


#연속형 변수들간의 상관관계 분석
check_data1 <- main_data1 %>% select('코스총길이', '코스평균경도', '코스평지길이', '코스오름길이', '코스내림길이', '코스최고해발고도', '코스최저해발고도', '트랙소요시간', '트랙휴식시간')
cor(check_data1)


install.packages("ggplot2")
library(ggplot2)
install.packages("corrplot")
library(corrplot)

cor1 <- cor(check_data1)
corrplot(cor1)
