
#### R data structures

### Vector

my_vector <- c(-1, 2, 6, 6.7, 2, 0.45, 2, 4) 

typeof(my_vector)

class(my_vector)

is.numeric(my_vector)

is.character(my_vector)

is.data.frame(my_vector)


######
x5 <- c(5, 4, 2, 3, 1,6,8,9)   #concatenation
x7 <- c(3, 4, 2)
x8 <- c("HA", "DL","MH","AP")  # Character Vector

x7+x5                          # sum of vectors

x7+x8  ###error as one var. is non-numeric

data <- c(x5,x7) # concatenation of vectors

(my_vector2 <- 2 * my_vector)  # Computations with numeric vectors

my_vector * c(2, 3)

my_vector + c(2, 3, 4)

(my_char_vector <- c(4, 2, "Hello, world!"))


typeof(my_char_vector)

class(my_char_vector)

is.numeric(my_char_vector)

sqrt(my_vector)        # NaN (not a number) produced as a resulting of squarting negative values

log(my_vector)         # log 

sum(my_vector)         # sum

prod(my_vector)        # product

cumsum(my_vector)      # cumulates (sums up) all the values

diff(my_vector)        # lagged differences of all the values

sessionInfo()




#### List -:list is a vector but with heterogeneous data elements.

### Lists will allow us to store a variety of data structures under a single variable. 
### This means we could store a vector,matrix, data frame, etc. under a single list.


# Create a vector
v <- c(1,2,3,4,5)

# Create a matrix
m <- matrix(1:10,nrow=2,ncol=5,byrow=TRUE)

# Create a data frame
df <- mtcars 


### create list

l1 = list(v,m,df)
l1

## assign names to every element in list

l2 <- list(sample_vector = v,sample_matrix = m, sample_df = df)
l2

#l2[['sample_vector']][2]



#### Matrix

my_matrix <- matrix(c(4, 2, 7, 9), nrow=2, ncol=2)

my_matrix1 <- matrix(c(1, 2, 3, 4), nrow=2, ncol=2)

res <- my_matrix * my_matrix1   ### position wise multiplication

res1 = my_matrix %*% my_matrix1  ### matrix multiplication

#my_matrix[2,]


### dataframe

states <- state.x77
#s = datasets::state.x77

#data()

colnames(states)

dim(states)

View(states)

head(states,10)

summary(states)

## create dataframe

day <- c('mon','tue','wed','thu','fri', 'sat', 'sun')
temp <- c(22.2,21,23,24.3,25,24.7,22.4)
rain <- c(TRUE, TRUE, FALSE, FALSE, TRUE,FALSE, TRUE)

df_1 <- data.frame(day,temp,rain)
df_1

#Everything from first column
df_1[,1]

#Everything from first row
df_1[1,]


df_1[,'rain']

df_1$rain

df_1$temp


# First 5 rows 
df_1[1:5,]


# First 5 rows for days and temps
df_1[1:5,c('day','temp')]


# get row number 2 and 5 for days and temps
df_1[c(2,5),c('day','temp')]




### Factor -: represent categorical data and store it on multiple levels

x <- c("apple", "mango", "mango", "grapes", "bananas", "grapes", "coconut", "apple")
print(x)

# Converting the vector x into a factor

fruits <- factor(x)
print(fruits)



################ dplyr package ###############

#install.packages('dplyr')
# library(dplyr)
require(dplyr)


#### subset records
subset(df_1, subset = rain==TRUE)

subset(df_1, temp>24)
