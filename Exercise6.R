#Setting working directory
rm(list=ls()) #remove global environment
setwd("/Users/Ashley/Documents/Biocomputing_2018/Biocomp-Fall2018-181005-Exercise6")

iris=read.csv("iris.csv", header = TRUE)

#1
#Head function
num_head = 5

head(iris,num_head)

#2
#Last 2 rows and columns
tail(iris[4:5],2)

#Number of observations for each species included in the data set
nrow(iris[iris$Species == "setosa", 1:5])
nrow(iris[iris$Species == "versicolor" , 1:5])
nrow(iris[iris$Species == "virginica" , 1:5])

#Rows with Sepal.Width > 3.5
iris[iris$Sepal.Width > 3.5, 1:5]

#Write "setosa.csv" comma-delimited file
write.csv(iris[iris$Species=="setosa",1:5], file = "setosa.csv")

#Calculate the mean, minimum, and maximum of Petal.Length for observations of virginica
virginica_data <- iris[iris$Species == "virginica", 1:5]
mean(virginica_data$Petal.Length)
min(virginica_data$Petal.Length)    
max(virginica_data$Petal.Length)
