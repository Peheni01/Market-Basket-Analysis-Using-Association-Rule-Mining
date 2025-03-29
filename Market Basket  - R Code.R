# 1 - Read the data file

marketbasket = read.csv("Associationfinal.csv", header = TRUE, colClasses = "factor")

# 2 - Inspect the dataset

names(marketbasket)
head(marketbasket)
tail(marketbasket)
summary(marketbasket)
str(marketbasket)

# 3 - Check the dimension of the dataset

dim(marketbasket)

# 4 - Plot and explore the dataset

yes = colSums(marketbasket == "Yes")
yes

no = colSums(marketbasket == "No")
no

purchased = rbind(yes,no)
purchased

barplot(purchased, legend = rownames(purchased))
barplot(purchased, beside = T, legend =  rownames(purchased))

# 5 - Install "arules" package

install.packages("arules")
library(arules)

# 6 - Create association rules

rules = apriori(marketbasket)

## This shows that 29339832 rules were generated using the line of code.

# 7 - Getting the summary of these rules 

summary(rules)

# 8 - Inspect the rules 

inspect(rules)

# 9 - The rules are reduced to a smaller number of rules 

rules = apriori(marketbasket, parameter = list(minlen = 2, maxlen = 3, conf = 0.9))

## This has reduced the rules to 62

# 10 - Getting the summary of these rules 

summary(rules)

# 11 - Inspect the rules 

inspect(rules)

# 12 - Get the summary of the dataset 

summary(marketbasket)

# 13 - Plotting to find the most purchased item

barplot(purchased, beside = TRUE, legend = rownames(purchased))
rules <- apriori(marketbasket, 
                 parameter = list(minlen=2, maxlen=3,conf = 0.9), 
                 appearance= list(rhs=c("vegetables=Yes"),default="lhs"))
summary(rules)

# 14 - Inspect the rules 

inspect(rules)

# 15 - To visualize these rules we are using the "arulesViz" package

install.packages("arulesViz")
library(arulesViz)

# 16 - Plot the rules

plot(rules)

# 17 - Plotting the rules in groups 

plot(rules,method = "grouped")

# 18 - Displays the support, confidence, and lift with a scatterplot matrix

plot(rules@quality)

# 19 - This is used to create interactive scatter plot for association rules

rules3 = apriori(marketbasket, 
                 parameter = list(minlen=2,maxlen=3, conf = 0.8),
                 appearance =list(rhs=c("lunch.meat=Yes","all.purpose=Yes","juice=Yes")
                                  ,default="lhs") )
summary(rules3) 

plot(rules3)

plot(rules3, measure = c("support", "lift"), shading = "confidence")

# 20 - This code gets the rules only purchase items "YES" on left hand side and right hand side.

rules2 <- apriori(marketbasket, 
                  parameter = list(minlen=2, maxlen=3,conf = 0.88),
                  appearance =list(rhs=c("vegetables=Yes"),
                                   lhs=c("all.purpose=Yes",
                                         "bagels=Yes",
                                         "juice=Yes",
                                         "lunch.meat=Yes",
                                         "poultry=Yes",
                                         "toilet.paper=Yes",
                                         "yogurt=Yes"),
                                   default="none"))
summary(rules2)

inspect(rules2) 



