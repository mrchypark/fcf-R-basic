library(officer)
library(magrittr)
library(ggplot2)
library(flextable)

read_pptx("slide/style.pptx") %>% 
  remove_slide(1) %>% 
  add_slide(layout = "제목", master = "Office 테마") %>%
  ph_with_text(type = "body", str = "01", index = 7) %>%
  ph_with_text(type = "title", str = "강의 소개") %>% 
  ph_with_text(type = "body", str = "R을 배워야 하는 이유", index = 11) %>% 
  add_slide(layout = "1줄ti", master = "Office 테마") %>%
  ph_with_text(type = "body", str = "01", index = 4) %>% 
  ph_with_text(type = "body", str = "강의 소개", index = 6) %>%
  ph_with_text(type = "title", str = "R을 배워야 하는 이유") %>% 
  ph_with_text(type = "body", str = "재료와 과정을 저장하여 결과를 만든다1", index = 7) %>%
  ph_with_gg(ggplot(mtcars, aes(x = wt, y = mpg)) + geom_point(), index = 8) %>% 
  add_slide(layout = "끝", master = "Office 테마") %>%
  ph_with_text(type = "body", str = "01", index = 4) %>% 
  ph_with_text(type = "body", str = "강의 소개", index = 6) %>%
  ph_with_text(type = "title", str = "끝") %>% 
  print(target = "slide/chapter01_01.pptx")
