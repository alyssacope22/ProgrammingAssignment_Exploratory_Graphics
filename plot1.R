power<-read.table("household_power_consumption.txt",header=T,sep=";",
                  stringsAsFactors = F,dec=".")

febtot<-power[66637:69516,] ##Feb 1 and Feb 2, 2007

globpower<-as.numeric(febtot$Global_active_power)

png("plot1.png",width=480,height=480)
hist(globpower,col="red",main="Global Active Power", 
     xlab="Global Active Power (kilowatts)")

dev.off()

