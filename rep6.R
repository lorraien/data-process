#install.packages("readxl")
library("readxl") 
#march02 <- read.csv2("R test.csv",header= FALSE,sep = ",")
march02 <- read_excel("R test.xlsm")
march02<-unname(march02)
dfnew<-data.frame(cbind(march02[,1:5],march02[,6:7]))
for (i in seq(8,16,by=2)) {
  df<-cbind(march02[,1:5],march02[,i:(i+1)])
  dfnew<-rbind(dfnew,setNames(df,names(dfnew)))
}

install.packages("writexl")
library("writexl")
write_xlsx(dfnew, "C:\\Users\\jliao\\Desktop\\usmarch.xlsm")
