#Data
revenue <- c(14574.49, 7606.46, 8611.41, 9175.41, 8058.65, 8105.44, 11496.28, 9766.09, 10305.32, 14379.96, 10713.97, 15433.50)
expenses <- c(12051.82, 5695.07, 12319.20, 12089.72, 8658.57, 840.20, 3285.73, 5821.12, 6976.93, 16618.61, 10054.37, 3803.96)

#Solution

profit <- revenue - expenses

tax <- profit * .3

tax

profitaftertax <- profit - tax

profitaftertax

averageprofitaftertax <- mean(profitaftertax)

averageprofitaftertax

goodmonths <- c(1765.87, 5085.67, 5747.39, 2761.48,
                2329.87, 8140.68)

badmonths <- c(1337.93, -2595.45, -2040.02, -419.94
              -1567.06, 461.72)

bestmonth <- 8140.68

worstmonth <- -2595.45

profitrounded <- round(profit)

profitrounded

profitaftertaxrounded <- round(profitaftertax)

goodmonthsrounded <- round(goodmonths)

badmonthsrounded <- round(badmonths)

bestmonthrounded <- round(bestmonth)

worstmonthrounded <- round(worstmonth)

profitrounded <- round(profit)

profitmargin <- profitaftertax/revenue

profitmarginpercentage <- profitmargin*100

roundedprofitmarginpercentage <- round(profitmarginpercentage)

goodmonths2 <- profitaftertaxrounded > averageprofitaftertax

badmonths2 <- !goodmonths2

bestmonth2 <- max(profitaftertaxrounded)

worstmonth2 <- min(profitaftertaxrounded)

expenses.1000 <- round(expenses/1000)
revenue.1000 <- round(revenue/1000)
profit.1000 <- round(profit/1000)
profitaftertax.1000 <- round(profitaftertax/1000)


#output

revenue.1000
expenses.1000
profit.1000
profitaftertax.1000
roundedprofitmarginpercentage
goodmonths
badmonths
bestmonthrounded
worstmonthrounded
