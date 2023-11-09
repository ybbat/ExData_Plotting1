source("loadData.R")
data <- loadData()

png("plot2.png", width=480, height=480)
with(data, plot(Global_active_power ~ as.numeric(as.POSIXct(DateTime)), type="l", xaxt="n", xlab="", ylab="Global Active Power (kilowatts)"))
axis(1, at=c(1170288000, 1170374400, 1170460740), labels=c("Thu", "Fri", "Sat"))
dev.off()
