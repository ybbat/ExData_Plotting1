source("loadData.R")
data <- loadData()

png("plot3.png", width=480, height=480)
with(data, {
    plot(Sub_metering_1  ~ as.numeric(as.POSIXct(DateTime)), type="l", xaxt="n", xlab="", ylab="Energy sub metering")
    lines(Sub_metering_2 ~ as.numeric(as.POSIXct(DateTime)), col="red")
    lines(Sub_metering_3 ~ as.numeric(as.POSIXct(DateTime)), col="blue")
    legend("topright", col=c("black", "red", "blue"), lty=1, lwd=2, legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))
    axis(1, at=c(1170288000, 1170374400, 1170460740), labels=c("Thu", "Fri", "Sat"))
})
dev.off()
