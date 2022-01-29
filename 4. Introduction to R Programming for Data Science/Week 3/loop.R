movies_data <- read.csv("movies-db.csv", header=TRUE, sep=",")
# Get the data for the "year" column in the data frame.
years <- movies_data['year']

# For each value in the "years" variable...
# Note that "val" here is a variable -- it assumes the value of one of the data points in "years"!
for (val in years) {
  # ...print the year stored in "val".
  print(val)
}

length_mins <- movies_data['length_min']

for (val in length_mins) {
  print(val)
}

# Creating a start point.
iteration = 1

# We want to repeat until we reach the sixth operation -- but not execute the sixth time.
# While iteration is less or equal to five...
while (iteration <= 5) {
  
  print(c("This is iteration number:",as.character(iteration)))
  
  # ...print the "name" column of the iteration-th row.
  print(movies_data[iteration,]$name)
  
  # And then, we increase the "iteration" value -- so that we actually reach our stopping condition
  # Be careful of infinite while loops!
  iteration = iteration + 1
}


i=5
while(i<=9){
  print(movies_data$name[i])
  i=i+1
}