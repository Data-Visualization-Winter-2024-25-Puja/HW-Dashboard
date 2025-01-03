
# clean memory ------------------------------------------------------------
rm(list = ls())


# read in data ------------------------------------------------------------
#set working directory

filename="theFile.csv"
mydata=read.csv(filename)


# see data ----------------------------------------------------------


head(mydata)

 

# see data types ----------------------------------------------------------

str(mydata)

# deliverable 1 ----------------------------------------------------------
library(ggplot2)

base= ggplot(data=mydata) 
del1Draft= base + 
  geom_bar(aes(x = LocaleType, fill = LocaleType), stat = "count") +
  labs(
    title = "Bar Chart of LocaleType",
    subtitle = "The distribution of different Locale Types in the dataset",
    x = "Locale Type",
    y = "Count",
    caption = "Source: Instructions given at Magallanes Reyes (2022), and Aden-Buie et al. (2024)."
  ) +
  theme_minimal() +
  
  annotate("text", x = 3, y = 820, label = "Max count in Suburb", color = "blue", size = 4)
  
del1Draft


# save del1Draft ----------------------------------------------------------
saveRDS(del1Draft, file = "del1Draft.rds")


# deliverable 2 ----------------------------------------------------------

del2Draft <- ggplot(data = mydata, aes(x = Student.Teacher.Ratio)) +
  geom_histogram(binwidth = 5, fill = "steelblue", color = "black") +
  labs(
    title = "Distribution of Student.Teacher.Ratio",
    subtitle = "A visualization of the distribution of the Student.Teacher.Ratio variable",
    x = "Student.Teacher.Ratio",
    y = "Count",
    caption = "Source: Instructions given at Magallanes Reyes (2022), and Aden-Buie et al. (2024)."
  ) +
  theme_minimal() +
annotate("text", x = 100, y = 1000, label = "Max count for the ratio is 1030", color = "blue", size = 4)

del2Draft

# save del2Draft ----------------------------------------------------------
saveRDS(del2Draft, file = "del2Draft.rds")



