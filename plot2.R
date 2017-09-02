# Set the enviroment, so the display from x bar is in English

Sys.setlocale("LC_ALL", "English")
powerdata$Global_active_power = as.numeric(as.character(powerdata$Global_active_power))
plot(powerdata$Timestamp,powerdata$Global_active_power,type="l",xlab="",ylab="Global Active Power (Kilowatts)")
dev.copy(png, file="plot2.png", height=480, width=480)
dev.off()
