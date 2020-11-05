library("readxl") 
us19 <- read_excel("C:/Users/jliao/Desktop/19US RMG/combined_file.xlsx")
us19<-unname(us19)
dfnew<-data.frame(cbind(us19[,1:6],us19[,7:8]))
for (i in seq(9,17,by=2)) {
  df<-cbind(us19[,1:6],us19[,i:(i+1)])
  dfnew<-rbind(dfnew,setNames(df,names(dfnew)))
}

#install.packages("writexl")
library("writexl")
write_xlsx(dfnew, "C:\\Users\\jliao\\Desktop\\19US RMG.xlsx")
