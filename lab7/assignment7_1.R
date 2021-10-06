# Load the required libraries
library(arules)
library(arulesViz)
library(datasets)
# Load the data set
data(Groceries)
#Apply apriori algorithm and mine the frequent item sets and association rules. Use
#the default values of minimum support and minimum confidence.
rules <- apriori(Groceries,parameter = list(supp = 0.001, conf = 0.8))
options(digits=2)
#Displays the first 10 strong association rules.
inspect(rules[1:10])
# Create an item frequency plot for the top 20 items
itemFrequencyPlot(Groceries,topN=20,type="absolute")
#Continue the same with minimum support of 20% and the minimum confidence of 50%.
new_rules <- apriori(Groceries,parameter = list(supp = 0.02, conf = 0.5))
options(digits=2)
#Displays the first 10 strong association rules.
inspect(new_rules[1:1])