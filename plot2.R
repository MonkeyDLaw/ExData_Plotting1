setwd("D:/Rcode/exdata-data-household_power_consumption")
file <- read.table("household_power_consumption.txt",header=TRUE,sep=";")
subfile <- subset(file, Date == "1/2/2007" | Date == "2/2/2007")
png("plot2.png")
x <- as.numeric(as.character(subfile[,3]))
dateTime <- as.POSIXlt(paste(as.Date(subfile$Date, format="%d/%m/%Y"), subfile$Time, sep=" "))
plot(dateTime, x,type="l",ylab="Global Active Power(kilowatts)")

dev.off()
