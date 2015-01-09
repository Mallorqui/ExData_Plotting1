hpw <- read.csv("C:/Personal/coursera/household_power_consumption.txt", sep=";", quote="", na.strings="?", stringsAsFactors=FALSE)
hpw_sub <- subset(hpw, Date == "1/2/2007" | Date == "2/2/2007")
png (file = "plot3.png")
with(hpw_sub,plot(as.POSIXct(paste(hpw_sub$Date, hpw_sub$Time), 
                             format="%d/%m/%Y %H:%M:%S"),
                  Sub_metering_1, type = "l", col = "black",
                  ylab = "Energy sub metering",
                  xlab = ""))
with(hpw_sub,lines(as.POSIXct(paste(hpw_sub$Date, hpw_sub$Time), 
                             format="%d/%m/%Y %H:%M:%S"),
                  Sub_metering_2,  col = "red"))
with(hpw_sub,lines(as.POSIXct(paste(hpw_sub$Date, hpw_sub$Time), 
                              format="%d/%m/%Y %H:%M:%S"),
                   Sub_metering_3,  col = "blue"))
legend("topright",pch = "-",col = c("black","red","blue"),
       legend = c("Sub_metering_1","Sub_metering_2","Sub_metering_3"))
dev.off()


