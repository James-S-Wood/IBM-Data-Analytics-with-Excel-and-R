getwd()
# code to download the dataset
download.file("https://cf-courses-data.s3.us.cloud-object-storage.appdomain.cloud/IBMDeveloperSkillsNetwork-RP0101EN-Coursera/v2/dataset/The_Artist.txt", 
              destfile="The_Artist.txt")
my_data<-readLines("The_Artist.txt")
my_data
length(my_data)
file.size('The_Artist.txt')

my_data1 <- scan("The_Artist.txt", "")
my_data1
length(my_data1)

word_factor<-factor(my_data1)
summary(word_factor)

nchar(my_data[1])
toupper(my_data[3])
tolower(my_data[3])

chartr(" ","-",my_data[1])
character_list <- strsplit(my_data[1], " ")
word_list <- unlist(character_list)
word_list

rep<-chartr(" ","_",my_data[3])
character_list <- strsplit(rep, "_")
word_list <- unlist(character_list)
word_list

sorted_list <- sort(word_list)
sorted_list
paste(sorted_list, collapse = " ")

sub_string<-substr(my_data[1],start=4,stop=50)
sub_string
trimws(sub_string)

library(stringr)
str_sub(my_data[1],-8,-1)


#Regular Expressions
# Load a email dataframe
email_df <- read.csv("https://cf-courses-data.s3.us.cloud-object-storage.appdomain.cloud/IBMDeveloperSkillsNetwork-RP0101EN-Coursera/v2/dataset/email%20list.csv")
email_df
grep("@.+",c("test@testing.com" , "not an email", "test2@testing.com"))
grep("@.+\\.com",c("test@testing.com" , "not an email", "test2@testing.com"))
# Load a email dataframe
grep("@.+",  c("test@testing.com", "not an email", "test2@testing.com"), value=TRUE)
gsub("@.+", "@newdomain.com", c("test@testing.com", "not an email", "test2@testing.com"))
matches <- regexpr("@.*", c("test@testing.com", "not an email", "test2@testing.com"))
regmatches(c("test@testing.com", "not an email", "test2@testing.com"), matches)
matches <- regexpr("@.*\\.", email_df[,'Email'])
email_df[,'Domain'] = regmatches(email_df[,'Email'], matches)
email_df