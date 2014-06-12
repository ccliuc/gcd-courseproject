# Question 1
fileUrl <- "https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2Fss06hid.csv"
download.file(fileUrl, destfile="getdata_data_ss06hid.csv")
acs <- read.csv("getdata_data_ss06hid.csv")
agricultureLogical <- acs$ACR == 3 & acs$AGS == 6
which(agricultureLogicial)

# Question 2
library(jpeg)
picture <- readJPEG("getdata_jeff.jpg")
quantile(picture, probs=c(0.3,0.8))

# Question 3
gdp <- read.csv("getdata_data_GDP.csv", skip = 5, nrows = 190, header=F)
edstats <- read.csv ("getdata_data_EDSTATS_Country.csv")
mergedData <- merge(gdp, edstats, by.x="V1", by.y="CountryCode")
orderedData <- mergedData[order(mergedData$V2, decreasing=TRUE), ]
orderedData[13, ]

# Question 4
tapply(mergedData$V2,mergedData$Income.Group,mean)

# Question 5
mergedData$gdpgroups <- cut(mergedData$V2, breaks=quantile(mergedData$V2, probs=c(0,0.2,0.4,0.6,0.8,1.0)))
table(mergedData$gdpgroups,mergedData$Income.Group)



