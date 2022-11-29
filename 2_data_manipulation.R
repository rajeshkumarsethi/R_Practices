
#install.packages('dplyr')
library(dplyr)
#require(dplyr)


#install.packages('nycflights13')
library(nycflights13)

colnames(flights)

dim(flights)
View(flights)

head(flights,10)

summary(flights)

## filter records based on condition

### method_1

filter(flights,month==11)

filter(flights,month==11, day==3)

head(filter(flights,month==11,day==3,carrier=='AA'))



fly  <-  filter(flights,month==11,day==3,carrier=='AA')
View(fly)


#### method_2

fly1  <-  flights[flights$month == 11 & flights$day == 3 & flights$carrier == 'AA', ]
View(fly1)



#### slicing the data records

slice(flights, 1:5)  ###get first 5 rows

slice(flights, 50:80)   ### get rows from 50 till 80


#View(flights)


## arrange()


arrange(flights,arr_time) 

arrange(flights,day,arr_time)  ### reorder the dataset based on specific col_names

head(arrange(flights,year,month,day,arr_time))


#select()
head(select(flights, carrier))


#rename()
head(rename(flights, new_carrier = carrier))


### create new columns based on existing 

### using mutate()
fly4  <-  mutate(flights, new_col = dep_delay - arr_delay)
View(fly4)


### using transmute()
fly5  <-  transmute(flights, new_col = dep_delay - arr_delay)
View(fly5)


#Summarise
summarise(flights,avg_air_time=mean(air_time,na.rm=TRUE))
summarise(flights,avg_air_time=sum(air_time,na.rm=TRUE))


### take the sample from available dataset
sample_n(flights,10)
sample_frac(flights,0.05)


### another dataset -: 'mtcars'

mtcars = datasets::mtcars

df <- mtcars

a <- filter(df,mpg > 20)

b <- sample_n(a,size = 5)

c <- arrange(b,desc(mpg))
c

###method_1
arrange(sample_n(filter(df,mpg>20),size=5),desc(mpg))

###method_2
df %>% filter(mpg > 20) %>% sample_n(size = 5) %>% arrange(desc(mpg))


### merging of dataframes

#newvar <- mtcars$disp + mtcars$hp

d1 <- mtcars$mpg            
d2 <- mtcars$cyl
d3 <- mtcars$disp
d4 <- mtcars$hp

d1
d2

mtcars1<-rbind(d1,d2) # Combined as rows #Horizontal joins
View(mtcars1)

mtcars2<-cbind(d1,d2) # Combined as columns # Vertical joins
View(mtcars2)

#data()


#### groupby

df_2 = quakes

colnames(df_2)

df_grp_region = df_2 %>% group_by(stations) %>% summarise(mag_sum = sum(mag))

View(df_grp_region)




#### load file into the session

data_1 <- read.csv(choose.files())

### write the file into system

write.csv(data_1, "C:/Users/Vikas Srivastava/Desktop/ExcelR/Latest DS Material/Day 4 - Intro to R and R studio/mtcars_dataset.csv") 

# 
# library("readxl")
# 
# x1 = read_excel('C:/Users/Vikas Srivastava/Desktop/assignment/old/final/loadings.xlsx')











