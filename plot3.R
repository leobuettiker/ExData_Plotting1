#This file use the code in loadData.R to download and convert the data
source("loadData.R")

#plot 3
dev.copy(png,"plot3.png",width=480,height=480,units="px",res=100)
plot(power_cons$Datetime,power_cons$Sub_metering_1, type="l", 
     ylab="Energy sub metering", xlab="",
     cex.main=.75, cex.lab=.6, cex.axis=.5)
lines(power_cons$Datetime,power_cons$Sub_metering_2, col="red")
lines(power_cons$Datetime,power_cons$Sub_metering_3, col="blue")
legend("topright", legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"), 
       col=c("black", "red", "blue"), pch="-", cex=.6)
dev.off()
