hpw <- read.csv("C:/Personal/coursera/household_power_consumption.txt", sep=";", quote="", na.strings="?", stringsAsFactors=FALSE)
hpw_sub <- subset(hpw, Date == "1/2/2007" | Date == "2/2/2007")
png (file = "plot2.png")
with(hpw_sub,plot(as.POSIXct(paste(hpw_sub$Date, hpw_sub$Time), 
                             format="%d/%m/%Y %H:%M:%S"),
                  Global_active_power, type = "l", col = "black",
                  ylab = "Global Active Power (kilowatts)",
                  xlab = ""))
dev.off()


