library(tidyverse)

data <- read.csv("outcome-of-care-measures.csv",colClasses = "character",
                 na.strings = "Not Available") %>% na.omit()
data <- na.omit(data)
state <-  "MD"
rank <- 5
data[, 23] <- as.numeric(data[, 23])
outcome <- "Hospital.30.Day.Death..Mortality..Rates.from.Heart.Attack"
newdata <- subset(data, State == state, select = c("Hospital.Name", "State", outcome))

newdata_ordered <- newdata %>% arrange_(outcome,"Hospital.Name")
na.omit(tail(newdata_ordered))
newdata_ordered[rank,1]

x <- newdata

we <- tail(newdata_ordered[1])[,1] %>% na.omit()
atoorder <- as.vector(as.matrix(newdata[3]))
preorderd<- order(toorder) # where is the orderd value in the vector 
orderd <- toorder[preorderd]
rank <- 5
orderd[rank]
newdata[rank,1]

x <- c(2,5,1)
order(x)
orderdx <- x[order(x)]
orderdx[rank]
2 5 0.1 7 9 10 1
3 7 1   2 4 5  6

c(2,5,1)[]