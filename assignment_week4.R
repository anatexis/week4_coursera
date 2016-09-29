setwd("~/Dokumente/WebUNI/R-Programming/Coursera/week4")
outcome <- read.csv("outcome-of-care-measures.csv", colClasses = "character")
head(outcome)

outcome[, 11] <- as.numeric(outcome[, 11])
outcome[, 17] <- as.numeric(outcome[, 17])
outcome[, 23] <- as.numeric(outcome[, 23])
## You may get a warning about NAs being introduced; that is okay
hist(outcome[, 11]) # heart attack
hist(outcome[, 17]) # heart failure
hist(outcome[, 23]) # pneumonia


#-------------------------------------------------------------------------------
###### Finding the best hospital in a state

best <- function(outcome) {
        ## read outcome data
        data <- read.csv("outcome-of-care-measures.csv", colClasses = "character")
        if (outcome == "heart attack") {
                data[, 11] <- as.numeric(data[, 11])
        }
        else if (outcome == "heart failure") {
                data[, 17] <- as.numeric(data[, 17])
        }
        else if (outcome == "pneumonia") {
                data[, 23] <- as.numeric(data[, 23])
        }
        else {
                message("invalid outcome")
        }
}

best("heart attack")


