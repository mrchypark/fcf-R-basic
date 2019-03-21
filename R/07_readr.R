#                                    #
#       패스트 캠퍼스 온라인         #
#   금융 공학 / 퀀트 올인원 패키지   #
#    R 프로그래밍 - 강사. 박찬엽     #
#                                    #

# 파일을 불러오는 readr
## readr 패키지가 제공하는 함수
library(readr)

read_csv()     # ,(쉼표)
read_csv2()    # ;(세미콜론)
read_tsv()     # \t(탭)
read_table()   # " "(스페이스)
read_delim()   # delim 옵션으로 구분자를 지정할 수 있음 ex> "|"

## 실습 데이터 준비 

### 기업 재무데이터를 가지고 있는 csv 파일 다운로드
url <- "https://github.com/mrchypark/sejongFinData/raw/master/dataAll.csv"
download.file(url, destfile = "./dataAll.csv")

findata <- read_csv("dataAll.csv")

### 인코딩 지정 방법
findata <- read_csv("dataAll.csv", locale = locale(encoding = "cp949"))

### 함수가 인식하는 문제를 확인하기
problems(findata)

### 글자 - 가 na를 뜻한다고 알려주기
findata <- read_csv("dataAll.csv", 
                    locale = locale(encoding = "cp949"),
                    na = "-")
problems(findata)

### 컬럼의 자료형을 지정해서 불러오기
findata <- read_csv("dataAll.csv", 
                    locale = locale(encoding = "cp949"),
                    na = "-",
                    col_types = list(영업이익률 = col_number(),
                                     연결순이익률 = col_number()))

### 자료형을 지정하는 함수

col_character()     # 글자
col_date()          # 날짜
col_datetime()      # 날짜시간(POSIXct)
col_double()        # 실수형
col_factor()        # factor 
col_integer()       # 정수형
col_logical()       # 논리형
col_number()        # $, ., , 등 글자가 섞여 있는 숫자
col_numeric()       # 숫자(정수와 실수)
col_skip()          # 지정하는 컬럼은 넘김
col_time()          # 시간


## 파일 쓰기

write_csv()         # ,(쉼표) 구분 데이터 저장
write_excel_csv()   # 엑셀에서 바로 열수 있는 csv 파일로 저장
write_delim()       # 구분자를 지정해서 저장 
write_lines()       # 한 줄에 하나의 데이터가 있는 벡터를 저장
write_tsv()         # \t(탭) 구분 데이터 저장