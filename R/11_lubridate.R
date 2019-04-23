#                                    #
#       패스트 캠퍼스 온라인         #
#   금융 공학 / 퀀트 올인원 패키지   #
#    R 프로그래밍 - 강사. 박찬엽     #
#                                    #

# 날짜와 시간을 다루는 lubridate

## 날짜 자료형 <date>
## 시간 자료형 <time> - hms 패키지가 추가로 필요
## 날짜시간 자료형 <dttm>


library(lubridate)

##

wifi %>% 
  select(설치년월, 데이터기준일자) -> 
  lub_exam
