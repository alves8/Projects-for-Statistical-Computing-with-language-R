#Data
revenueB <- c(14574.49, 7606.46, 8611.41, 9175.41, 8058.65, 8105.44, 11496.28, 9766.09, 10305.32, 14379.96, 10713.97, 15433.50)
expensesB <- c(12051.82, 5695.07, 12319.20, 12089.72, 8658.57, 840.20, 3285.73, 5821.12, 6976.93, 16618.61, 10054.37, 3803.96)

#Solution
revenue = round(revenueB, 2)
expenses = round(expensesB, 2)

#Profit for each month
num_elements <- 0
for(i in revenue){
  num_elements <- num_elements +1

}
month <- num_elements
profit <- rep(NA, month)
for(i in 1:month){
  profit[i] <- revenue[i] - expenses[i]
}
round(profit, digits = 0)


#Profit after tax for each month (the tax rate is 30%)
profit30 <- rep(NA, month)
for(j in 1:month){
  profit30[j] <- profit[j]*0.7
}
round(profit30, 0)

#profit margin for each month - 
#equals to profit a after tax divided by revenue
profitMargin <- rep(NA, month)
for(k in 1:month){
  profitMargin[k] <- (profit[k]/revenue[k])*100

}
round(profitMargin, 0)
#good months - where the profit after tax was greater 
#than the mean for the years
goodMonths <- rep(NA, month)
meanProfit <- mean(profit30)
for(m in 1:month){
  if (profit30[m] > meanProfit ){
    goodMonths[m] <- profit30[m]
  }  
} 
round(goodMonths, 0)

#bad months - where the profit after tax was less than 
#the mean for the year

badMonths <- rep(NA, month)
for(n in 1:month){
  if (profit30[n] < meanProfit ){
    badMonths[n] <- profit30[n]
  }  
} 
round(badMonths, 0)

#the best month - where the profit after tax was max
#for the year

bestMonth <- max(profit30)
round(bestMonth, 0)

#the worst month - where the profit  after tax was min
#for the year

minMonth <- min(profit30)
round(minMonth, 0)

