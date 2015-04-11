# load data

data <- read.table('household_power_consumption.txt',header = TRUE, sep = ";", na = "?")
index <- which(data[,1] == '1/2/2007' | data[,1] == '2/2/2007');
data <- data[index,]

# plot
png(filename = "plot1.png", width = 480, height = 480, bg = "transparent")

hist(data[,3],col = "red", main = "Global Active Power", xlab = "Global Active Power (kilowatts)")

dev.off()