#Dataframe Manipulation
install.packages("dplyr")
library(dplyr)

library(dplyr)
library(readr)
student_data<- read.csv("C:\\Users\\PANG YIYANG\\Desktop\\DS lab\\student_data.csv")
Student_fail<- Student_fail<- student_data[student_data$final_exam_mark< 40,] 
View(Student_fail)
Student_fail<- student_data %>% filter(final_exam_mark< 40)
View(Student_fail)

library(dplyr)
library(readr)
student_data<- read.csv("C:\\Users\\PANG YIYANG\\Desktop\\DS lab\\student_data.csv")
mydata<- arrange(filter(student_data,final_exam_mark> 40),final_exam_mark)
View(mydata)
mydata1<- student_data %>% filter(final_exam_mark > 40) %>% 
  arrange(desc(final_exam_mark))
View(mydata1)

library(dplyr)
library(readr)
student_data<- read.csv("C:\\Users\\PANG YIYANG\\Desktop\\DS lab\\student_data.csv")
mydata2 <- student_data%>% select(student_id,coursework_mark, final_exam_mark)
View(mydata2)
mydata3<- student_data[,c("student_id", "coursework_mark", 
                            "final_exam_mark" )]
View(mydata3)

library(dplyr)
library(readr)
student_data<- read.csv("C:\\Users\\PANG YIYANG\\Desktop\\DS lab\\student_data.csv")
mydata4 = student_data%>% mutate(Total_Mark=(coursework_mark + 
                                               final_exam_mark/200*100))
View(mydata4)



#Descriptive Analytics
data <- iris
head(data)
tail(data)
str(data)
min(data$Sepal.Length) 
max(data$Sepal.Length) 
range(data$Sepal.Length)
range(data$Sepal.Length)[1] 
range(data$Sepal.Length) [2] 
range_val <- range(data$Sepal.Length)
range_val[1]
range_val[2]
sd(data$Sepal.Length) 
var(data$Sepal.Length) 
mean(data$Sepal.Length) 
median(data$Sepal.Length) 
summary(data)
summary(data$Sepal.Length)
A<-c(170.2, 181.5, 188.9, 163.9, 166.4, 163.7, 160.4, 175.8, 181.5)
quantile(A)
sort(A)
quantile(A,0.25)
quantile(A,0.75)
IQR(A)
nrow(data)
nrow(data['Sepal.Length'])
ncol(data)
sum(is.na(data$Sepal.Length))
sum(data$Sepal.Length<0)

hist(iris$Sepal.Length,
     main = "Histogram of Sepal Length",
 xlab = "Sepal Length (cm)",
 ylab = "Frequency", 
 col = "lightblue", 
 border = "black")
 boxplot(Sepal.Length ~ Species,
 data = iris,
 main = "Sepal Length by Species",
 xlab = "Species",
 ylab = "Sepal Length (cm)",
 col = c("lightgreen", "lightpink", 
"lightyellow"))
 plot(iris$Sepal.Length, iris$Petal.Length, 
      main = "Sepal Length vs Petal Length", 
      xlab = "Sepal Length (cm)", 
      ylab = "Petal Length (cm)",
      col = as.numeric(iris$Species),
      pch = 19)
 legend("topleft",
        legend = levels(iris$Species),
        col = 1:3, 
        pch = 19)
 
 
 
 #outliters
 data_new<-data
 data_new <- data_new[!data_new<lower_extreme]
 data_new <- data_new[!data_new>upper_extreme]
 data_new
 
 #replace with upper extreme and lower extreme value
 data_new<- data
 avg <- round(mean(data_new))#for the purpose of example we round up value
 data_new[data_new<lower_extreme] <- avg
 data_new[data_new>upper_extreme] <- avg
 data_new