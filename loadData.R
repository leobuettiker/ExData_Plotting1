#download the file if it does not yetexist in the current folder
if (!file.exists("household_power_consumption.zip")){
  download.file("https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip", "household_power_consumption.zip")
}
#unzip the file if it does not yet exist in the current folder
if (!file.exists("household_power_consumption.txt")){
  unzip("household_power_consumption.zip")
}
#load all data
power_cons <- read.csv2("household_power_consumption.txt", as.is=T)
#state the relevant days for this excercise
relevant_dates <- c("1/2/2007","2/2/2007")
#filter only relevant days
power_cons <- power_cons[as.character(power_cons$Date) %in% relevant_dates,]
#convert all numeric values of the dataframe to numeric
power_cons[,3:9] <- sapply(power_cons[,3:9], as.numeric)
#create a datetime column
power_cons$Datetime <- strptime(paste(power_cons$Date, power_cons$Time), "%d/%m/%Y %H:%M:%S")
#Switch time variable to english to get the days in the same format as in the sample
#In systems other then Windows use "en" instead of "English"
Sys.setlocale("LC_TIME", "English")
