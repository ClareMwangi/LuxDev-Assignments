# Project Background 
Jumia is a digital marketplace that connects sellers with customers across Africa.
The objective of this project is to analyze the performance of products listed on Jumia.
The analysis explores key metrics such as pricing, discounts, customer reviews and product ratings and how they influence product performance and customer engagement.

## Data Structure
The components of the dataset are: 
* Product Information - Product description
* Pricing - Current Price and Old Price
* Customer Feedback - Reviews and Ratings

## Overview of Findings
The business generated KES 132,932 in total revenue across 112 products, with moderate average discount of 37%. Customers seemed to be generally satisfied, based on an average rating of 3.9. 
The top three best performing products in terms of customer reviews, an indicator of high customer engagement relative to other products include: 

* 120W Cordless Vacuum Cleaners Handheld Electric Vacuum Cleaner
* 137 Pieces Cake Decorating Tool Set Baking Supplies
* Electronic Digital Display Vernier Caliper

The discounts show little impact on customer reviews. The analysis of the data indicates no relationship between product discounts and customer engagement. The products with high discounts did not necessarily attract high number of reviews. This shows that customer engagement is not driven by discount levels. 

Additionally, some products with high discounts were still rated poorly showing that high discounts do not always lead to customer satisfaction. The products below had highly discounted prices at above 50% but very low ratings below 3 out of 5:

* 5-PCS Stainless Steel Cooking Pot Set with Steamed Slices
* 380ML USB Rechargeable Portable Small Blenders and Juicers
* Intelligent LED Body Sensor Wireless Lighting Night Light USB

## Recommendations

* Consider an incentive to motivate customers to provide feedback after receiving their products.
* Review the discount allocation strategy as the analysis shows that even with high discount prices, customer engagement and satisfaction were still low. 
* Focus on product quality improvement especially for products with high discounts and low ratings. 

## Data Cleaning Process 
1. Replacing missing values in the reviews and ratings columns with null. 
2. Removing text from the price and rating columns and converting them to the correct data type.
3. Removing three duplicate entries.
4. Standardizing price values that appeared as ranges by calculating their average.
5. Negative review values were corrected by converting to positive values.

