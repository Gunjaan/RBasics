# Basics of R programming

# Importing our data set.
data <- read.csv("/Users/gunjan/Documents/socialAnxiety.csv")

# printing top 6 rows of our dataset
head(data)

#printing the number of rows and columns
print(ncol(data))
print(nrow(data))

# printing column headings
colnames(data)

# Deleting columns that we don't need
data <- data[-c(1, 10, 11, 12)]
head(data)

# Changing column headings
colnames(data)[5] <- "Hours.spent.on.social.media"
colnames(data)[6] <- "Being.the.center.of.attention"
colnames(data)[7] <- "Working.while.being.observed"
colnames(data)[8] <- "Talking.to.a.stranger"

colnames(data)
head(data)

# Creating a new data set having only females and males.
femaleData <- data[data$Gender == "Female",] #contains only females
maleData <- data[data$Gender == "Male",]     #contains only males

# To view the new datasets in console
View(femaleData)
View(maleData)

# Creating a new data set of people below 25y/o.
below25 <- data[data$Age < 25,]
# people below 25y/o, with only the specified columns in the table.
below25_a <- data[data$Age < 25, c(1,3,4)] #(contains only column no. 1,3,4)
# people below 25y/o, without the specified columns in the table.
below25_b <- data[data$Age < 25, -c(2,4:7)] #(deletes column no. 2,4,5,6,7)

# Sorting a dataframe:
sorted1 <- data[order(data$Age),]  # Ascending order (Age)
sorted2 <- data[order(data$Age, decreasing = TRUE),]  #Descending order (Age)

#To create a subset:
subData1 <- subset(data, Hours.spent.on.social.media == "Less than 2 hours per day")
subData2 <- subset(data, Gender == "Female" & Hours.spent.on.social.media == "Less than 2 hours per day")

# R STATISTICS
# Finding maximum and minumum
min(data$Being.the.center.of.attention)
max(data$Being.the.center.of.attention)
min(data$Age)
max(data$Age)

# To find the Mean, Mode, Standard deviation, and Variance
mean(data$Talking.to.a.stranger) # Mean
median(data$Talking.to.a.stranger) # Median
sd(data$Talking.to.a.stranger)  #Standard deviation
var(data$Talking.to.a.stranger) # Variance
mad(data$Talking.to.a.stranger) # mean standard deviation

# Finding the range
range(data$Age)
range(data$Working.while.being.observed)

#quantile function tells you how much of your data lies below a certain value.
quantile(data$Being.the.center.of.attention)
quantile(data$Working.while.being.observed)
quantile(data$Talking.to.a.stranger)
