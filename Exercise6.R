#Setting working directory
rm(list=ls()) #remove global environment
setwd("/Users/Ashley/Documents/Biocomputing_2018/Biocomp-Fall2018-181005-Exercise6")

iris=read.csv("iris.csv", header = TRUE)

#1
#Head function
num_head = 5

head(iris,num_head)
### Brittni: We wanted you to recreate the functionality of head without using it. I took off 0.1 points, because you did still assign variables. What we were looking for was something like:
## iris[1:num_head,]

#2
#Last 2 rows and columns
tail(iris[4:5],2)

#Number of observations for each species included in the data set
nrow(iris[iris$Species == "setosa", 1:5])
nrow(iris[iris$Species == "versicolor" , 1:5])
nrow(iris[iris$Species == "virginica" , 1:5])

### Brittni: Just as a note, you don't need to explicitly say 1:5. If you want all the columns, you can leave it blank
## nrow(iris[iris$Species == "setosa", ])

#Rows with Sepal.Width > 3.5
iris[iris$Sepal.Width > 3.5, 1:5]

#Write "setosa.csv" comma-delimited file
write.csv(iris[iris$Species=="setosa",1:5], file = "setosa.csv")

#Calculate the mean, minimum, and maximum of Petal.Length for observations of virginica
virginica_data <- iris[iris$Species == "virginica", 1:5]
mean(virginica_data$Petal.Length)
min(virginica_data$Petal.Length)    
max(virginica_data$Petal.Length)
