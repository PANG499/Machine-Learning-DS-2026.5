library(dplyr)
student_data <- read.csv("C:\\Users\\PANG YIYANG\\Desktop\\DS lab\\student_data.csv")

head(student_data)

high_scorers <- student_data %>%
  filter(final_exam_mark > 80)
View(high_scorers)
print(high_scorers)

sorted_by_coursework <- student_data %>%
  arrange(coursework_mark)
View(sorted_by_coursework)

selected_cols <- student_data %>%
  select(student_name, final_exam_mark)
View(selected_cols)

num_rows <- nrow(student_data)
num_cols <- ncol(student_data)
cat("rows number:", num_rows, "\n")
cat("columns number:", num_cols, "\n")

head(student_data)
str(student_data)
summary(student_data)
colnames(student_data)

outliers <- boxplot.stats(student_data$final_exam_mark)$out
cat("The detected outlier value is:", outliers, "\n")
Q1 <- quantile(student_data$final_exam_mark, 0.25)
Q3 <- quantile(student_data$final_exam_mark, 0.75)
IQR_value <- IQR(student_data$final_exam_mark)
lower_bound <- Q1 - 1.5 * IQR_value
upper_bound <- Q3 + 1.5 * IQR_value
cat("lower boundary:", lower_bound, "\n")
cat("upper boundary:", upper_bound, "\n")
outlier_data <- student_data %>%
  filter(final_exam_mark < lower_bound | final_exam_mark > upper_bound)
print(outlier_data)
boxplot(student_data$final_exam_mark,
        main = "Final Exam Mark Boxplot",
        ylab = "Marks",
        col = "lightblue")