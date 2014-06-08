
# Rough calculation of memory requirements
# memory = nrows * ncols * 8bytes / numeric

2075259*9*8/220 ##/220 give the answer in mb's, not bytes 

# roughly 6.8GB; too much for my computer (4GB of ram)

setwd("/Users/robmathew/Documents/Coursera/Data Science Stream/Exploratory Data Analysis/Assignments/Assignment1")

# read only the date column:
library(limma)
read.columns()

dates <- read.columns("household_power_consumption.txt", required.col="Date", sep=";", stringsAsFactors=FALSE)
dates$Date<- as.Date(dates$Date, "%d/%m/%Y")

selection<- subset(dates, dates$Date=="2007-02-01" | dates$Date=="2007-02-02")
head(selection)
# note from the head output that the first date we want begins with row 66637;

dim(selection)

## and that we want 28880 rows starting at row 66637

# set a vector of column names
cols <-c("Date", "Time", "Global_active_power", "Global_reactive_power", "Voltage","Global_intensity", "Sub_metering_1", "Sub_metering_2", "Sub_metering_3")

#read only the rows that correspond with the dates we want, using the skip and nrow commands
data <- read.table("household_power_consumption.txt", col.names=cols, sep=";", stringsAsFactors=FALSE, skip=66637, nrow=2880)
names(data)
data$Date<- as.Date(data$Date, "%d/%m/%Y")

dim(data)
str(data)
head(data)
head(strptime(data$Time, "%H:%M:%S"))

#draw the plot and save it to a .png file
png(file="plot1.png")
hist(data$Global_active_power, col="red", main = "Global Active Power", xlab = "Global Active Power (kilowatts)")
dev.off()