#Plot 1

#1. Load power consumption dataset:
power_con <- read.table("household_power_consumption.txt",skip=1,sep=";")
#2. Name power consumption dataset:
names(power_con) <- c("Date","Time","Global_active_power","Global_reactive_power","Voltage","Global_intensity","Sub_metering_1","Sub_metering_2","Sub_metering_3")
#3. Subset power consumption dataset:
subpower_con <- subset(power_con,power_con$Date=="1/2/2007" | power_con$Date =="2/2/2007")
#4. Creation of histograph
hist(as.numeric(as.character(subpower_con$Global_active_power)),col="red",main="Global Active Power",xlab="Global Active Power(kilowatts)")
#5. Annotating graph:
title(main="Global Active Power")
#6. Creating PNG image:
png("plot1.png", width=480, height=480)
