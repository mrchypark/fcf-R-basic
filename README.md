번호가 목차처럼

# fcf-R-basic

## 강의 소개

1. 강의 소개  - 한 클립

## R 프로그래밍 기본

1. 도구의 사용법
    - R 언어 및 Rstudio 설치
    - Rstudio 구성
    - Rstudio 유용한 설정
    - 스크립트 파일 관리
    - 프로젝트를 이용한 파일 관리
    - 패키지 설치(github 설치는 빼고)

1. 데이터의 기본(단일 종류의 데이터란 아토믹 벡터(벡터, 메트릭스 등))
    - R의 데이터 유형(아래 x내용에 대한 다이어그램)
    - 단일 종류의 데이터(기본자료형 설명 - 논리, 수치, 문자)
    - 단일 종류의 데이터 다루기(서브셋에 대해서 설명)
    - 리스트 다루기(여러 자료형을 한 객체가 가질 수 있음+서브셋 설명)

1. R 프로그래밍의 기본
    - R의 기본 연산자
    - 함수의 구조 및 작성
    - 조건문 if
    - 반복문 for
    - 반복문 작성 예시
    - apply 계열 함수
    - 에러 처리

1. 문제를 해결하는 법
    - 패키지를 고르는 법
    - 검색하는 법
    - 질문하는 법

## tidy한 방법으로 데이터 다루기

1. 데이터 바꾸기 dplyr
    - 테이블 데이터와 행(관측치)/열(변수)
    1. 한개의 테이블 데이터 다루기
        - 필요한 데이터만 가져오기 1. select
        - 필요한 데이터만 가져오기 2. filter
        - 필요한 데이터만 가져오기 3. arrange
        - 파이프 연산자로 함수 연결
        - 데이터를 정보로 만들기 1. summerize
        - 데이터를 정보로 만들기 2. group_by
        - 데이터를 정보로 만들기 3. mutate
    1. 두개의 테이블 데이터 다루기
        - 연습 데이터 소개
        - 각 테이블을 연결하는 변수 key
        - 변수를 추가하는 mutating join의 동작
        - 중복 key의 처리
        - join 동작시 주의해야 할 점
        - 필요한 데이터만 남기는 filtering join의 동작
    
1. 단정한 데이터 tidyr
    - 단정한 데이터란
    - long form과 wide form
    - wide to long 바꾸기 gather
    - long to wide 바꾸기 spread
    - 컬럼 나누기 seperate
    - 컬럼 합치기 unite
    
1. 데이터 불러오기 / 저장하기
    - 데이터 불러오기 read_*()
    - csv 데이터 불러오기
    - 데이터 저장하기 write_*() 
    - 엑셀 파일 불러오기, 저장하기
    - 다양한 파일형식 불러오기 rio
    
1. 데이터 타입
    - 논리형과 유용한 계산
    - 글자형을 다루는 stringr 1. detect
    - 글자형을 다루는 stringr 2. replace
    - 글자형을 다루는 stringr 3. join & split
    - factor 자료형 소개
    - factor를 다루는 forcats 1. reorder levels
    - factor를 다루는 forcats 2. recode levels
    - factor를 다루는 forcats 3. collapse levels
    - 날짜시간 자료형 소개
    - 시간을 다루는 hms 1. 초를 시간으로 hms
    - 날짜시간을 다루는 lubridate 1. 글자 to 날짜
    - 날짜시간을 다루는 lubridate 2. 날짜 자료형 다루기

1. 데이터 시각화 ggplot2
    - 함수 작성 구조
    - 데이터 매핑 aes
    - 차트 레이어 소개
    - 글로벌과 로컬의 개념
    - 차트 저장
    - 다양한 차트 옵션
    - 움직이는 차트 gganimate

## 데이터 다루기 deep dive

1. list 자료형과 반복 purrr
    - list 자료형 소개
    - list 들에 함수를 적용하는 map
    - 함수 인자 위치에 바로 함수 작성하기
    - 여러 인자를 받는 map2, pmap
    - map 응용 사례
    
1. tidy하게 모델 데이터 다루기 bloom
    - R에서 제공하는 모델 데이터 lm
    - bloom 패키지로 tidy하게 바꾸기 1. tidy
    - bloom 패키지로 tidy하게 바꾸기 2. glance
    - bloom 패키지로 tidy하게 바꾸기 3. augment
    - modelr 패키지로 추정값 만들기
    - modelr 패키지로 잔차 계산하기
    
1. 리스트 컬럼 다루기
    - lm 결과를 데이터셋에 합치기
    - 리스트로 구성된 컬럼 소개
    - 리스트 컬럼 다루기 nest, map
    - 리스트 컬럼 해제하기 unest
    
1. 데이터 베이스 DBI + dplyr
    - 환경 설정하기
    - 데이터 베이스 연결 dbConnect
    - sql 쿼리 사용하기 dbGetQuery
    - dplyr 문법으로 DB 탐색
    - src_dbi 일때 조심해야 할 점

