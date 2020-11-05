#install.packages("readxl")
library("readxl") 

italy<- read_excel("Italy.xlsm",sheet="t")
#march02<-unname(march02)
italy<-italy[,-1]
dfnew<-data.frame(cbind(italy[,1:3],italy[,4:5]))
for (i in seq(6,10,by=2)) {
  df<-cbind(italy[,1:3],italy[,i:(i+1)])
  dfnew<-rbind(dfnew,setNames(df,names(dfnew)))
}

install.packages("writexl")
library("writexl")
write_xlsx(dfnew, "C:\\Users\\jliao\\Desktop\\Italy1.xlsm")
