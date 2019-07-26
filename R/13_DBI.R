#                                    #
#       패스트 캠퍼스 온라인         #
#   금융 공학 / 퀀트 올인원 패키지   #
#    R 프로그래밍 - 강사. 박찬엽     #
#                                    #

## 데이터 베이스 DBI + dplyr
## DB에 연결하고 queary 작성

library(DBI)
con <- dbConnect(RSQLite::SQLite(), dbname = ":memory:")

dbListTables(con)
dbWriteTable(con, "mtcars", mtcars)
dbListTables(con)

dbListFields(con, "mtcars")
dbReadTable(con, "mtcars")

res <- dbGetQuery(con, "SELECT * FROM mtcars WHERE cyl = 4")
res

dbDisconnect(con)

## dplyr 문법으로 db 객체 다루기
library(dplyr)
library(DBI)
con <- dbConnect(RSQLite::SQLite(), dbname = ":memory:")

dbListTables(con)
dbWriteTable(con, "mtcars", mtcars)
dbListTables(con)

db_mtcars <- tbl(con, "mtcars")
db_mtcars %>% 
  select(disp)

db_mtcars %>% 
  filter(disp>200)

db_mtcars %>% 
  group_by(cyl) %>% 
  summarise(mean_wt = mean(wt, na.rm = TRUE))

db_mtcars %>% 
  group_by(cyl) %>% 
  summarise(mean_wt = mean(wt, na.rm = TRUE)) %>% 
  class()

db_mtcars %>% 
  group_by(cyl) %>% 
  summarise(mean_wt = mean(wt, na.rm = TRUE)) %>% 
  collect()

db_mtcars %>% 
  group_by(cyl) %>% 
  summarise(mean_wt = mean(wt, na.rm = TRUE)) %>% 
  collect() ->
  res


## 비밀정보를 안전하게 다루는 keyring
# install.packages("keyring")
library(keyring)

key_list()
key_set("test")
key_get("test")

library(dbplyr)
in_schema()


library(DBI)
con <- dbConnect(RMariaDB::MariaDB(),
                 dbname = "test",
                 host="localhost",
                 port="3306",
                 username="root",
                 password="1234")


dbListTables(con)
dbWriteTable(con, "mtcars", mtcars)
dbListTables(con)

dbDisconnect(con)

con <- dbConnect(RMariaDB::MariaDB(),
                 host="localhost",
                 port="3306",
                 username="root",
                 password="1234")

tbl(con, "mtcars")
tbl(con, in_schema("test", "mtcars"))
