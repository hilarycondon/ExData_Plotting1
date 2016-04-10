## EXPLORATORY DATA ANALYSIS 
## HILARY CONDON, 4-10-2016
## PLOT1.R
## This script will create the "plot1.png" file to help examine how household
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


## CREATE PLOT1
png(filename="plot1.png",width=480,height=480)
hist(usageDataSub$Global_active_power, main = "Global Active Power", xlab = "Global Active Power (kilowatts)",col="red")
dev.off()
