library(officer)
library(magrittr)
library(ggplot2)
library(flextable)
library(dplyr)
library(purrr)
library(stringr)

# img_1 <- "http://swiftbud.com/wp-content/uploads/2015/01/Best-Websites-to-Learn-programming-languages-Online-for-free.png"
# download.file(img_1, destfile = "src/img_1.png", mode = 'wb')
# 
# read_pptx("slide/style.pptx") %>% 
#   remove_slide(1) %>% 
#   add_slide(layout = "제목", master = "Office 테마") %>%
#   ph_with_text(type = "body", str = "01", index = 7) %>%
#   ph_with_text(type = "title", str = "강의 소개") %>% 
#   ph_with_text(type = "body", str = "R을 배워야 하는 이유", index = 11) %>% 
#   
#   add_slide(layout = "끝", master = "Office 테마") %>%
#   ph_with_text(type = "body", str = "01", index = 4) %>% 
#   ph_with_text(type = "body", str = "강의 소개", index = 6) %>%
#   ph_with_text(type = "title", str = "끝") %>% 
#   print(target = "slide/chapter00_01.pptx")

clip <- c(
  "R 언어 및 Rstudio 설치",
  "Rstudio 구성",
  "유용한 옵션",
  "코드를 작성하고 저장하는 법",
  "프로젝트를 이용한 파일 관리",
  "패키지 설치")
templ01 <- tibble(chp = "도구의 사용법", chp_no = "01", clip = clip) %>%
  mutate(clip_no = sprintf("0%d", 1:length(clip)))

clip <- c(
  "R의 데이터 유형",
  "단일 종류의 데이터",
  "단일 종류의 데이터 다루기",
  "리스트 다루기"
)
templ02 <- tibble(chp = "데이터의 기본", chp_no = "02", clip = clip) %>%
  mutate(clip_no = sprintf("0%d", 1:length(clip)))

clip <- c(
"함수의 구조",
"함수의 입력",
"함수의 출력",
"함수를 테스트하기")
templ03 <- tibble(chp = "함수의 기본", chp_no = "03", clip = clip) %>%
  mutate(clip_no = sprintf("0%d", 1:length(clip)))

clip <- c(
  "조건문 if",
  "다중 조건 switch",
  "반복문 for",
  "에러 처리")
templ04 <- tibble(chp = "반복과 조건", chp_no = "04", clip = clip) %>%
  mutate(clip_no = sprintf("0%d", 1:length(clip)))

clip <- c(
  "패키지를 고르는 법",
  "검색하는 법",
  "질문하는 법")
templ05 <- tibble(chp = "문제를 해결하는 법", chp_no = "05", clip = clip) %>%
  mutate(clip_no = sprintf("0%d", 1:length(clip)))

templ <- bind_rows(
  templ01,templ02,templ03,templ04,templ05
)

templ %>% 
  transpose() %>% 
  map( ~ read_pptx("slide/style.pptx") %>% 
         remove_slide(1) %>% 
         add_slide(layout = "제목", master = "Office 테마") %>%
         ph_with_text(type = "body", str = .x$chp_no, index = 7) %>%
         ph_with_text(type = "title", str = .x$chp) %>% 
         ph_with_text(type = "body", str = .x$clip, index = 11) %>% 
         
         add_slide(layout = "끝", master = "Office 테마") %>%
         ph_with_text(type = "body", str = .x$chp_no, index = 4) %>% 
         ph_with_text(type = "body", str = .x$chp, index = 6) %>%
         ph_with_text(type = "title", str = "끝") %>% 
         print(target =  str_c("slide/chapter",.x$chp_no,"_",.x$clip_no,".pptx"))
       )
