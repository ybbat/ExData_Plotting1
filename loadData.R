loadData <- function() {
    data <- read.table("household_power_consumption.txt", sep=";", header=TRUE, na.strings = "?")
    dates = c("1/2/2007", "2/2/2007")
    data <- data[data$Date %in% dates,]
    data$DateTime <- with(data,strptime(paste(Date, Time), "%d/%m/%Y %H:%M:%S"))
    return(data)
}
