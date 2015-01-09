hpw <- read.csv("C:/Personal/coursera/household_power_consumption.txt", sep=";", quote="", na.strings="?", stringsAsFactors=FALSE)
hpw_sub <- subset(hpw, Date == "1/2/2007" | Date == "2/2/2007")

png (file = "plot4.png")
par (mfrow = c(2,2))

# 1st graph
with(hpw_sub,plot(as.POSIXct(paste(hpw_sub$Date, hpw_sub$Time), 
                             format="%d/%m/%Y %H:%M:%S"),
                  Global_active_power, type = "l", col = "black",
                  ylab = "Global Active Power (kilowatts)",
                  xlab = ""))

# 2nd graph
with(hpw_sub,plot(as.POSIXct(paste(hpw_sub$Date, hpw_sub$Time), 
                             format="%d/%m/%Y %H:%M:%S"),
                  Voltage, type = "l", col = "black",
                  ylab = "Voltage",
                  xlab = "datetime"))

# 3rd graph
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
legend("topright",pch = "-",bty = "n",col = c("black","red","blue"),
       legend = c("Sub_metering_1","Sub_metering_2","Sub_metering_3"))


# 4th graph
with(hpw_sub,plot(as.POSIXct(paste(hpw_sub$Date, hpw_sub$Time), 
                             format="%d/%m/%Y %H:%M:%S"),
                  Global_reactive_power, type = "l", col = "black",
                  ylab = "Global_reactive_power",
                  xlab = "datetime"))

dev.off()



