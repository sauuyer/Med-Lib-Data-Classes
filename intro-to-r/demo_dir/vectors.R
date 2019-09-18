############ RANGES
1:300
-10:10
-1:-10

############ SEQUENCES
seq1 <- seq(from = 1, to = 3000, by = 100)
seq(from = 0, to = 50, by = .5)

############ LISTS
samples <- c('ts3', 'ts2', 'ts1', 'ts1', 'ts2')
responses <- c(100, 200, 300, 400, 500, 600)
other_list <- c(1, 2, 3, 4, 5, 6)
short_list <- c(1,2)

responses * 2
responses + other_list
responses + short_list

############ VECTOR FUNCTIONS
sort(samples)
unique(samples)

####### NA VALUES IN VECTORS
vy <- c(1, 2, 3, NA, 5)
mean(vy)
mean(vy, na.rm=TRUE) # remove the null values in order to perform mathmatical functions

# removing NA values
vy[ !is.na(vy) ]

####### NULL VALUES IN VECTORS
vx <- c(1, 2, 3, NULL, 5)
sum(vx)

# removing NULL values
vx[ !is.null(vx)]
