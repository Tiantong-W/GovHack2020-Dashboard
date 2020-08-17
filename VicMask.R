setwd("/Users/claudia/Desktop/GovHack/SelfData/citizen_science")
# install.packages("jsonlite")
# install.packages("writexl")

# Load the package required to read JSON files.
library("jsonlite")
library("writexl")


# Give the input file name to the function.
result1 <- fromJSON("id_timeStamp1.json")
result2 <- fromJSON("id_timeStamp2.json")
result3 <- fromJSON( "id_timeStamp3.json")
result4 <- fromJSON( "id_timeStamp4.json")
result5 <- fromJSON( "id_timeStamp5.json")
result6 <- fromJSON("id_timeStamp6.json")
result7 <- fromJSON("id_timeStamp7.json")
result8 <- fromJSON( "id_timeStamp8.json")
result9 <- fromJSON( "id_timeStamp9.json")
result10 <- fromJSON( "id_timeStamp10.json")
#postcode <- fromJSON( "Postcode-VIC-Heatmap.json")
postcode <- fromJSON( "postcode-data.json")

# processing postcode file
json_data_frame <- as.data.frame(postcode)
head(json_data_frame)
postcode_new=head(json_data_frame,10000)
head(postcode_new)


data=rbind(result1,result2,result3,result4,result5,
           result6,result7,result8,result9,result10)
# Print the result.
head(data)
names(data)
rows=dim(data)[1]

data$Date=paste (substr(data$timestamp, start = 6, stop =7),
                 substr(data$timestamp, start = 9, stop =10),
                 substr(data$timestamp, start = 1, stop =4),
                 sep = "/")
# data$Date=paste (toString(sample(6:7, size=1,replace = TRUE)),
#                  toString(sample(1:30, size=1,replace = TRUE)),
#                  "2020", 
#                  sep = "/")
data$Time=substr(data$timestamp, start = 11, stop=19)
data$Hour=as.numeric(substr(data$Time, start = 1, stop=3))
head(data)

data$NumberPeopleOut = sample(2200, size = nrow(data), replace = TRUE)
data$NumberofMaskWearers=round(data$NumberPeopleOut*runif(nrow(data),min=0,max=1), digits=0)
data$NumberofPeoplewithNoMasks=data$NumberPeopleOut - data$NumberofMaskWearers

data$PortionofMaskWearers=data$NumberofMaskWearers/data$NumberPeopleOut
data$PortionofNoMasks = 1-data$PortionofMaskWearers
data$Country="Australia"


data$Postcode=postcode_new$list.postcode
data$Longtitude=postcode_new$list.longitude
data$Latitude=postcode_new$list.latitude

dim(data)
head(data)
summary(data)

colnames(data)
names(data)[names(data) == "NumberPeopleOut"] <- "Number People Out"
names(data)[names(data) == "NumberofPeoplewithNoMasks"] <- "Number of People with No Masks"
names(data)[names(data) == "PortionofNoMasks"] <- "Portion of No Masks"
names(data)[names(data) == "NumberofMaskWearers"] <- "Number of Mask Wearers"
names(data)[names(data) == "PortionofMaskWearers"] <- "Portion of Mask Wearers"

head(data)

#write.csv(data, file="Mask-cleandata.csv")
write_xlsx(data,"Mask-cleandata.xlsx")
write_json(data,"Mask-cleandata.json")




