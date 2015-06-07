setwd("D:/Rcode/exdata-data-household_power_consumption")
file <- read.table("household_power_consumption.txt",header=TRUE,sep=";")
subfile <- subset(file, Date == "1/2/2007" | Date == "2/2/2007")
png("plot1.png")
#attach(subfile)
x <- as.numeric(as.character(subfile[,3]))
hist(x,col= 'red',breaks = 12,main="Global Active Power",xlab="Global Active Power(kilowatts)",ylim=c(0,1200))
dev.off()

