# For this exercise, you will use the following dataset, 2014 American Community Survey. This data is maintained by the US Census Bureau and are designed to show how communities are changing. Through asking questions of a sample of the population, it produces national data on more than 35 categories of information, such as education, income, housing, and employment. For this assignment, you will need to load and activate the ggplot2 package. For this deliverable, you should provide the following - make sure you answer each question asked!

library(ggplot2)
library(readxl)
setwd("C:/Users/brean/OneDrive/Desktop/NucampFolder/projects/dsc520-1")

gfg_data=read_csv('data/acs-14-1yr-s0201.csv')
gfg_data

# List the name of each field and what you believe the data type and intent is of the data included in each field (Example: Id - Data Type: varchar (contains text and numbers) Intent: unique identifier for each row)

ID: varchar: unique identifier
ID2: num: 2nd unique identifier 
geography: address: location of data
popGroupID: num: connector to POPGround
POPGroup: varchar: name "total population" for data
RacesReported: num: total number of races listed
HSDegree: num: percentages that meet criteria
BachDegree: num: percentages that meet criteria

# Run the following functions and provide the results: str(); nrow(); ncol()
str(gfg_data)
nrow(gfg_data)
ncol(gfg_data)

# Create a Histogram of the HSDegree variable using the ggplot2 package.

ggplot(gfg_data, aes(HSDegree)) + geom_density()

# Set a bin size for the Histogram that you think best visuals the data (the bin size will determine how many bars display and how wide they are)

ggplot(gfg_data, aes(HSDegree)) + geom_histogram(bins = 100)

# Include a Title and appropriate X/Y axis labels on your Histogram Plot.

ggplot(gfg_data, aes(HSDegree)) + geom_histogram(bins = 100) + ggtitle("Percentage of populations with High School Degree") + xlab("percentages") + ylab("Community")

# Answer the following questions based on the Histogram produced:
# Based on what you see in this histogram, is the data distribution unimodal?

This histogram would be unimodel because there is a single peak. 

# Is it approximately symmetrical?

It is not symmetrical, but skewed

# Is it approximately bell-shaped?

No, it is skewed to the right.

# Is it approximately normal?

no, it is not a normal histrogram shape. 

# If not normal, is the distribution skewed? If so, in which direction?

skewed right. 

# Include a normal curve to the Histogram that you plotted.

ggplot(gfg_data, aes(HSDegree)) + geom_histogram(aes(y =..density..), bins = 100) + ggtitle("Percentage of populations with High School Degree") + xlab("percentages") + ylab("Community") + stat_function(fun = dnorm, args = list(mean = mean(gfg_data$HSDegree), sd = sd(gfg_data$HSDegree)), col = "#1b98e0",size = 5)

# Explain whether a normal distribution can accurately be used as a model for this data.

A normal distribution is a bell curve with a 68-95-99.7 distribution. This data is clearly skewed right with an uneven distribution. We can see in the attached graph how the bell curve does not align with the histogram data at all. 

# Create a Probability Plot of the HSDegree variable.

ggplot(gfg_data, aes(sample = HSDegree)) + stat_qq() 
#I could not find an example of a probability plot anywhere in the reading. The above code is what I found when I googled it but, because of the following questions I don't think that this is correct. 


# Answer the following questions based on the Probability Plot:
# Based on what you see in this probability plot, is the distribution approximately normal? Explain how you know.I tried to reach out to a specific classmate and post on the boards but no one answered me. 

#I don't think I have the correct probability plot so I can't answer this question

# If not normal, is the distribution skewed? If so, in which direction? Explain how you know.

#I don't think I have the correct probability plot so I can't answer this question

# Now that you have looked at this data visually for normality, you will now quantify normality with numbers using the stat.desc() function. Include a screen capture of the results produced.

stat.desc(gfg_data, basic = TRUE, norm = FALSE)


# In several sentences provide an explanation of the result produced for skew, kurtosis, and z-scores. In addition, explain how a change in the sample size may change your explanation?

#I did not get a result for skew, kurtosis or z-score when I ran the stat.desc function. Did I run it incorrectly? I looked all through the reading and didn't find anymore explanation than what I did. 