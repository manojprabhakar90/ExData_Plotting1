household_power_consumption <- read.csv("C:/Users/manoj.prabhakar/Desktop/LEARNING/MOOC/EDA WITH R/FIRST LESSON/ASSIGNMENT/exdata%2Fdata%2Fhousehold_power_consumption/household_power_consumption.txt", sep=";")
View(household_power_consumption)

household_power_consumption$Date1=as.Date(household_power_consumption$Date,format="%d/%m/%Y")

household_power_consumption1=subset(household_power_consumption, Date1>="2007-02-01" & Date1<="2007-02-02")

Sub_metering_1 = as.numeric(as.character(household_power_consumption1$Sub_metering_1))

Sub_metering_2 = as.numeric(as.character(household_power_consumption1$Sub_metering_2))

Sub_metering_3 = household_power_consumption1$Sub_metering_3

datetime = as.POSIXct(paste(household_power_consumption1$Date, as.character(household_power_consumption1$Time)),format="%d/%m/%Y %H:%M:%S")

png(filename="Plot3.png",height = 480,width=480)

plot(datetime,Sub_metering_1,type="l",xlab="",ylab="Energy sub metering")
lines(datetime,Sub_metering_2,type="l",col="red")
lines(datetime,Sub_metering_3,type="l",col="blue")
legend("topright",c("Sub_metering_1","Sub_metering_2","Sub_metering_1"),lty=1,lwd=2.5,col=c("black","red","blue"))

dev.off()






