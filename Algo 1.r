#Algo 1, life stage group based##
#popularity weighted by recency#

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

qt_na<-qt
g_na<-acast(qt_na,visitorID~productName,mean,value.var='Recency.Score')
R_na<-as.matrix(g_na)
r_na <- as(R_na, "realRatingMatrix")
rec_na=Recommender(r_na[1:nrow(r_na)],method="POPULAR")

qt_01Y<-qt[which(qt$lifestageID=='01Y'),]
g_01Y<-acast(qt_01Y,visitorID~productName,mean,value.var='Recency.Score')
R_01Y<-as.matrix(g_01Y)
r_01Y <- as(R_01Y, "realRatingMatrix")
rec_01Y=Recommender(r_01Y[1:nrow(r_01Y)],method="POPULAR")

qt_02Y<-qt[which(qt$lifestageID=='02Y'),]
g_02Y<-acast(qt_02Y,visitorID~productName,mean,value.var='Recency.Score')
R_02Y<-as.matrix(g_02Y)
r_02Y <- as(R_02Y, "realRatingMatrix")
rec_02Y=Recommender(r_02Y[1:nrow(r_02Y)],method="POPULAR")

qt_03X<-qt[which(qt$lifestageID=='03X'),]
g_03X<-acast(qt_03X,visitorID~productName,mean,value.var='Recency.Score')
R_03X<-as.matrix(g_03X)
r_03X <- as(R_03X, "realRatingMatrix")
rec_03X=Recommender(r_03X[1:nrow(r_03X)],method="POPULAR")

qt_04X<-qt[which(qt$lifestageID=='04X'),]
g_04X<-acast(qt_04X,visitorID~productName,mean,value.var='Recency.Score')
R_04X<-as.matrix(g_04X)
r_04X <- as(R_04X, "realRatingMatrix") 
rec_04X=Recommender(r_04X[1:nrow(r_04X)],method="POPULAR")

qt_05X<-qt[which(qt$lifestageID=='05X'),]
g_05X<-acast(qt_05X,visitorID~productName,mean,value.var='Recency.Score')
R_05X<-as.matrix(g_05X)
r_05X <- as(R_05X, "realRatingMatrix") 
rec_05X=Recommender(r_05X[1:nrow(r_05X)],method="POPULAR")

qt_06X<-qt[which(qt$lifestageID=='06X'),]
g_06X<-acast(qt_06X,visitorID~productName,mean,value.var='Recency.Score')
R_06X<-as.matrix(g_06X)
r_06X <- as(R_06X, "realRatingMatrix") 
rec_06X=Recommender(r_06X[1:nrow(r_06X)],method="POPULAR")

qt_07X<-qt[which(qt$lifestageID=='07X'),]
g_07X<-acast(qt_07X,visitorID~productName,mean,value.var='Recency.Score')
R_07X<-as.matrix(g_07X)
r_07X <- as(R_07X, "realRatingMatrix") 
rec_07X=Recommender(r_07X[1:nrow(r_07X)],method="POPULAR")

qt_08X<-qt[which(qt$lifestageID=='08X'),]
g_08X<-acast(qt_08X,visitorID~productName,mean,value.var='Recency.Score')
R_08X<-as.matrix(g_08X)
r_08X <- as(R_08X, "realRatingMatrix") 
rec_08X=Recommender(r_08X[1:nrow(r_08X)],method="POPULAR")

qt_09B<-qt[which(qt$lifestageID=='09B'),]
g_09B<-acast(qt_09B,visitorID~productName,mean,value.var='Recency.Score')
R_09B<-as.matrix(g_09B)
r_09B <- as(R_09B, "realRatingMatrix") 
rec_09B=Recommender(r_09B[1:nrow(r_09B)],method="POPULAR")

qt_10B<-qt[which(qt$lifestageID=='10B'),]
g_10B<-acast(qt_10B,visitorID~productName,mean,value.var='Recency.Score')
R_10B<-as.matrix(g_10B)
r_10B <- as(R_10B, "realRatingMatrix") 
rec_10B=Recommender(r_10B[1:nrow(r_10B)],method="POPULAR")

qt_11B<-qt[which(qt$lifestageID=='11B'),]
g_11B<-acast(qt_11B,visitorID~productName,mean,value.var='Recency.Score')
R_11B<-as.matrix(g_11B)
r_11B <- as(R_11B, "realRatingMatrix") 
rec_11B=Recommender(r_11B[1:nrow(r_11B)],method="POPULAR")

qt_12B<-qt[which(qt$lifestageID=='12B'),]
g_12B<-acast(qt_12B,visitorID~productName,mean,value.var='Recency.Score')
R_12B<-as.matrix(g_12B)
r_12B <- as(R_12B, "realRatingMatrix") 
rec_12B=Recommender(r_12B[1:nrow(r_12B)],method="POPULAR")

qt_13B<-qt[which(qt$lifestageID=='13B'),]
g_13B<-acast(qt_13B,visitorID~productName,mean,value.var='Recency.Score')
R_13B<-as.matrix(g_13B)
r_13B <- as(R_13B, "realRatingMatrix") 
rec_13B=Recommender(r_13B[1:nrow(r_13B)],method="POPULAR")

qt_14B<-qt[which(qt$lifestageID=='14B'),]
g_14B<-acast(qt_14B,visitorID~productName,mean,value.var='Recency.Score')
R_14B<-as.matrix(g_14B)
r_14B <- as(R_14B, "realRatingMatrix") 
rec_14B=Recommender(r_14B[1:nrow(r_14B)],method="POPULAR")

qt_15M<-qt[which(qt$lifestageID=='15M'),]
g_15M<-acast(qt_15M,visitorID~productName,mean,value.var='Recency.Score')
R_15M<-as.matrix(g_15M)
r_15M <- as(R_15M, "realRatingMatrix") 
rec_15M=Recommender(r_15M[1:nrow(r_15M)],method="POPULAR")

qt_16M<-qt[which(qt$lifestageID=='16M'),]
g_16M<-acast(qt_16M,visitorID~productName,mean,value.var='Recency.Score')
R_16M<-as.matrix(g_16M)
r_16M <- as(R_16M, "realRatingMatrix") 
rec_16M=Recommender(r_16M[1:nrow(r_16M)],method="POPULAR")

qt_17M<-qt[which(qt$lifestageID=='17M'),]
g_17M<-acast(qt_17M,visitorID~productName,mean,value.var='Recency.Score')
R_17M<-as.matrix(g_17M)
r_17M <- as(R_17M, "realRatingMatrix") 
rec_17M=Recommender(r_17M[1:nrow(r_17M)],method="POPULAR")

qt_18M<-qt[which(qt$lifestageID=='18M'),]
g_18M<-acast(qt_18M,visitorID~productName,mean,value.var='Recency.Score')
R_18M<-as.matrix(g_18M)
r_18M <- as(R_18M, "realRatingMatrix") 
rec_18M=Recommender(r_18M[1:nrow(r_18M)],method="POPULAR")

qt_19M<-qt[which(qt$lifestageID=='19M'),]
g_19M<-acast(qt_19M,visitorID~productName,mean,value.var='Recency.Score')
R_19M<-as.matrix(g_19M)
r_19M <- as(R_19M, "realRatingMatrix") 
rec_19M=Recommender(r_19M[1:nrow(r_19M)],method="POPULAR")

qt_20S<-qt[which(qt$lifestageID=='20S'),]
g_20S<-acast(qt_20S,visitorID~productName,mean,value.var='Recency.Score')
R_20S<-as.matrix(g_20S)
r_20S <- as(R_20S, "realRatingMatrix") 
rec_20S=Recommender(r_20S[1:nrow(r_20S)],method="POPULAR")

qt_21S<-qt[which(qt$lifestageID=='21S'),]
g_21S<-acast(qt_21S,visitorID~productName,mean,value.var='Recency.Score')
R_21S<-as.matrix(g_21S)
r_21S <- as(R_21S, "realRatingMatrix") 
rec_21S=Recommender(r_21S[1:nrow(r_21S)],method="POPULAR")

 ############Create predictions#############################
customers<-c_list[1:10,]
#customers<-c_list[which(c_list$visitorID=='55c905f6273229e2688b4948'),]
items<-list(1:nrow(customers))
for (i in 1:nrow(customers)) #for each customer
{
	customerID<-customers[i,1]
	customer<-customers[i,]
	if (customer$lifestageID==''){
	recommended<- predict(rec_na, r_na[customerID,], n=5)
	} else if (customer$lifestageID=='01Y'){
	recommended<- predict(rec_01Y, r_01Y[customerID,], n=5)
	} else if (customer$lifestageID=='02Y'){
	recommended<- predict(rec_02Y, r_02Y[customerID,], n=5)
	} else if (customer$lifestageID=='03X'){
	recommended<- predict(rec_03X, r_03X[customerID,], n=5)
	} else if (customer$lifestageID=='04X'){
	recommended<- predict(rec_04X, r_04X[customerID,], n=5)
	} else if (customer$lifestageID=='05X'){
	recommended<- predict(rec_05X, r_05X[customerID,], n=5)
	} else if (customer$lifestageID=='06X'){
	recommended<- predict(rec_06X, r_06X[customerID,], n=5)
	} else if (customer$lifestageID=='07X'){
	recommended<- predict(rec_07X, r_07X[customerID,], n=5)
	} else if (customer$lifestageID=='08X'){
	recommended<- predict(rec_08X, r_08X[customerID,], n=5)
	} else if (customer$lifestageID=='09B'){
	recommended<- predict(rec_09B, r_09B[customerID,], n=5)
	} else if (customer$lifestageID=='10B'){
	recommended<- predict(rec_10B, r_10B[customerID,], n=5)
	} else if (customer$lifestageID=='11B'){
	recommended<- predict(rec_11B, r_11B[customerID,], n=5)
	} else if (customer$lifestageID=='12B'){
	recommended<- predict(rec_12B, r_12B[customerID,], n=5)
	} else if (customer$lifestageID=='13B'){
	recommended<- predict(rec_13B, r_13B[customerID,], n=5)
	} else if (customer$lifestageID=='14B'){
	recommended<- predict(rec_14B, r_14B[customerID,], n=5)
	} else if (customer$lifestageID=='15M'){
	recommended<- predict(rec_15M, r_15M[customerID,], n=5)
	} else if (customer$lifestageID=='16M'){
	recommended<- predict(rec_16M, r_16M[customerID,], n=5)
	} else if (customer$lifestageID=='17M'){
	recommended<- predict(rec_17M, r_17M[customerID,], n=5)
	} else if (customer$lifestageID=='18M'){
	recommended<- predict(rec_18M, r_18M[customerID,], n=5)
	} else if (customer$lifestageID=='19M'){
	recommended<- predict(rec_19M, r_19M[customerID,], n=5)
	} else if (customer$lifestageID=='20S'){
	recommended<- predict(rec_20S, r_20S[customerID,], n=5)
	} else if (customer$lifestageID=='21S'){
	recommended<- predict(rec_21S, r_21S[customerID,], n=5)
	}
	items[[i]]<-as(recommended,"list")
	#as(recommended,"list")
}

lists<-list(1:nrow(customers))
for (i in 1:nrow(customers))
{
	lists[[i]]<-list(customers[i,],items[[i]])
} 

#customers
#items
lists
