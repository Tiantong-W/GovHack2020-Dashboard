setwd("/Users/claudia/Downloads")
data = read.csv(file="Daily_VIC_sinceMarch.csv")
summary(data)
Oversea = sum(data$Overseas)

KnownLocal = sum(data$Known.Local)
UnknownLocal = sum(data$Unknown.Local..Community.)
UnderInv = sum(data$Under.Investigation)
Oversea = sum(data$Overseas)

statstable<-rbind(KnownLocal,
                  UnknownLocal,
                  Oversea,
                  UnderInv
                  )

rownames(statstable)<-c("KnownLocal","UnknownLocal","Oversea","UnderInvestigation")
colnames(statstable)<-"NumberofPeople"
print(round(statstable,3))
write.csv(statstable, file="covid-vic-bytype.csv")

----------------------------------
data2=read.csv(file="PSP_Boundaries.csv")
data2$Country="Australia"
data2$State="Victoria"
head(data2)
write.csv(data2, file="MapVic1.csv")
