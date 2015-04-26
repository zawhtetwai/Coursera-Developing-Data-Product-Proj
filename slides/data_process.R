require("tidyr")
require("dplyr")
data <- read.csv("data.csv", header=TRUE, sep=",", skip=1)

load_birth_exp <- function (){
data_birth <- data[, c(1, 2, 3, 4, 5)]
names(data_birth) <- c("Country", "Year", "Male", "Female", "Total")

exp_at_birth <- data_birth %>% 
  select(-Total) %>% 
  gather(Gender, lex, Female:Male)
}

load_sixty_exp <- function (){
data_60 <- data[, c(1, 2, 6, 7, 8)]
names(data_60) <- c("Country", "Year", "Male", "Female", "Total")

exp_at_60 <- data_60 %>%
  select(-Total) %>%
  gather(Gender, lex, Female:Male)
}