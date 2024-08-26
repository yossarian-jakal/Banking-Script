#install.package("dplyr")

library(dplyr)

#Set up file location here 
#setwd()

spend <- read.csv('filename.csv', skip = 6, header = TRUE)
spend<- as.data.frame(spend)

spend$Date <- as.Date(spend$Date)

str(spend)

Income <- spend %>% filter(Amount > 0)

out <- spend %>% filter(Amount < 0)


AP <- out %>% filter(Tran.Type == 'D/D')

unique(out$Tran.Type)

Monthly <- spend %>% 
    select(Date, Amount, Payee) %>%
      arrange(Date) %>%
      mutate(Month_Year = substr(Date, 1,7)) %>%
      group_by(Month_Year)

May <- Monthly %>% 
  filter(Month_Year =='2024-05')

Jan <- sum(January$Amount)
Feb <- sum(February$Amount)
Mar <- sum(March$Amount)
April <- sum(April$Amount)
May <- sum(May$Amount)
June <- sum(June$Amount)
July <- sum(July$Amount)
August <- sum(August$Amount)



