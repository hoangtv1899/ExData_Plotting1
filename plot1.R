library("dplyr")
hpc<-read.table("household_power_consumption.txt", sep=";", header = TRUE)
hpc[[1]]<-as.Date(hpc[[1]],"%d/%m/%Y")
Date1<-as.Date("01/02/2007","%d/%m/%Y")
Date2<-as.Date("02/02/2007","%d/%m/%Y")
data<-filter(hpc, Date >= Date1 & Date <= Date2)
data[[3]]<-as.numeric(as.character(data[[3]]))
png("Plot1.png", width=480, height=480)
hist(data$Global_active_power,col="red",xlab="Global Active Power (kilowatts)",main="Global Active Power")
dev.off()
