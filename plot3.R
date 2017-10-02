power<-read.table("household_power_consumption.txt",header=T,sep=";",
                  stringsAsFactors = F,dec=".")

febtot<-power[66637:69516,] ##Feb 1 and Feb 2, 2007

sub1<-as.numeric(febtot$Sub_metering_1)
sub2<-as.numeric(febtot$Sub_metering_2)
sub3<-as.numeric(febtot$Sub_metering_3)

dt<-strptime(paste(febtot$Date,febtot$Time,sep=" "),
             "%d/%m/%Y %H:%M:%S") 

png("plot3.png",width=480,height=480)

plot(dt,sub1,type="l",xlab="",ylab="Energy Submetering")
lines(dt,sub2,type="l",col="red")
lines(dt,sub3,type="l",col="blue")
legend("topright",c("Sub_Metering_1","Sub_Metering_2","Sub_Metering_3"),
       col=c("black","red","blue"),lty=1,lwd=2)

dev.off()
