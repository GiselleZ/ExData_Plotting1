png(file="plot4.png",width = 480,height = 480)
par(mfrow=c(2,2), mar=c(4,4,2,1), oma=c(0,0,2,0))

powerdata$Global_reactive_power = as.numeric(as.character(powerdata$Global_reactive_power))
powerdata$Voltage = as.numeric(as.character(powerdata$Voltage))

plot(powerdata$Timestamp,powerdata$Global_active_power,type="l",xlab = "",ylab = "Global xlActive Power")
plot(powerdata$Timestamp,powerdata$Voltage,type="l",xlab = "datetime",ylab = "Voltage")
plot(powerdata$Timestamp,powerdata$Sub_metering_1,type="l",xlab="",ylab = "Energy Sub Meter")
points(powerdata$Timestamp,powerdata$Sub_metering_2,type="l",col='red')
points(powerdata$Timestamp,powerdata$Sub_metering_3,type="l",col='blue')
legend("topright",lty=1,legend = c("Sub_Metering_1","Sub_Metering_2","Sub_Metering_2"),col=c("black","red","blue"))
plot(powerdata$Timestamp,powerdata$Global_reactive_power,type="l",xlab = "datetime",ylab = "Global_reactive_power")
dev.off()