# Basics of R programming
# Importing our data set.
data<- read.csv("/Users/gunjan/Documents/socialAnxiety.csv")
# printing top 6 rows of our dataset
head(data)
# printing column headings
colnames(data)
# Deleting columns that we don't need
data <- data[-c(1, 10, 11, 12)]
head(data)
# Changing column headings
colnames(data)[5]<- "Hours spent on social media"
colnames(data)[6]<- "Being the center of attention"
colnames(data)[7]<- "Working while being observed"
colnames(data)[8]<- "Talking to a stranger"
colnames(data)[9]<- "Feeling anxious in public"
colnames(data)
head(data)
femaleData<- data[data$Gender == "Female",]
maleData<- data[data$Gender == "Male",]
View(data)
View(femaleData)
View(maleData)
