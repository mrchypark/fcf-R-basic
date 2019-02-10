library(officer)
library(magrittr)

my_pres <- read_pptx("slide/style.pptx")

my_pres %>% 
  add_slide(layout = "제목", master = "Office 테마") %>%
  ph_with_text(type = "body", str = "01", index = 7) %>%
  ph_with_text(type = "title", str = "강의 소개") %>% 
  ph_with_text(type = "body", str = "테스트 다시", index = 11) -> my_pres

print(my_pres, target = "slide/title_test.pptx")

my_pres <- read_pptx("slide/style.pptx")

my_pres %>% 
  add_slide(layout = "1줄 제목", master = "Office 테마") %>%
  ph_with_text(type = "title", str = "결과를 만든다.") %>% 
  ph_with_text(type = "body", str = "본문 위치", index = 7) %>%
  ph_with_text(type = "body", str = "강의 소개", index = 6) %>%
  ph_with_text(type = "body", str = "01", index = 4) -> my_pres

print(my_pres, target = "slide/title_test.pptx")

