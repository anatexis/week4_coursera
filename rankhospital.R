rankhospital <- function(state,outcome,rank) {
        ## read outcome data
        data <- read.csv("outcome-of-care-measures.csv", colClasses = "character",
                         na.strings = "Not Available") %>% na.omit()
        
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
        newdata_ordered <- newdata %>% arrange_(outcome,"Hospital.Name")
        
        if (rank == "best") {
               output <- newdata_ordered[1,1]
        }
        
        else if (rank == "worst") {
                output <- tail(newdata_ordered[1],n=1)[,1]
        }
        
        else {output <- newdata_ordered[rank,1]}
        
        output
}

rankhospital("MD", "heart attack", "worst")
rankhospital("TX", "heart failure", 4)
rankhospital("MN", "heart attack", 5000)
