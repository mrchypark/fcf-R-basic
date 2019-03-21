#                                    #
#       패스트 캠퍼스 온라인         #
#   금융 공학 / 퀀트 올인원 패키지   #
#    R 프로그래밍 - 강사. 박찬엽     #
#                                    #

# 단정한 데이터 tidyr
## 실습 데이터 준비 
library(dplyr)
library(tqk)

### filter()와 같이 사용한 grepl() 함수는 데이터에 목표로하는 글자를 
### 포함하는지를 TRUE/FALSE로 결과를 제공함.
### grepl("현대자동차", code_get()$name)
code_get() %>% 
  filter(grepl("현대자동차", name)) %>% 
  select(code) %>% 
  tqk_get(from = "2019-01-01", to = "2019-02-28") %>% 
  mutate(comp = "현대자동차") -> 
  hdcm
hdcm

## tidyr 패키지의 gather() 함수 실습
### hdcm 데이터를 거래량을 제외하고 long form으로 변경하세요.
### open, high, low, close, adjusted가 값으로 들어가면 됩니다.
library(tidyr)

hdcm %>% 
  gather(key = "type", value = "price")

hdcm %>% 
  gather(key = "type", value = "price", -date, -comp) ->
  hdcm_v

hdcm %>% 
  select(-volume) %>% 
  gather(key = "type", value = "price", -date, -comp)  -> 
  hdcm_long
hdcm_long

hdcm %>% 
  gather(key = "type", value = "price", -date, -comp) %>% 
  filter(type != "volume") ->
  hdcm_vv

identical(hdcm_long, hdcm_vv)

## tidyr 패키지의 spread() 함수 실습
hdcm_long %>% 
  spread(type, price)

### 월, 일 컬럼을 만들고 개별 날을 컬럼으로 하는 wide form 종가 데이터를 만드세요.
library(lubridate)

hdcm %>% 
  mutate(month = month(date)) %>% 
  mutate(day = day(date)) %>% 
  select(comp, month, day, close) %>% 
  spread(day, close)


### stks18 실습 데이터 만들기
library(purrr)
code_get() %>% 
  slice(11:20) -> 
  code_info

code_info %>%
  select(code) %>% 
  map_dfr(
    ~ tqk_get(.x, from = "2018-01-01", to = "2018-12-31") %>%
      mutate(code = .x)
  ) %>% 
  left_join(code_info %>% select(code, name), by = "code") %>% 
  select(-code) -> 
  stks18 

### 각 회사의 월별 평균 종가를 출력하세요.
### wide form으로 출력하는 것이 한눈에 보기 좋습니다.

stks18 %>% 
  mutate(month = month(date)) %>% 
  group_by(name, month) %>% 
  summarise(mclose = mean(close)) %>% 
  spread(month, mclose)
