source("loadData.R")
data <- loadData()

png("plot4.png", width=480, height=480)
par(mfrow=c(2,2))
#1
with(data, {
    plot(Global_active_power ~ as.numeric(as.POSIXct(DateTime)), type="l", xaxt="n", xlab="", ylab="Global Active Power (kilowatts)")
    axis(1, at=c(1170288000, 1170374400, 1170460740), labels=c("Thu", "Fri", "Sat"))
})
#2
with(data, {
    plot(Voltage ~ as.numeric(as.POSIXct(DateTime)), type="l", xaxt="n", xlab="", ylab="Voltage")
    axis(1, at=c(1170288000, 1170374400, 1170460740), labels=c("Thu", "Fri", "Sat"))
    title(xlab="datetime", outer = TRUE)
})
#3
with(data, {
    plot(Sub_metering_1  ~ as.numeric(as.POSIXct(DateTime)), type="l", xaxt="n", xlab="", ylab="Energy sub metering")
    lines(Sub_metering_2 ~ as.numeric(as.POSIXct(DateTime)), col="red")
    lines(Sub_metering_3 ~ as.numeric(as.POSIXct(DateTime)), col="blue")
    legend("topright", col=c("black", "red", "blue"), lty=1, lwd=2, legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))
})
#4
with(data, {
    plot(Global_reactive_power ~ as.numeric(as.POSIXct(DateTime)), type="l", xaxt="n", xlab="", ylab="Global_reactive_power")
    axis(1, at=c(1170288000, 1170374400, 1170460740), labels=c("Thu", "Fri", "Sat"))
})
dev.off()
