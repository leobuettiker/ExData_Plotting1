#This file use the code in loadData.R to download and convert the data
source("loadData.R")

#plot 4
par(mfrow=c(2,2))
dev.copy(png,"plot4.png",width=480,height=480,units="px",res=100)
plot(power_cons$Datetime,power_cons$Global_active_power, type="l", ylab="Global Active Power", xlab="", cex.lab=.5, cex.axis=.5)

plot(power_cons$Datetime,power_cons$Voltage, type="l", ylab="Voltage", xlab="datetime", cex.lab=.5, cex.axis=.5)

plot(power_cons$Datetime,power_cons$Sub_metering_1, type="l", ylab="Energy sub metering", xlab="", cex.lab=.5, cex.axis=.5)
lines(power_cons$Datetime,power_cons$Sub_metering_2, col="red")
lines(power_cons$Datetime,power_cons$Sub_metering_3, col="blue")
legend("topright", legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"), col=c("black", "red", "blue"), pch="-", bty='n', cex=.5)

plot(power_cons$Datetime,power_cons$Global_reactive_power, type="l", ylab="Global_reactive_power", xlab="datetime",cex.lab=.5, cex.axis=.5)
dev.off()
par(mfrow=c(1,1))
