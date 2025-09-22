#####################
# load libraries
# set wd
# clear global .envir
#####################

# remove objects
rm(list=ls())
# detach all libraries
detachAllPackages <- function() {
  basic.packages <- c("package:stats", "package:graphics", "package:grDevices", "package:utils", "package:datasets", "package:methods", "package:base")
  package.list <- search()[ifelse(unlist(gregexpr("package:", search()))==1, TRUE, FALSE)]
  package.list <- setdiff(package.list, basic.packages)
  if (length(package.list)>0)  for (package in package.list) detach(package,  character.only=TRUE)
}
detachAllPackages()

# load libraries
pkgTest <- function(pkg){
  new.pkg <- pkg[!(pkg %in% installed.packages()[,  "Package"])]
  if (length(new.pkg)) 
    install.packages(new.pkg,  dependencies = TRUE)
  sapply(pkg,  require,  character.only = TRUE)
}

# here is where you load any necessary packages
# ex: stringr
# lapply(c("stringr"),  pkgTest)

lapply(c(),  pkgTest)

#####################
# Problem 1
#####################

y <- c(105, 69, 86, 100, 82, 111, 104, 110, 87, 108, 87, 90, 94, 113, 112, 98, 80, 97, 95, 111, 114, 89, 95, 126, 98)

# 1. Find a 90% confidence interval for the average student IQ in the school.


# 2. Next, the school counselor was curious whether the average student IQ in her school 
#    is higher than the average IQ score (100) among all the schools in the country.
#    Using the same sample, conduct the appropriate hypothesis test with α = 0.05.



#####################
# Problem 2
#####################

expenditure <- read.table("https://raw.githubusercontent.com/ASDS-TCD/StatsI_2025/main/datasets/expenditure.txt", header=T)

# Please plot the relationships among Y, X1, X2, and X3? What are the correlations among them 
# (you just need to describe the graph and the relationships among them)?



# Please plot the relationship between Y and Region? On average, 
# which region has the highest per capita expenditure on housing assistance?



# Please plot the relationship between Y and X1? Describe this graph and the relationship.
# Reproduce the above graph including one more variable Region and display
# different regions with different types of symbols and colors.
