library("readxl")
project<-read_excel("20221209 .xlsx")
View(project)
library(dplyr)
library(ggplot2)

project<-project %>%
  rename(course_name="트랙명",
         district="트랙시도명",
         city_name="트랙읍면동명",
         length="트랙길이",
         height="트랙최고해발고도",
         hiking_road="트랙평지길이",
         uphill_road="트랙오름길이",
         downhill_road="트랙내리막길이",
         level="트랙난이도값") %>%
  select(course_name,district,city_name,length,height,hiking_road,uphill_road,
         downhill_road,level)

str(project)
View(project)
project_m<- project %>%
  group_by(district) %>%
  summarise(n=n())
View(project_m)



project1<-project %>%
  group_by(district) %>%
  filter(district%in%c("경기도","서울특별시"))
View(project1)

project_g<-project1 %>%
  filter(district=="경기도")

project_s<-project1 %>%
  filter(district=="서울특별시")
View(project_s)
str(project_s)

project1$city_name1<-substr(project1$city_name,1,3)

project1<-project1 %>%
  select(course_name,district,city_name1,length,height,hiking_road,uphill_road,
         downhill_road,level)

View(project1)

str(project1)

summary(project_g)

project1<-project1 %>%
  filter(level!=0)
View(project_s)



View(project)

project_s<-project_s %>%
  length(project_s$level)

table(project_s$level)
summary(project_s$level)

project2<-full_join(project_s,project_g)
View(project2)



write.csv(project.g_e,file="project1.g_e.csv")


View(project1)



project1<-project1 %>%
  filter(level<=25)

project1<-project1 %>%
  mutate(level_1=ifelse(level>=20,"easy","very easy"))


View(project1)

str(project1)

project.g_ve<-project_g %>%
  filter(level_1=="very easy")

g_ve<-write.csv("")

table(project1$uphill_road)
summary(project)
str(project_g)

table(project.g_e$level)

project_b<-project_s %>%
  group_by(city_name1) %>%
  filter(city_name1=="은평구")

summarise(n=n())

project_b

summary(project)

table(project1$downhill_road)
table(project1$hiking_road)

project_c<-project1 %>%
  select(course_name,district,hiking_road,uphill_road,downhill_road) %>%
  filter(hiking_road>=3.205|uphill_road<=0.400|
           downhill_road>=1.500)

View(project_c)

summary(project_c$hiking_road)
table(project_c)


project1<-project1 %>%
  mutate(hiking_road=ifelse(hiking_road<=0.800,"4",
                            ifelse(hiking_road<=2.600,"3",
                                   ifelse(hiking_road<=4.110,"2","1"))))

project1<-project1 %>%
  select(course_name,district,city_name1,height,hiking_road,
         uphill_road,downhill_road,level_sum)


project1<-project1 %>%
  mutate(uphill_road=ifelse(uphill_road>=2.101,"4",
                            ifelse(uphill_road>=0.501,"3",
                                   ifelse(uphill_road>=0.301,"2","1"))))


project1<-project1 %>%
  mutate(downhill_road=ifelse(downhill_road<=0.400,"4",
                              ifelse(downhill_road<=1.190,"3",
                                     ifelse(downhill_road<=2.130,"2","1"))))




project1<-project1 %>%
  mutate(level_sum=-hiking_road+uphill_road-downhill_road)

project1$hiking_road<-as.numeric(project1$hiking_road)
project1$uphill_road<-as.numeric(project1$uphill_road)
project1$downhill_road<-as.numeric(project1$downhill_road)

str(project1)


View(project1)
table(project1$level_sum)

table(project1$level_sum)

project__<-project1 %>%
  filter(level_sum==1) %>%
  head(10)

View(project__)




View(d)

e<-d %>%
  group_by(district) %>%
  head(100)
View(e)

d1<-d %>%
  group_by(district) %>%
  filter(level_sum==-2&height>=300&height<=400) %>%
  arrange(district)
View(d1)

write.csv(d1,file = "d1.csv")

table(d$level_sum)

d_1<-d %>%
  filter(district=="경기도")
View(d_1)
d_2<-d %>%
  filter(district=="서울특별시")
d_3<-d %>%
  filter(district=="광주광역시")
d_4<-d %>%
  filter(district=="인천광역시")
d_5<-d %>%
  filter(district=="대전광역시")
d_6<-d %>%
  filter(district=="대구광역시")
d_7<-d %>%
  filter(district=="경상남도")
d_8<-d %>%
  filter(district=="경상북도")
d_9<-d %>%
  filter(district=="부산광역시")
d_0<-d %>%
  filter(district=="울산광역시")

View(d_1)

table(d_1$city_name)

d_1_1<-d_1 %>%
  group_by(city_name) %>%
  filter(level_sum==-2&height>=300&height<=500) %>%
  arrange(city_name)

View(d_1_1)

View(d_2_2)
d_2_2<-d_2 %>%
  filter(height>=150) %>%
  arrange(level_sum)

View(d_3_3)

d_3_3<-d_3 %>%
  arrange(level_sum)

View(d_4_4)

d_4_4<-d_4 %>%
  arrange(level_sum)
View(d1)
str(d1)
RA<-lm(data=project,level_sum~hiking_road+uphill_road+downhill_road)
summary(RA)

install.packages("ggplot2")
library(ggplot2)

a<-table(d$level_sum)
ggplot(d, aes(x=level_sum))+geom_bar()

View(project)
table(d$hiking_road)
table(d$uphill_road)
table(d$downhill_road)





install.packages("ggplot2")
library(ggplot2)
ggplot(data =project, aes(x=length)+geom_bar()

       install.packages("descr")
       library(descr)
       freq2 <- freq(project$hiking_road)
       freq2 <- freq(project$uphill_road)
       freq2 <- freq(project$height)
       # 연속형 데이터 시각화

       hist(project$hiking_road)

       hist(main_data4$트랙최고해발고도)
       hist(main_data4$트랙평지길이)
       hist(main_data4$트랙오름길이)
       hist(main_data4$트랙내리막길이)

       install.packages("corrplot")
       library(corrplot)
       library(dplyr)

       project5 <- project %>%
         select(height,hiking_road,uphill_road,downhill_road)
       cor2 <- cor(project5)
       corrplot(cor2)






























