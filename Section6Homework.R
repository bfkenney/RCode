movies <- read.csv(file.choose())

str(movies)

library(ggplot2)

colnames(movies) <- c("DayofWeek", "Director", "Genre", "MovieTitle", "ReleaseDate", "Studio", "AdjustedGross", "Budget", "Gross", "IMDBRating", "OverseasRevenue", "OverseasPercentage", "Profit", "ProfitPercentage", "Runtime", "USRevenue", "USGross", "USGrossPercentage")

pip2 <- (movies$Genre == "action") | (movies$Genre == "adventure") | (movies$Genre == "animation") | (movies$Genre == "comedy") | (movies$Genre == "drama") 

pip3 <- (movies$Studio == "Buena Vista Studios") | (movies$Studio == "Fox") | (movies$Studio == "Paramount Pictures") | (movies$Studio == "Sony") | (movies$Studio == "Universal") | (movies$Studio == "WB")

movies2 <- movies[pip2 & pip3,]

head(movies2)

pip4 <- ggplot(data=movies2, aes(x=Genre, y=USGrossPercentage)) + geom_jitter(aes(colour=Studio, size=Budget)) + geom_boxplot(alpha=.5, outlier.color = NA)
