bike_theft = read.csv("BikeTheftLog.csv")

SwigCount = 0
DunneCount = 0
GrahamCount = 0
CampisiCount = 0
CasaCount = 0
WalshCount = 0
McLaughlinCount = 0
NobiliCount = 0
SanfilippoCount = 0
SobratoCount = 0
VillasCount = 0
OtherCount = 0

for (n in 1:210){
  if(grepl("Swig", bike_theft$LOCATION[n])){
    SwigCount = SwigCount + 1
  }else if(grepl("Dunne", bike_theft$LOCATION[n])){
    DunneCount = DunneCount + 1
  }else if(grepl("Graham", bike_theft$LOCATION[n])){
    GrahamCount = GrahamCount + 1
  }else if(grepl("Campisi", bike_theft$LOCATION[n])){
    CampisiCount = CampisiCount + 1
  }else if(grepl("Casa", bike_theft$LOCATION[n])){
    CasaCount = CasaCount + 1
  }else if(grepl("Walsh", bike_theft$LOCATION[n])){
    WalshCount = WalshCount + 1
  }else if(grepl("McLaughlin", bike_theft$LOCATION[n])){
    McLaughlinCount = McLaughlinCount + 1
  }else if(grepl("Nobili", bike_theft$LOCATION[n])){
    NobiliCount = NobiliCount + 1
  }else if(grepl("Sanfilippo", bike_theft$LOCATION[n])){
    SanfilippoCount = SanfilippoCount + 1
  }else if(grepl("Sobrato", bike_theft$LOCATION[n])){
    SobratoCount = SobratoCount + 1
  }else if(grepl("Villas", bike_theft$LOCATION[n])){
    VillasCount = VillasCount + 1
  }else{
    OtherCount = OtherCount + 1
  }
}

#Swig has the most bike thefts from the dorms with 23 bike thefts.

install.packages('lubridate')
library('lubridate')

x <-mdy(bike_theft$DATE)
Day <- wday(x)
days_of_week = seq(1:7)
Day = as.data.frame(Day)
Day$count = 1

freq_days = aggregate(Day$count, list(Day$Day), sum)

#Mondays have the most thefts, with 40 bike thefts.

y <-mdy(bike_theft$DATE)
Month <- month(y)
months_of_year = seq(1:12)
Month = as.data.frame(Month)
Month$count = 1

freq_month = aggregate(Month$count, list(Month$Month), sum)

#February had the most thefts, with 31 bike thefts.



