# load data

data <- read.table('household_power_consumption.txt',header = TRUE, sep = ";", na = "?")
index <- which(data[,1] == '1/2/2007' | data[,1] == '2/2/2007');
data <- data[index,]

# plot
png(filename = "plot2.png", width = 480, height = 480, bg = "transparent")

Dateandtime <- paste(data[,1], data[,2])
Dateandtime <- strptime(Dateandtime, "%d/%m/%Y %H:%M:%S")
plot(Dateandtime, data[,3],type ='l', ylab = "Global Active Power (kilowatts)", xlab = "")

dev.off()