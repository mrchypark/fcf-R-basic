library(officer)
library(magrittr)
library(ggplot2)
library(flextable)

# data = structure(list(Status = c("Alive", "Alive", "Alive", "Alive","Melanoma", "Melanoma","Melanoma", "Melanoma", "Non-melanoma","Non-melanoma", "Non-melanoma", "Non-melanoma"), Gender = c("Female","Female", "Male", "Male", "Female", "Female", "Male", "Male","Female", "Female", "Male", "Male"), Ulceration = c("Absent","Present", "Absent", "Present", "Absent", "Present", "Absent","Present", "Absent", "Present", "Absent", "Present"), n = c(68L,23L, 24L, 19L, 8L, 20L, 8L, 21L, 3L, 4L, 4L, 3L), Mean = c(1.693,2.972, 1.468, 4.319, 2.139, 4.724, 3.266, 5.143, 1.667, 3.302,2.42, 8.053), SD = c(2.004, 2.593, 1.719, 2.423, 1.184, 4.128,4.681, 2.862, 1.141, 3.713, 2.499, 4.019)), class = "data.frame", .Names = c("Status","Gender", "Ulceration", "n", "Mean", "SD"), row.names = c(NA,-12L))
# 
# ft <- flextable(data = data) %>% 
#   theme_booktabs() %>% 
#   set_header_labels( n = "#", Mean = "\u03D1", SD = "\u03C3") %>% 
#   color(i = ~ n < 4, color = "wheat") %>% 
#   width(width = 11.5/ncol(data)) 

img_1 <- "http://swiftbud.com/wp-content/uploads/2015/01/Best-Websites-to-Learn-programming-languages-Online-for-free.png"
download.file(img_1, destfile = "src/img_1.png", mode = 'wb')

read_pptx("slide/style.pptx") %>% 
  remove_slide(1) %>% 
  add_slide(layout = "제목", master = "Office 테마") %>%
  ph_with_text(type = "body", str = "01", index = 7) %>%
  ph_with_text(type = "title", str = "강의 소개") %>% 
  ph_with_text(type = "body", str = "R을 배워야 하는 이유", index = 11) %>% 
  
  add_slide(layout = "1줄ti", master = "Office 테마") %>%
  ph_with_text(type = "body", str = "01", index = 4) %>% 
  ph_with_text(type = "body", str = "강의 소개", index = 6) %>%
  ph_with_text(type = "title", str = "개발 언어를 배우는 것") %>% 
  ph_with_text(type = "body", str = "R 뿐만 아니라 무엇이든 개발 언어를 배우세요!", index = 7) %>%
  ph_with_img("src/img_1.png", index = 8) %>% 
  
  add_slide(layout = "1줄ti", master = "Office 테마") %>%
  ph_with_text(type = "body", str = "01", index = 4) %>% 
  ph_with_text(type = "body", str = "강의 소개", index = 6) %>%
  ph_with_text(type = "title", str = "개발 언어를 배우는 것") %>% 
  ph_with_text(type = "body", str = "개발자가 일하는 방식을 배우는 것", index = 7) %>%
  ph_with_img("src/img_1.png", index = 8) %>% 
  
  add_slide(layout = "1줄ti2", master = "Office 테마") %>%
  ph_with_text(type = "body", str = "01", index = 4) %>% 
  ph_with_text(type = "body", str = "강의 소개", index = 6) %>%
  ph_with_text(type = "title", str = "개발 언어를 배우는 것") %>% 
  ph_with_text(type = "body", str = "소스와 결과의 분리", index = 7) %>%
  ph_with_text(type = "body", 
               str = "소스 = 원본 + 과정", 
               index = 8) %>% 
  
  add_slide(layout = "1줄ti", master = "Office 테마") %>%
  ph_with_text(type = "body", str = "01", index = 4) %>% 
  ph_with_text(type = "body", str = "강의 소개", index = 6) %>%
  ph_with_text(type = "title", str = "flextable 테스트") %>% 
  ph_with_text(type = "body", str = "재료와 과정을 저장하여 결과를 만든다1", index = 7) %>%
  
  add_slide(layout = "끝", master = "Office 테마") %>%
  ph_with_text(type = "body", str = "01", index = 4) %>% 
  ph_with_text(type = "body", str = "강의 소개", index = 6) %>%
  ph_with_text(type = "title", str = "끝") %>% 
  print(target = "slide/chapter01_01.pptx")
