household_power_consumption <- read.csv("C:/Users/manoj.prabhakar/Desktop/LEARNING/MOOC/EDA WITH R/FIRST LESSON/ASSIGNMENT/exdata%2Fdata%2Fhousehold_power_consumption/household_power_consumption.txt", sep=";")
View(household_power_consumption)

household_power_consumption$Date1=as.Date(household_power_consumption$Date,format="%d/%m/%Y")

household_power_consumption1=subset(household_power_consumption, Date1>="2007-02-01" & Date1<="2007-02-02")

Global_active_power = as.numeric(as.character(household_power_consumption1$Global_active_power))

png(filename="Plot1.png",height = 480,width = 480)

hist(Global_active_power,col="red",xlab="Global Active Power (kilowatts)",main="Global Active Power")

dev.off()

