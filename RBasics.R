# Basics of R programming
# Importing our data set.
data<- read.csv("/Users/gunjan/Documents/socialAnxiety.csv")
# printing top 6 rows of our dataset
head(data)
# printing column headings
colnames(data)
# Changing column headings
colnames(data)[6]<- "Hours spent on social media"
colnames(data)[7]<- "Being the center of attention"
colnames(data)[8]<- "Working while being observed"
colnames(data)[9]<- "Talking to a stranger"
colnames(data)[12]<- "Feeling anxious before social situations"
# Deleting columns that we don't need
data <- data[-c(1, 10, 11)]
colnames(data)
head(data)
