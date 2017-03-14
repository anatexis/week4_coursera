best <- function(state,outcome) {
        ## read outcome data
        data <- read.csv("outcome-of-care-measures.csv",colClasses = "character")
        
        ## check that state and outcome are valid
        if (state %in% data$State == FALSE) stop("invalid state")
        if (outcome %in% c("heart attack", "heart failure", "pneumonia") == F) {
                stop("invalid outcome")
        }
        
        if (outcome == "heart attack") {
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
        newdata[row,1]
}

best("MD","pneumonia")