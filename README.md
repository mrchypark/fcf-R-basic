# fcf-R-basic

## 강의 소개

1. 강의의 구성

1. 빠르게 R를 공부하는 방법
    - 80/20에 해당하는 함수를 학습
    - cheat sheet를 사전처럼 활용
    - 프로젝트 진행

## R 프로그래밍 기본

1. 도구의 사용법
    - R 언어 및 Rstudio 설치
    - Rstudio 구성
    - 유용한 옵션
    - 코드를 작성하고 저장하는 법
    - 프로젝트를 이용한 파일 관리
    - 패키지 설치

1. 데이터의 기본
    - R의 데이터 유형
    - 단일 종류의 데이터
    - 단일 종류의 데이터 다루기
    - 리스트 다루기

1. 함수의 기본
    - 함수의 구조
    - 함수의 입력
    - 함수의 출력
    - 함수를 테스트하기
    
1. 프로그램 제어문
    - 조건문 if
    - 조건문을 작성하는 요령
    - 다중 조건 switch
    - 반복문 for
    - 반복문 작성 예시
    - 에러 처리

1. 도움을 받는 방법
    - 검색하는 법
    - 질문하는 법

## tidy한 방법으로 데이터 다루기
1. 데이터 시각화 ggplot2
    - 함수 작성 구조
    - 데이터 매핑 aes
    - 차트 레이어 소개
    - 글로벌과 로컬의 개념
    - 차트 저장
    - 다양한 차트 옵션
    - 움직이는 차트 gganimate
    
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
    - 데이터 불러오기 readr 패키지
    - na 데이터를 처리하는 방법
    - 개별 컬럼을 직접 처리하는 방법
    - 데이터 저장하기 
    - 엑셀 파일 다루기, 저장하기
    
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
  
## 시계열 데이터 deep dive

1. time index를 지원하는 tibbletime
1. forcast 모델 데이터 다루기 sweep
1. 시계열데이터의 이상치 탐지 anomalize
1. 금융 데이터 분석 종합 패키지 tidyquant


## 참고 자료들

인자, 인수    
<https://www.facebook.com/groups/techbookwriting/permalink/2032510866800871/>



## etc

1. R을 배워야 하는 이유
    - 재료와 과정을 저장하여 결과를 만든다
    - 사람이 잘하는 일 vs 컴퓨터가 잘하는 일

도입부 : 6년동안 테스트 업무를 자동화해서 놀고 먹다 결국 해고된 사람 이야기
<https://www.huffingtonpost.kr/2016/06/17/story_n_10517756.html>
핵심 메세지 : 개발 언어를 배우세요!
이유와 근거 : 

컴퓨터가 잘하는 일과 사람이 잘하는 일은 다르다.
컴퓨터가 잘하는 일
- 단순 반복적인 일
- 기억하는 일
- 계산하는 일
사람이 잘하는 일
- 애매한 부분에 대한 판단
- 분류나 종류를 만듬

그동안 사용한 컴퓨터가 잘하는 일은 1차원적인 계산과 저장 기능이었다.
개발 언어를 배우면 일하는 과정을 저장하고 관리할 수 있게 되기 때문에 일하는 방식이 완전히 달라진다.

사례 : 우선 저장된 일하는 과정은 계속 반복할 수 있다. 그건 나 뿐만 아니라 다른 사람이 사용할 수도 있다.
재료인 데이터 원본과 가공하는 과정을 저장하여 결과를 만들 수 있다.
이렇게 되면 결과가 이상하거나 잘못 되었을 때, 과정을 고치는 것으로 결과를 다시 만들 수 있다.

종결, 제안 : 아주 작은 일이라도 3번 이상 반복한다면 한번 컴퓨터에게 시켜보세요.

도입부 : 
금융 분석에서 많은 부분을 차지하는 계산의 반복은 역시 컴퓨터에게 시키기 좋은 일이다.
사람은 해석에 집중하고, 계산은 컴퓨터에게 시키면 좋겠다.
개발을 많은 부분 가져가기는 어려우니, 쉽고 빠르게 도입하는 것이 중요하다.

핵심 메세지 : 그 어떤 언어에 비해 사용자 편의에 가까이 있는 언어기 때문에 좋은 시작점이다.
이유와 근거 : 
대부분의 옵션에 기본값을 제공한다.
cran의 관리 패키지는 모두 설명서가 의무이다.
인덱스가 1로 시작하는 등 직관적이다.

사례 : 

종결, 제안 : 이렇기 때문에 적게 배우고, 많은 효과를 누릴 수 있다.
개발이 자신의 주 영역이 아니라면, R을 공부해서 날개를 달아보자.
