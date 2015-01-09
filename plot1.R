hpw <- read.csv("C:/Personal/coursera/household_power_consumption.txt", 
                sep=";", quote="", na.strings="?", stringsAsFactors=FALSE)
hpw_sub <- subset(hpw, Date == "1/2/2007" | Date == "2/2/2007")
png (file = "plot1.png")
hist(as.numeric(hpw_sub$Global_active_power),
     col="red",
     xlab = "Global Active Power (kilowatts)",
     main = "Global Active Power")
dev.off()
