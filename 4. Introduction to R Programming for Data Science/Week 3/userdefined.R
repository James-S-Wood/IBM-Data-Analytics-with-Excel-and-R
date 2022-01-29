printHelloWorld <- function(){
  print("Hello World")
}
printHelloWorld()
add <- function(x, y) {
  x + y
}
add(3, 4)
isGoodRating <- function(rating){
  #This function returns "NO" if the input value is less than 7. Otherwise it returns "YES".
  
  if(rating < 7){
    return("NO") # return NO if the movie rating is less than 7
    
  }else{
    return("YES") # otherwise return YES
  }
}
isGoodRating(6)
isGoodRating(9.5)
isGoodRating <- function(rating, threshold = 7){
  if(rating < threshold){
    return("NO") # return NO if the movie rating is less than the threshold
  }else{
    return("YES") # otherwise return YES
  }
}
isGoodRating(6)
isGoodRating(10)
isGoodRating(8, threshold = 8.5)
isGoodRating(8, 8.5)

isBadRating<-function(x){
  if(x<5){
    return("YES")
  }else{
    return("NO")
  }
}
isBadRating(6)

my_data <- read.csv("movies-db.csv")
head(my_data)
akira <- my_data[my_data$name == "Akira", "average_rating"]
akira

watchMovie <- function(moviename, my_threshold = 7){
  rating <- my_data[my_data[,1] == moviename,"average_rating"]
  
  memo <- paste("The movie rating for", moviename, "is", rating)
  print(memo)
  
  return(isGoodRating(rating, threshold = my_threshold))
}
is_watch <- watchMovie("Akira")
is_watch

threshold<-colMeans(my_data["average_rating"])
watchMovie <- function(moviename, my_threshold = threshold){
  rating <- my_data[my_data[,1] == moviename,"average_rating"]
  
  memo <- paste("The movie rating for", moviename, "is", rating)
  print(memo)
  
  return(isGoodRating(rating, threshold = my_threshold))
}
is_watch <- watchMovie("Akira")
is_watch

myFunction <- function(){
  y <<- 3.14
  return("Hello World")
}
myFunction()
y
