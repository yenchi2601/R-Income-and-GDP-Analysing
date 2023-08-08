# Loading
library("readxl")
library(ggplot2)
theme_set(theme_minimal())

# xls files
gdp <- read_excel("GDP_4 groups.xlsx")
head(gdp)
# xlsx files
bottom40 <- read_excel("Bottom 40_4 groups.xlsx")

ggplot(gdp, aes(x=Year)) + 
  geom_line(aes(y = High_income, color = "black")) + 
  geom_line(aes(y = Upper_mid_income), color="steelblue") +
  geom_line(aes(y = Lower_mid_income), color="green") +
  geom_line(aes(y = Low_income), color="orange")+
  scale_colour_manual("", 
                      values = c("High_income"="black", "Upper_mid_income"="steelblue","Lower_mid_income"="green","Low_income"="orange")) +
  
  xlab("Year") +
  ylab("GDP") + 
  labs(title="GDP per capita")



ggplot(bottom40, aes(x=Year)) + 
  geom_point(aes(y = High_income, color = "black")) + 
  geom_point(aes(y = Upper_mid_income), color="steelblue") +
  geom_point(aes(y = Lower_mid_income), color="green") +
  geom_point(aes(y = Low_income), color="orange")+
  scale_colour_manual("", 
                      values = c("High_income"="black", "Upper_mid_income"="steelblue","Lower_mid_income"="green","Low_income"="orange")) +
  
  xlab("Year") +
  ylab("Rate") + 
  labs(title="Rate of growth of the bottom 40% citizen's income")

