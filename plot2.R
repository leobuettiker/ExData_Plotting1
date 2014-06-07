#This file use the code in loadData.R to download and convert the data
source("loadData.R")

#plot 2
dev.copy(png,"plot2.png",width=480,height=480,units="px",res=100)
plot(power_cons$Datetime,power_cons$Global_active_power, type="l", 
     ylab="Global Active Power (killowatts)", xlab="",
     cex.main=.75, cex.lab=.6, cex.axis=.5)
dev.off()
