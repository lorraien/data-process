library("readxl") 

  
df1<- read_excel("01.xlsm")
df2<- read_excel("02.xlsm")
df3<- read_excel("03.xlsm")
df4<- read_excel("04.xlsm")
df5<- read_excel("05.xlsm")
df6<- read_excel("06.xlsm")


df<-rbind(df,setNames(df6,names(df1)))
          
          ,setNames(df3names(df1)),setNames(df4,names(df1)),
                        setNames(df5,names(df1)),setNames(df6,names(df1)))
                                 
                                 
  df1<-rbind(dfnew,setNames(df,names(dfnew)))
}

install.packages("writexl")
library("writexl")
write_xlsx(df, "C:\\Users\\jliao\\Desktop\\Sim2020.xls")
