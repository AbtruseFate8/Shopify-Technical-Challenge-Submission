# Load Data
df <- as.data.frame(read.csv("Shopify_Challenge.csv"))

# Check for missing values:
as.data.frame(lapply(df, function(df) sum(is.na(df))))

# Reproduce Incorrect calculation:
mean(df$order_amount)

# Create average order value column:
library(dplyer)

df <- mutate(df, av_amount = df$order_amount/df$total_items)
df

# Average Order Value:
round(mean(df$av_amount),2) #Still higher then expected

# Generate Histogram:
hist(df$av_amount) #Positively skewed due to high value sneaker sales

# Evaluate Extreme Value:
boxplot.stats(df$av_amount)

# Luxury priced sneaker sales are a reality in the sneaker market and will 
# continue to occur. Instead of removing these outliers, a better reporting 
# metric would be the median order value since it is not affected by these 
# extremely high value purchases. 

# Report Median Order Value
median(df$av_amount)







