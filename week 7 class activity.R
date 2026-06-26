names =c("Carrol","Mike","John")
gender = c("Female", "Male", "Male")
height = c(160, 175, 173)
weight = c(49, 89, 77)
age = c(35, 36, 41)
df = data.frame(names,gender,height,weight,age)
print("Before Adding:\n")

newdf = rbind(df, data.frame(names = "Lina",
                             gender="Female",
                             height=156,
                             weight=56,
                             age=23))
print(newdf)

gender = c("Female", "Male", "Male","Female","Male")
height = c(160, 175, 173,156,169)
weight = c(49, 89, 77,56,81)
age = c(35, 36, 41,23, 28)
names =c("Carrol","Mike","John","Suuria","Malik")
df1 = data.frame(names,gender,height,weight,age)

states = c("Selangor","Perak","Melaka")
names = c("Carrol","John","Malik")
df2 = data.frame(names, states)

dfMerge = merge(df1, df2, by = "names", all= TRUE)
newDf2=newDf[-2,]



install.packages("readr")
library("readr")
data_cov<-read.csv('C:\Users\PANG YIYANG\Desktop\DS lab\my_covid.csv')
names =c("Carrol","Mike","John")
gender = c("Female", "Male", "Male")
height = c(160, 175, 173)
weight = c(49, 89, 77)
age = c(35, 36, 41)
savedf = data.frame(names,gender,height,weight,age)
write.csv (savedf, "C:\Users\PANG YIYANG\Desktop\DS lab\my_covid.csv")
#creating a vector of integers having NAs.
a<-c(1:5, rep(NA,3),6:10)
a
sum(a)
b<-a[!is.na(a)]
b
sum(b)
a<-c(seq(1,10,3), rep(NA,4), seq(10,2,-2))
a
a[is.na(a)]<-0
a

df <- read.csv("C:\Users\PANG YIYANG\Desktop\DS lab\NAexample.csv")
is.na(df) 
is.na(df[“VarA”])
mean(df$VarA)
mean(na.omit(df$VarA))

library(readr)
df <- read.csv("C:\Users\PANG YIYANG\Desktop\DS lab\NAexample.csv")
View(df)
df$VarA[is.na(df$VarA)]<-sd(na.omit(df$VarA))
df$VarB[is.na(df$VarB)]<-mean(df$VarB,na.rm=TRUE)
df$VarC[is.na(df$VarC)]<-median(df$VarC,na.rm=TRUE)
View(df)

library(readr)
df1 <- read.csv("C:\Users\PANG YIYANG\Desktop\DS lab\duplicate.csv")
df_cleaned <- df1
df_removed <- data.frame()
rows_to_remove <- c()
for (i in 2:nrow(df1))
{
  for (j in 1:(i-1))
  {
    if (df1[i, 2] == df1[j, 2])
    {
      rows_to_remove <- c(rows_to_remove, i)
    }
  }
}
df_cleaned <- df_cleaned[-rows_to_remove, ]
View(df_cleaned)
write.csv (df_cleaned , file= 'df_cleanedStudent.csv')
library(readr)
df1 <- read.csv("C:\Users\PANG YIYANG\Desktop\DS lab\duplicate.csv")
df2 <- unique(df1)
View(df2)