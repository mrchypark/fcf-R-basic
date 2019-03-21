#                                    #
#       패스트 캠퍼스 온라인         #
#   금융 공학 / 퀀트 올인원 패키지   #
#    R 프로그래밍 - 강사. 박찬엽     #
#                                    #

# tidy한 방법으로 데이터 다루기
## 관계형 데이터를 다루기

## 사용할 데이터 소개
library(remotes)
install_github("mrchypark/marcapkor")

library(marcapkor)
data2017 <- mck_get(2017)
