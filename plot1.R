#This file use the code in loadData.R to download and convert the data
source("loadData.R")

dev.copy(png,"plot1.png",width=480,height=480,units="px",res=100)
hist(power_cons$Global_active_power, col="red", 
     main="Global Active Power", xlab="Global Active Power (kilowatts)", 
     cex.main=.75, cex.lab=.6, cex.axis=.5)
dev.off()
