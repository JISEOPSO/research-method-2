install.packages('readxl')
library(readxl)
# 수도권 코스 데이터 불러오기
main_data2 <- read_excel("C:/Users/anyperformance/OneDrive/바탕 화면/전처리/수도권 트랙 .xlsx")
View(main_data2)
str(main_data2)
# 경기도의 데이터만 가져오기
install.packages("dplyr")
library(dplyr)
main_data3 <- main_data2 %>% filter(트랙시도명 == '경기도' & 트랙길이 <= 5000)
View(main_data3)

# 데이터 정제하기
main_data4 <- sample_frac(main_data3, 0.1)
View(main_data4)

# 경기도 읍면동 빈도분석(전처리 조금 더 해야함.. m에서 km로)
install.packages("descr")
library(descr)
freq2 <- freq(main_data4$트랙읍면동명)
# 연속형 데이터 시각화
hist(main_data4$트랙길이)
hist(main_data4$트랙최고해발고도)
hist(main_data4$트랙평지길이)
hist(main_data4$트랙오름길이)
hist(main_data4$트랙내리막길이)
# 연속형 변수들간 상관관계 분석
install.packages("corrplot")
library(corrplot)

check_data2 <- main_data4 %>% select('트랙길이', '트랙최고해발고도', '트랙평지길이', '트랙오름길이', '트랙내리막길이', '트랙난이도값')
cor2 <- cor(check_data2)
corrplot(cor2)