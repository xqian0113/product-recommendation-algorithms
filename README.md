# product-recommendation-algorithms

Product Recommendation Algorithm

Life stage group based algorithm
  Pick all the customers in the life stage group where Customer A belongs.
  Find best sellers in that life stage group as recommendations (weighted by recency)
  Recommend those best sellers to Customer A

Transaction based algorithm
  Let A be the product in a customer’s transaction. 
  Find all customers who bought A and search items these customers bought. Let’s call these items set X.
  Find items in set X that have close transaction dates with A, excluding very old transactions (recency score<-1); and recommend those items.
