### test and ramblings for assignment3
setwd("~/Dokumente/WebUNI/R-Programming/Coursera/week4")
outcome <- read.csv("outcome-of-care-measures.csv", colClasses = "character")

outcome[, 11] <- as.numeric(outcome[, 11])
outcome[, 17] <- as.numeric(outcome[, 17])
outcome[, 23] <- as.numeric(outcome[, 23])
## You may get a warning about NAs being introduced; that is okay
hist(outcome[, 11]) # heart attack
hist(outcome[, 17]) # heart failure
hist(outcome[, 23]) # pneumonia

str(outcome)


best <- function(state,outcome) {
        ## read outcome data
        data <- read.csv("outcome-of-care-measures.csv", colClasses = "character")
        if (outcome == "heart attack") {
                data[, 11] <- as.numeric(data[, 11])
                outcome <- Hospital.30.Day.Death..Mortality..Rates.from.Heart.Attack
        }
        else if (outcome == "heart failure") {
                data[, 17] <- as.numeric(data[, 17])
                outcome <- Hospital.30.Day.Death..Mortality..Rates.from.Heart.Failure
        }
        else if (outcome == "pneumonia") {
                data[, 23] <- as.numeric(data[, 23])
                outcome <- Hospital.30.Day.Death..Mortality..Rates.from.Pneumonia
        }
        else {
                message("invalid outcome")
        }
        (data$State==state)
}
c <- best("pneumonia")
c

best <- function(outcome) {
        ## read outcome data
        data <- read.csv("outcome-of-care-measures.csv", colClasses = "character")

}
x <- best("pneumonia")
x
state="TX"
data <- read.csv("outcome-of-care-measures.csv", colClasses = "character")
data[, 11] <- as.numeric(data[, 11])
data[, 11] <-data[, 11]*(data$State==state)
which.min(data[,11]) # no zeros!!!



data <- read.csv("outcome-of-care-measures.csv", colClasses = "character")
data[, 11] <- as.numeric(data[, 11])
newdata <- data[, 11][data$State==state]
which.min(newdata) #wie krieg ich das hospital dazu?!

# from: http://statistics.ats.ucla.edu/stat/r/faq/subset_R.htm
newdata<- subset(data, State == state, select = c(State, outcome))
newdata



best <- function(state,outcome) {
        ## read outcome data
        data <- read.csv("outcome-of-care-measures.csv",colClasses = "character")
        
        ## check that state and outcome are valid
        if (state %in% data$State == FALSE) stop("invalid state")
        
        else if (outcome == "heart attack") {
                data[, 11] <- as.numeric(data[, 11])
                outcome <- "Hospital.30.Day.Death..Mortality..Rates.from.Heart.Attack"
        }
        else if (outcome == "heart failure") {
                data[, 17] <- as.numeric(data[, 17])
                outcome <- "Hospital.30.Day.Death..Mortality..Rates.from.Heart.Failure"
        }
        else if (outcome == "pneumonia") {
                data[, 23] <- as.numeric(data[, 23])
                outcome <- "Hospital.30.Day.Death..Mortality..Rates.from.Pneumonia"
        }
        ## check that 
        else {
                message("invalid outcome")
        }
        newdata<- subset(data, State == state, select = c("Hospital.Name", "State", outcome))
        options(warn=-1) # so that the warning for NAs doesn't come
        row <- which.min(newdata[,3])
        newdata[210,1]
}

best("TXn","heart attack")
outcome <- "heart attack"
state <- "TX"
str(outcome)

outcome <- "Hospital.30.Day.Death..Mortality..Rates.from.Heart.Attack"
newdata<- subset(data, State == state, select = c("Hospital.Name", "State", outcome))
newdata

## from: http://stackoverflow.com/questions/13774773/check-whether-value-exist-in-one-data-frame-or-not
state %in% newdata$State 









best <- function(state,outcome) {
        ## read outcome data
        data <- read.csv("outcome-of-care-measures.csv",colClasses = "character")
        
        ## check that state and outcome are valid
        if (state %in% data$State == TRUE) {
                message("invalid state")
                return()
        }
}
best("ef","sdf")

stop(paste(c("Error in best(",'"', state,'"', ", ",'"', outcome,'"', ") : invalid state"), collapse = ""),
     call. = FALSE)
