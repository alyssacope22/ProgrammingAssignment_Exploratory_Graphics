power<-read.table("household_power_consumption.txt",header=T,sep=";",
                  stringsAsFactors = F,dec=".")

febtot<-power[66637:69516,] ##Feb 1 and Feb 2, 2007
globpower<-as.numeric(febtot$Global_active_power)

dt<-strptime(paste(febtot$Date,febtot$Time,sep=" "),
                     "%d/%m/%Y %H:%M:%S") 

png("plot2.png",width=480,height=480)

plot(dt,globpower,type="l",xlab="",
     ylab="Global Active Power (kilowatts)")

dev.off()


 
