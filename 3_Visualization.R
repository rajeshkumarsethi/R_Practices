
### Visualization using ggplot2

### grammer of graphics

# 6 layers: 
#   
#   1. data
#   2. Aesthetics
#   3. Geometries
#   4. Facet
#   5. stats
#   6. Cordinate
#   

library(ggplot2)

#mpg




### Bar plot

ggplot(data=mpg, aes(class)) + geom_bar()

#stacked bar plot

ggplot(data=mpg, aes(class)) + geom_bar(aes(fill = drv))

ggplot(mpg, aes(class)) + geom_bar(aes(fill = drv), position = "dodge")





#### Histogram

df <- airquality <- datasets::airquality

pl <- ggplot(df,aes(x=Temp))

pl + geom_histogram()

pl + geom_histogram(binwidth=0.1,color='black',fill='pink')


## add lables
pl + geom_histogram(binwidth=0.1,color='red',fill='pink') + xlab('Temp')+ ylab('Counts') + ggtitle('Ozone_Temp_Counts')


## change transparancy
pl + geom_histogram(binwidth=0.7,color='red',fill='pink', alpha=0.1) + xlab('Temp')+ ylab('Counts') + ggtitle('Ozone_Temp_Counts')






#### Scatter plot

df <- mtcars

pl <- ggplot(data=df,aes(x = wt,y=mpg))

pl + geom_point()

pl + geom_point(aes(color=factor(cyl)))

pl + geom_point(aes(size=factor(cyl)))

pl + geom_point(aes(shape=factor(cyl)))

pl + geom_point(aes(shape=factor(cyl),color=factor(cyl)),size=5,alpha=0.6)




### Boxplot

df <- mtcars

pl <- ggplot(data=df,aes(x = wt,y=mpg))

pl + geom_boxplot()

pl + geom_boxplot() + coord_flip()

pl + geom_boxplot(aes(fill = factor(cyl)))

pl + geom_boxplot(fill = "yellow", color = "blue") + facet_grid(. ~ am)
