
# unzip the source file in local directory, and read into data.
data<-read.table(file = "./household_power_consumption.txt",sep=";",header = T)
powerdata <- data[data$Date =="1/2/2007"| data$Date =="2/2/2007",] 
powerdata$Timestamp = strptime(paste(powerdata$Date,powerdata$Time), "%d/%m/%Y %H:%M:%S")
powerdata$Global_active_power = as.numeric(as.character(powerdata$Global_active_power))
hist(powerdata$Global_active_power, main = "Global Active Power",xlab="Global Active Power (kilowatts)",col = "red")
dev.copy(png,file="plot1.png")
dev.off()
