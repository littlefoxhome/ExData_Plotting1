# load data

data <- read.table('household_power_consumption.txt',header = TRUE, sep = ";", na = "?")
index <- which(data[,1] == '1/2/2007' | data[,1] == '2/2/2007');
data <- data[index,]

# plot
png(filename = "plot3.png", width = 480, height = 480, bg = "transparent")

plot(Dateandtime, data[,7],type ='l', ylab = "Energy sub metering", xlab = "")

lines(DateTime, data[,8], col = "red")
lines(DateTime, data[,9], col = "blue")
legend("topright",col = c("black", "red", "blue"),c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"),lwd = 1)

dev.off()