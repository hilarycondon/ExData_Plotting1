# EXPLORATORY DATA ANALYSIS 
## HILARY CONDON, 4-10-2016
## PLOT2.R
## This script will create the "plot2.png" file to help examine how household
## energy usage varies over a 2-day period in February, 2007. 
## This script uses the base plotting system. 


# Set Path for Data to Load
dataPath <- "./data/household_power_consumption.txt"

##CHECK IF FILE EXISTS IN DIRECTORY, IF IT DOES NOT THROW ERROR
try(file.exists(dataPath), stop("File does not Exist."))

## LOADING THE DATA

## CONFIRMED THAT COMPUTER HAS SUFFICIENT PHYSICAL MEMORY AVAILABLE FOR DATASET.
## WARNING MESSAGE
warning("This function requires at least 30 MB of memory be available.")



# Read Data into R, Setting Na.Strings to "?" 

usageData <- read.table(dataPath, sep = ";", quote = "", na.strings = "?", 
                        comment.char = "",stringsAsFactors=FALSE,header = TRUE,
                        nrows=2075259,check.names = FALSE, colClasses = c("character", "character", rep("numeric",7)))

## SUBSET DATA FROM 2007-02-01 and 2007-02-01
usageDataSub <- usageData[usageData$Date == "1/2/2007" | usageData$Date ==  "2/2/2007",]

## REMOVE FULL DATA SET
rm(usageData)

## CONVERT DATE AND TIME VARIABLES TO DATE/TIME CLASSES USING AS.DATE & STRPTIME
dateTime <- with(usageDataSub, paste(Date,Time))
usageDataSub$DateTime <- strptime(dateTime,"%d/%m/%Y %H:%M:%S")
usageDataSub$Date <- as.Date(usageDataSub$Date, format = "%d/%m/%Y")



## CREATE PLOT4
png(filename="plot4.png",width=480,height=480)
par(mfrow = c(2,2))

##TopLeft
with(usageDataSub, plot(DateTime,Global_active_power,type = "l", xlab = "",ylab = "Global Active Power"))

##TopRight
with(usageDataSub, plot(DateTime, Voltage,type = "l", xlab = "datetime",ylab = "Voltage"))


## BottomLeft
with(usageDataSub,{
        plot(DateTime, Sub_metering_1,type = "l", xlab = "",ylab = "Energy sub metering",col="black")
        lines(DateTime,Sub_metering_2,col = "red",type = "l")
        lines(DateTime,Sub_metering_3,col="blue",type="l")
})
legend("topright",c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),lwd=1,col=c("black","red","blue"),bty="n")

## BottomRight

with(usageDataSub,plot(DateTime,Global_reactive_power,type="l",col="black",xlab="datetime",ylab=colnames(usageDataSub)[4]))

dev.off()
