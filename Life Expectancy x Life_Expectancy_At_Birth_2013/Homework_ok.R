# produce a scatterplot depicting Life Expectancy (y-axis) and
# Fertility Rate (x-axis) statistics by Country.
# Categorised by Countries' Regions.

# Visualisation for each of these years: 1960 and 2013.

worldBank <- read.csv(file.choose())
worldBank


#Fertility Rate to 1960 and 2013

FR_1960 <- worldBank$Fertility.Rate[1:187]
FR_2013 <- worldBank$Fertility.Rate[188:374]
#-------------------------------------------


worldBank_1960 <- worldBank[1:187,]
worldBank_2013 <- worldBank[188:374,]


install.packages('ggplot2')

#scatterplot to 1960
qplot(data=worldBank_1960, x=FR_1960, y=Life_Expectancy_At_Birth_1960,
      colour = Region, shape=I(17))

#scatterplot to 2013
qplot(data=worldBank_2013, x=FR_2013, y=Life_Expectancy_At_Birth_2013,
      colour = Region, shape=I(17))