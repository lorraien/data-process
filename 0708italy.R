library("readxl") 

italy<- read_excel("combine.xlsx")

dfnew<-data.frame(cbind(italy[,1:4],italy[,5:6]))
for (i in seq(7,11,by=2)) {
  df<-cbind(italy[,1:4],italy[,i:(i+1)])
  dfnew<-rbind(dfnew,setNames(df,names(dfnew)))
}

#install.packages("writexl")
library("writexl")
write_xlsx(dfnew, "C:\\Users\\jliao\\Desktop\\7820DB.xlsx")
