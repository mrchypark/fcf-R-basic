#                                    #
#       패스트 캠퍼스 온라인         #
#   금융 공학 / 퀀트 올인원 패키지   #
#    R 프로그래밍 - 강사. 박찬엽     #
#                                    #

# tidy한 방법으로 데이터 다루기
## 패키지 설치
install.packages("tidyverse")
library(tidyverse)
tidyverse_logo()
# 25개
tidyverse_packages() 
tidyverse_update()

## 사용할 데이터 설명

### github에 있는 패키지를 설치하기 위한 패키지 설치
install.packages("remotes")

### 한국 주식 데이터 패키지인 tqk 설치
library(remotes)
install_github("mrchypark/tqk")
library(tqk)

### 함수 설명 확인
?code_get
?tqk_get

### 종목 코드 데이터 가져오기
code <- code_get("all")

### 데이터 상태 확인하기
library(dplyr)
library(magrittr)
code %>% 
  glimpse()

code %>% 
  group_by(market) %>% 
  summarise(n())

### 주식 데이터 가져오기
code %>% 
  slice(grep("현대자동차", name)) %$% 
  tqk_get(code, from = "2019-01-01") -> 
  hdc 

hdc


## data.frame과 tibble


