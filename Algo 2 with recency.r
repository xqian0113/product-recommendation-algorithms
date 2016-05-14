#Algo 2, transaction based#

##Recency score>-1##
#Recommend popular items if it generates less than 3 items to a customer

# Set data path as per your data file
setwd("C:/Users/endai/Desktop/Product_Recommendation")

# If not installed, first install following two package in R
install.packages("recommenderlab")
install.packages("reshape2")

library(recommenderlab)
library(reshape2)

# Read quantity file along with header
qt<-read.csv("frette recency.csv",header=TRUE)
c_list<-read.csv("frette customer list.csv",header=TRUE)

# Just look at first few lines of this file
head(qt)
head(c_list)

g<-acast(qt, visitorID ~ productName,mean,value.var='Recency.Score')

# Convert it as a matrix
R<-as.matrix(g)

# Convert R into realRatingMatrix data structure
#   realRatingMatrix is a recommenderlab sparse-matrix like data-structure
# Here we deem the quantity as rating
r <- as(R, "realRatingMatrix")

# Create a recommender object (model)

rec=Recommender(r[1:nrow(r)],method="IBCF", param=list(minRating=-1))
rec1=Recommender(r[1:nrow(r)],method="POPULAR")

 ############Create predictions#############################
#customer<-c_list[which(c_list$visitorID=='55c905f6273229e2688b4948'),]
#customerID<-customer[1,1]
#customer

customers<-c_list[1:10,]
#customers<-c_list[which(c_list$visitorID=='55c905f6273229e2688b4948'),]
items<-list(1:nrow(customers))
items1<-list(1:nrow(customers))
for (i in 1:nrow(customers)) #for each customer
{
	customerID<-customers[i,1]
	customer<-customers[i,]

	#recommend 5 items to Customers
	recommended.items<- predict(rec, r[customerID,], n=5)
	items[[i]]<-as(recommended.items, "list")
	recommended.items1<-predict(rec1,r[customerID,], n=5)
	items1[[i]]<-as(recommended.items1,"list")

	if (sum(sapply(items[[i]],length))<3) {items[[i]]<-items1[[i]]}
}

lists<-list(1:nrow(customers))
for (i in 1:nrow(customers))
{
	lists[[i]]<-list(customers[i,],items[[i]])
} 

#customers
#items
lists
