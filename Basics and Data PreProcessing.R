

#################################### Bigining with R ################################################

# To Run : ctrl+Enter

2+5

10+2

10/2

2*3

3*4+2
3*(4+2)

21 %/% 4
21 %% 4
21 / 4

"hello world"

# ---------------------------------------------

memory.limit()


ls()
View(customer)

remove(A)
remove(v2)
rm()

# -----------------------------
install.packages("swirl")
install.packages("Rtools")
install.packages("RCurl")

library(swirl)
swirl()


help()
help ("table")

remove(lst)
remove(A)

######################### Data Import in R : فراخوانی داده ########################################## 



## Fist way : Input Data  from R data package :
# روش اول : استفاده از دیتا ست های موجود در پکیج

# Iris Data Set

data()

data()                  # لیست دیتا ست های موجودرا نمایش بده

iris


iris                    # فراخوانی دیتا ست
View(iris)

#
help(iris)               # اطلاعات دیتا ست را نمایش بده
?iris

# Important Function : 

str(iris)           #  نمایش ساختار داده ها

summary(iris)            # نمایش اطلاعات آماری ستون ها

## Importing a CSV,txt format ----------------------------------
## فراخوانی فایل : 

## روش اول : ------
# read.csv("file",header)


setwd("H:/Data Science/6-Statistical Analysis in R/Session1/Data Frames") 
getwd()

# setwd = set your work directory

# test1.csv data set

x<-read.csv("test1.csv",head=F)
x

x<-read.csv("test1.csv",header=F) 
x

j<-read.csv("test1.csv",header=T) 
j


## روش دوم : --------------



# Importing a txt file ------------------------------------

y=read.table("test1.txt") # With no header assigning, it will consider F
y
z=read.table("test1.txt",header = T) # If header=T we will have  header
z


x1<-read.table(file.choose()) # test1 example
w<-read.table(file.choose())



#--------------------------------------------------------------------------------------

############################### Operators in R : عملگرها ###########################################

# assignment Operators ---------------
# عملگرهای انتسابی

x <- 1
print(x)
x

a <- 2
b <- 10
c = 3
a
b
c
a <- b <- 0


assign("j",12)    # j=12
j

j<-12
j
rm(j)

remove(j)
rm(j)
rm(j) # rm= Remove
remove(c)




MyVariable <- 1
MyVariable



# sequence
D<-seq(1,10,by=2)




E <- seq(1,9, length.out = 5)  # length.out : طول دنباله
E


Z<-1:20

Z


X <- 1:10
Y <- 4:-5
X
Y

(A <- c(1,2,3))

A

(B <- 10 :15)


C <- rep(2,6)   # rep= replicate
C

# روش دوم




length(W)


length(W)
length(X)

# Leftward
h<-10
i<<-11
j=12
i
# Rightward
13->k
14->>l

h#Left
i#Left
j#Left
k#Right
l#Right

x <- 6

class(x)

is.numeric(x)




y <- 6L
y
class(y)
is.integer(y)


# string

x <- "data"
x
class(x)


nchar(x)   # no of char

nchar("learning")

nchar(3)
nchar(1000)
nchar(25386)



x <- c("Hello","World","Hello")
x

y<-c("Hello","World")
y

paste("Hello","World")


paste("Hello","World","Hello")


paste(x,collapse = " <-> ")      # collaps = seperator

paste(x,collapse =  "    #    " )


## sep & collaps : ----------------------

# paste function in R

paste('one',2,'three',4,'five')


# paste function in R with "sep" argument

paste('X',1:5,sep='')

paste('X',1:5)


paste('r',1:5,sep="  ")


# paste function in R with " collapse"  argument

paste(c('one','two','three','four'),collapse=' and ')


# paste function in R with separator and collapse Argument

paste(c('X','Y'),1:5,sep='_',collapse=' and ')



## Changing the data type : تغییر ماهیت داده ------------------

x <- 0:6
class(x)
x
# Transfer Numeri :
# as.numerid
# as.factor

x
h1<-as.numeric(x)

class(h1)

h2<-as.logical(x)
h2
class(h2)


h3<-as.character(x)
class(h3)

# Homework : ---------------------------------
# check the below result, what's your idea? 

x <- c("a", "b", "c")
x
as.numeric(x)
as.logical(x)
as.complex(x)



## Arithmetic Operators ---------------------------------------------------------------------
## عملگرهای محاسباتی

x<-5
y<-2
x+y
x-y
x*y
x/y
x^y
x%%y # gives the reminder : باقیمانده را نمایش بده
x%/%y # gives tyhe quotatient : خارج قسمت را نمایش بده


## Relational Operators ------------------------------------------------------------------------
## عملگرهای رابطه ای

a<-5
b<-9

a<b    # < Less than
a>b    # > Greater than
a<=b   # <- Less than or equal
a>=b   # >= Greater than or equal
a==b   # == Equal to 
a!=b   # != Not Equal to


# مثال :بردار -------------

lin<-c(16,9,13,5,2,17,14)
lin
lin>10                    # مولفه های بیشتر از ده را نمایش بده
lin<=5                    # مولفه های کوچکتر مساوی پنج را نمایش بده

# مثال : 
fac<-c(17,7,5,16,8,13,14)
fac
fac<=lin


## مثال : ماتریس

lin <- c(16, 9, 13, 5, 2, 17, 14)
fac <- c(17, 7, 5, 16, 8, 13, 14)
views <- matrix(c(lin, fac), nrow = 2, byrow = TRUE)
views


# When does views equal 13?
views==13
# When is views less than or equal to 14?
views<=14

## Logical Operators ------------------------------------------------------------------------------
## عملگرهای منطقی

# ! logical Not
# && Element wise logical and
# | logical OR
# || Element wise logical OR

# ex : 
TRUE==TRUE
TRUE==FALSE

"hello"=="goodby"
3==2
3<5
3>5
-6*14!=17-101
-6 * 5 + 2>=-10 + 1

#Alphabetical order!

"Hello">"Goodby"
"useR"=="user"

#------------

f<-14
f

# AND operator
f>5 & f<15
f>5 & f>15


# OR Operator
f>5 | f<15
f>5 | f>15

# Not Opeators
!(f<5)
f<5

# is : as a logical question:
is.numeric(5)
!is.numeric(5)


# Try on vector
c(TRUE,TRUE,FALSE) & c(TRUE,FALSE,FALSE) # Compares "all" the elements
c(TRUE,TRUE,FALSE) | c(TRUE,FALSE,FALSE) # Compares "all" the elements
!c(TRUE,FALSE,FALSE) # Opposite of the vector elements

# Element wise comparing operators
c(TRUE,TRUE,FALSE) && c(FALSE,FALSE,FALSE) # Compares on "first" elements of each vectors
c(TRUE,TRUE,FALSE) || c(TRUE,FALSE,FALSE) # Compares on "first" elements of each vectors


### تمرین 1 : ------------

# The lin and last variable are already defined for you
lin <- c(16, 9, 13, 5, 2, 17, 14)
last <- tail(lin, 1)               # tail = last part, 1 = first from end
last

# Is last under 5 or above 10?
last < 5 | last > 10

# Is last between 15 (exclusive) and 20 (inclusive)?
last > 15 & last <= 20

# تمرین 2 :---------------
lin <- c(16, 9, 13, 5, 2, 17, 14)
fac <- c(17, 7, 5, 16, 8, 13, 14)
# # lin exceeds 10 but fac below 10
lin > 10 & fac < 10
lin > 10
fac < 10

# When were one or both visited at least 12 times?
lin >= 12 | fac >= 12

# When is views between 11 (exclusive) and 14 (inclusive)?
views > 11 & views <= 14

#-------------------------------------------------------------------------------------------

################################### Data type and Data Structure #######################################

### Vector بردار #### -------------------------------------------------------------------

# Numeric

a<-c(4,3,8)
a
class(a)

x<-c(2,3,4)
x
class(x)
length(x)
# ---------------
x<-seq(1,10,1.5)
x
class(x)

x<-as.integer(x)


x<-seq(1,10,1)
x
class(x)
x<-seq(1,10)
x
x<-1:10
x<-1:10
x

# Character

y<-c("a","b","c")
class(y)

typeof(y)
# Logical

z<-c(TRUE,TRUE,FALSE,FALSE)
typeof(z)
class(z)


# Integer

a<-c(1L,2L,3L)
class(a)

# توالی

q <- 1:3
q
class(q)

# روش اول

# names= Name of vectors
# names= Rename 

names(q) <- c("one","two","three")  # names :  تغییر نام
q



#روش دوم
q <- c("one"=1 , "two"=2 , "three"=3)
q
class(q)


#Adding element to vector : اضافه کردن مولفه به بردار

y<-c("a","b","c") 
y



y<-c(y,"d")  # Adding d
y

#Vectors form a sequence of numbers : ایجاد بردار با سری اعداد
#1)
series<-1:10
series
class(series)

#2)
seq(10)
seq(1,10,1.5)  # 


### Matrix ماتریس ### ---------------------------------------------------------------------


##Creating a matrix
# matrix : Function


m<-matrix(1:4,nrow=2,ncol=2)
m
class(m)
# nrow :no of rows تعداد سطر
# ncol :no of columns تعداد ستون


##checking dimention
dim(m)

##Matrix filled row wise : سری اعداد بصورت سطری

mymatrix<-matrix(1:6,nrow = 3,byrow=FALSE)
mymatrix
class(mymatrix)
# byrow : بصورت سطری متغیر ها را چیدمان کند


##Matrix filled row wise with giving " names "  to "rows" and "columns" :

mymatrix<-matrix(1:6,nrow = 3,byrow=TRUE,dimnames = list(c("d","e","f"),c("a","b")))
mymatrix
class(mymatrix)

##Matrix filled column wise : سری اعدا بصورت ستونی
(mymatrix<-matrix(1:6,nrow = 3,byrow=FALSE))



## other ways to construct matrix راه های دیگر ساخت ماتریس

m<-1:10
m
dim(m)

dim(m)=c(5,2)  # Now gives dimention to matrix به ماتریس بعد می دهیم
12


##Adding column to a matric ( cbind) اضافه کردن ستون به یک ماتریس
# cbind : Function to add vector in column
#rbind : Add vector in Row
#cind


c<-c(7,8,9)
c
mymatrix1<-cbind(mymatrix,c)
mymatrix1

# سطر = rbind
# ستون = cbind


##Adding row to a matrix ( rbind) اضافه کردن ردیف به یک ماتریس
# rbind = اضافه کردن ردیف
g<-c(10,11,12)
mymatrix2<-rbind(mymatrix1,g)
mymatrix2

### Lists لیست #### -----------------------------------------------------------------------------
## ترکیب چند بدار غیر همجنس
## Lets make 3 vectors : ابتدا 3 بردار می سازیم

# v1 : Integer
v1<-1:5
v1
class(v1)
# Or : 
(v1<-1:5) # with () it doesnt need to print v1
class(v1)

# v2 : Chracter
# month.abb= Abbreviation of month


v2<-month.abb[4:10]  # month.abb = display month abbriviation
v2
class(v2)

# v3
# Logical
v3<-c(TRUE,FALSE,TRUE,FALSE)
v3
class(v3)


# ادغام با  دستور لیست  
#each vector stays in their original data type in seperate list


list1<-list(v1,v2,v3)
list1                   # console in 3 row ,  usefull in health service
class(list1)
#---------------
# Combined 3 vectors : ادغام با دستور
(combinedv<-c(v1,v2,v3)) # combinedv = a Variable name
class(combinedv) # converted to chracter by default بصورت پیش فرض خروجی کاراکتر می دهد

### Arrays  آرایه ####  ------------------------------------------------------------------------------
## more than 2 dimintion
## only one data type
#array(data=NA,dim=length(dadat),dimnames=NULL)


# Example : میخواهیم یک آرایه با دو ماتریس تشکیل دهیم 

# برای ساخت دو ماتریس بردار تشکیل میدهیم
# Create two vectors of different lenghts 

vector1<-c(5,9,3,4)
vector2<-c(10,11,12,2)
vector3<-c(13,14,15,5)


# سطر و ستون ماتریس را تعیین میکنیم : 

column.names<-c("COL1","COL2","COL3")
row.names<-c("ROW1","ROW2","ROW3")

# نام دو ماتریس را تعیین میکنیم
matrix.names<-c("Matrix1","Matrix2")


# Take the vectors as a input to the array : 
result<-array(c(vector1,vector2,vector3),
              dim=c(3,3,2),dimnames=list(row.names,column.names,matrix.names))# dim =c(No of rows,No of columns,No of Matrix)

# dimnames= Function : set of an object
# list : تعیین لیست
print(result) 
class(result)
######################################### Data Frames ###########################################

## creating data frame نحوه ایجاد دیتا فریم ------------------------------

## 1 ) : simplest way -------------------

# data.frame = تابع ساخت دیتا فریم

# تعیین نام ستون ها
#name = Column 1
#age = Column 2
#gender = Column 3


# vector : Column
# Set Name


df1<-data.frame(name=c("s1","s2","s3"),age=c(22,23,24),gender=c("M","F","M"))
df1

class(df1)


## 2 ) : # creat using vectors با استفاده از بردار --------

# مثال : ابتدا سه بردار تشکیل میدهیم
#vector1:

rollno<-1:10  # integer
rollno

#vector2:
name<-paste("s",1:10,sep="")
name
# paste = Insert "string" of  character
# sep = seperator

#vector3:
age<-round(rnorm(10,mean=25,sd=2),1)
age

# round: Function to round decimal
#rnorm : random normal, 1 = decimal number

#vector4:
gender<-sample(c("M","F"),size = 10,replace = TRUE) # replace=sampling be with replacement? Yes!
gender
# Replace = T  / F
# ایجاد دیتا فریم با استفاده از بردارهای بالا : مرحله آخر
df2<-data.frame(rollno,name,age,gender)
df2
class(df2)


# تمرین کلاسی : ------------------------------------
## ایجاد دیتا فریم : 

# 1 )
patientid <- 1:7
age <- c(6,3,2,8,1,9,3)
diabet <- c("A","B","A","A","C","B","A")

patientDF <- data.frame(patientid,age,diabet)
patientDF
class(patientDF)

# call data value


patientDF[1,2]     # ردیف یک ستون دوم
patientDF[1,]      # ردیف یک تمامی ستون ها
patientDF[,1]      # تمام ردیف ها ستون یک




# $ : to call variable
patientDF$age
patientDF$patientid

# ------------------------------------------------
# Second data Frame
# 2 )
patientDF <- data.frame(patientid,age,diabet, stringsAsFactors = FALSE) 
#stringsAsFactors: آیا تبدیل به فاکتور شود؟
patientDF
patientDF$diabet

patientDF[,2]
patientDF$age

patientDF
class(patientDF)

class(patientDF[,2])

patientDF[,2,drop=FALSE]  # drop=FALSE : column settlement

nrow(patientDF)   #  No of rows
ncol(patientDF)   # No of Col
dim(patientDF)

names(patientDF)          # headers name
names(patientDF)[3]       # نام ستون سوم را نمایش بده
# ----- 
head()
tail()
str()
summary()


head(patientDF)           # شش ردیف اول را نمایش می دهد
tail(patientDF)           # شش ردیف آخر را نمایش بده

row.names(patientDF) <- c("A","B","C","D","E","F","G")
patientDF

head(patientDF)
head(patientDF,3) # دو ردیف اول را نمایش بده

tail(patientDF)
tail(patientDF,2)


# --------------------

###################################### Conditional Operators ##########################################
##### عملگرهای شرطی ########

### If Statement --------------------------------------

# if(condition) {
expr
}



# مثال :
x <- -3
x

if(x < 0) {
  print("x is a negative number")
}

### else Statement ----------------------------------------------------

#if(condition) {
expr1
} else {
  expr2
}

# مثال 1 : 
x <- -3

if(x < 0) {
  print("x is a negative number")
} else {
  print("x is either a positive number or zero")
}

# مثال 2 : 

x <- 5
if(x < 0) {
  print("x is a negative number")
} else {
  print("x is either a positive number or zero")
}

## else if statement -----------------------------------------------

if(condition1) {
  expr1
} else if(condition2) {
  expr2
} else {
  expr3
}


# مثال1: 

x <- -3

if(x < 0) {
  print("x is a negative number")
} else if(x == 0) {
  print("x is zero")
} else {
  print("x is a positive number")
}

# مثال2: 

x <- 0
if(x < 0) {
  print("x is a negative number")
} else if(x == 0) {
  print("x is zero")
} else {
  print("x is a positive number")
}

### if, else if, else --------------------------------------------------

# مثال 1 : 

x <- 6 

if(x %% 2 == 0) {
  print("divisible by 2")
} else if(x %% 3 == 0) {
  print("divisible by 3")
} else {
  print("not divisible by 2 nor by 3...")
}

# Excersize : 

# Variables related to your last day of recordings
medium <- "lin"
num_views <- 14

# Examine the if statement for medium
if (medium == "lin") {
  print("Showing lin information")
}

# Write the if statement for num_views
if (num_views > 15) {
  print("You are popular!")
}


# مثال 2: 

# Variables related to your last day of recordings
medium <- "lin"
num_views <- 14

# Control structure for medium
if (medium == "lin") {
  print("Showing lin information")
} else {
  print("Unknown medium")
}

# Control structure for num_views
if (num_views > 15) {
  print("You're popular!")
} else {
  print("Try to be more visible!")
}

# مثال 3 :

li <- 15
fb <- 9

# Code the control-flow construct
if (li >= 15 & fb >= 15) {
  sms <- 2 * (li + fb)
} else if (li < 10 & fb < 10) {
  sms <- 0.5 * (li + fb)
} else {
  sms <- li + fb
}

# Print the resulting sms to the console
sms

###############################################  Loop ############################################### 

### While Loop -----------------------------------------------

# while(condition) {
#     expr
#   }


# مثال : ------------

ctr<-1

while (ctr<=7) {
  print(paste("ctr is set to",ctr))  
  ctr<-ctr+1
}


# ctr : calculated no : ctr<-ctr+1
# paste = creating string as character : "ctr is set to 1"   

## سوال " -----------------------------------------
## #infinite while loop --------------------
# Question : What will happen Below code ?? 

ctr <- 1

while(ctr <= 7) {
  print(paste("ctr is set to", ctr))  
}
#------------------------------------------

### break statement -# ----------------------------------------

ctr<- 1         
while (ctr<=7) {
  if(ctr %% 5==0) {
    break
  }
  print(paste("ctr is set to",ctr))
  ctr<-ctr+1
}


# # Break if ctr is a 5-fold 
# while loop stops if ctr is 5: no more printouts    
# ---------------------------------------------------------------------

#### Excersize ####: 

# تمرین 1 :

speed <- 64

while (speed>30 ) {
  print(paste("Slow down!",speed))
  speed <- speed-7
}
speed # Print out the speed variable

# تمرین 2 : 
# Initialize the speed variable
speed <- 64

while (speed > 30) {
  print(paste("Your speed is", speed))
  if (speed > 48) {
    print("Slow down big time!")
    speed <- speed - 11
  } else {
    print("Slow down!")
    speed <- speed - 6
  }
} 


# تمرین 4:

i <- 1
while (i <= 10) {
  print(3 * i)
  if ( (3 * i) %% 8 == 0) {
    break
  }
  i <- i + 1
}
# Hint :
#prints out the triple of i, so 3 * i, at each run.
#is abandoned with a break if the triple of i is divisible by 8,
#but still prints out this triple before breaking

## Homework :----------

# Initialize the speed variable
speed <- 88
while (speed > 30) {
  print(paste("Your speed is", speed))
  
  # Break the while loop when speed exceeds 80
  if (speed > 80) {
    break
  }
  if (speed > 48) {
    print("Slow down big time!")
    speed <- speed - 11
  } else {
    print("Slow down!")
    speed <- speed - 6
  }
}

#-------------------------------------------------------------

#### For Loop ###  -------------------------------------------------------------------------------


#مثال 1:

# The lin vector has already been defined for you
lin <- c(16, 9, 13, 5, 2, 17, 14)

# Loop version 1 : راه اول استفاده از حلقه ----------------
for (li in lin) {
  print(li)
}

# Loop version 2 : راه دوم استفاده از حلقه -----------------
for (i in 1:length(lin)) {
  print(lin[i])
}

# مثال 2 : ---------------------------------------
# Code the for loop with conditionals :
lin <- c(16, 9, 13, 5, 2, 17, 14)


for (li in lin) {
  if (li > 10) {
    print("You're popular!")
  } else {
    print("Be more visible!")
  }
  print(li)
}
# Homework :-----------------------------------

# The lin vector has already been defined for you
lin <- c(16, 9, 13, 5, 2, 17, 14)


for (li in lin) {
  if (li > 10) {
    print("You're popular!")
  } else {
    print("Be more visible!")
  }
  
  if (li > 16) {
    print("This is ridiculous, I'm outta here!")
    break
  }
  
  if (li < 5) {
    print("This is too embarrassing!")
    next
  }
  
  print(li)
}
# Homework : -----------------------------------
# Pre-defined variables

rquote <- "r's internals are irrefutably intriguing"
chars <- strsplit(rquote, split = "")[[1]]

# Initialize rcount
rcount <- 0

# Finish the for loop
for (char in chars) {
  if (char == "r") {
    rcount <- rcount + 1
  }
  if (char == "u") {
    break
  }
}

# Print out rcount
rcount

###### Apply Family :  ------------------------------------
apply()



## lapply --------------------------------------------------

# example of for :
# L apply : List
nyc <- list(pop = 8405837,
            boroughs = c("Manhattan", "Bronx", "Brooklyn",
                         "Queens", "Staten Island"),
            capital = FALSE)

# Class difinition :

for(info in nyc) {
  print(class(info))
}



# lapply methode : List

lapply(nyc, class)


# ex 2 : No of Char :

cities <- c("New York", "Paris", "London", "Tokyo",
            "Rio de Janeiro", "Cape Town")



# No of Char



num_chars <- c()

for(i in 1:length(cities)) {
  num_chars[i] <- nchar(cities[i])
}
num_chars








# lapply methode : 
lapply(cities, nchar)

sam <- unlist(lapply(cities, nchar)) # list to vector
class(sam)

## sapply --------------------------------------------------
# Simplify

cities <- c("New York", "Paris", "London", "Tokyo",
            "Rio de Janeiro", "Cape Town")

(lapply(cities, nchar))
unlist(lapply(cities, nchar))

sapply(cities, nchar)



sapply(cities, nchar, USE.NAMES = FALSE) # # default = TRUE  vector mode
vapply(cities, nchar)  #error: argument "FUN.VALUE" is missing, with no default.

vapply()
tapply()
apply()

################################################## Functions ###########################################

# Excersize:

# No 01 :---------------------------------------
# Consult the documentation on the mean() function
# راهنمای میانگین
help(mean)

# Inspect the arguments of the mean() function
args(mean)
args(lm)
args(glm)
# No 02 -----------------------------------------

lin <- c(16, 9, 13, 5, 2, 17, 14)
fac <- c(17, 7, 5, 16, 8, 13, 14)

# Calculate average number of views : میانگین بازدید ها

avg_fb <- mean(fac)
avg_fb

avg_li <- mean(x = lin)
avg_li

# No 03 ------------------------------------
# The lin and fac vectors have already been created for you
lin <- c(16, 9, 13, 5, 2, 17, 14)
fac <- c(17, 7, 5, 16, 8, 13, 14)

# Calculate the mean of the sum : میانگین جمع دو بردار
avg_sum <- mean(lin + fac)


# Inspect both new variables
avg_sum

# No 04 --------------------------------------
# The lin and fac vectors have already been created for you
lin <- c(16, 9, 13, 5, 2, 17, 14)
fac <- c(17, 7, 5, 16, 8, 13, 14)

# Calculate the mean of the sum
avg_sum <- mean(lin + fac)
avg_sum
# Calculate the trimmed mean of the sum
avg_sum_trimmed <- mean(lin + fac, trim = 0.2)
avg_sum_trimmed

# Inspect both new variables
avg_sum
avg_sum_trimmed
# No 05 -----------------------------------
# The lin and fac vectors have already been created for you

lin <- c(16, 9, 13, 5, NA, 17, 14)
fac <- c(17, NA, 5, 16, 8, 13, 14)

# Basic average of lin
mean(lin)
mean(fac)
# Advanced average of lin
# Arg mean : na.rm


mean(lin,na.rm=TRUE)
mean(fac,na.rm=TRUE)




# No 06 -----------------------------------
# The lin and fac vectors have already been created for you
lin <- c(16, 9, 13, 5, NA, 17, 14)
fac <- c(17, NA, 5, 16, 8, 13, 14)

# Calculate the mean absolute deviation
mean(abs(lin - fac), na.rm = TRUE)

#------------------------------------------------------------------------------------------

############################# Handeling Packages in R : نصب پکیج ########################################

## install.pakeges("package name")
## library(pakage name)

# 
install.packages("shiny")
library(shiny)


install.packages("moments")
library(moments)


install.packages("")
library()


# ex : 
# visualization : 
install.packages("ggplot2")
library(ggplot2)


# Statistical tets
install.packages("moments")
library(moments)


# ouliers detection
install.packages("DMwR")


# Second edition :
install.packages("DMwR2", dependencies = TRUE)
library("DMwR2")

install.packages("zoo")
library("zoo")



# Classification
install.packages("rpart")
library(rpart)

# to remove Packages

remove.packages("")

# depencies
install.packages("e1071",dependencies = TRUE)

install.packages("RWeka",dependencies = TRUE)
install.packages("RWeka", lib = "/path/to/library")
? install.packages
library("RWeka")


#------------------------------------------------------------------------------------------

#######################################  Subsetting Data in R ##################################
# استخراج داده :
# Example : we are going to extract row and column 

df=matrix(1:12,nrow=4,byrow = F)
df
# nrow : no of rows

# return row 1 :
df[1,]

## return column 3 :
df[,3]

## values of Rows 1:3 in coulmn 2 :
df[1:3,2]

## Subset a vector : -------------------------------

# 1st making a vector 
x<-c(2.1,4.2,3.3,5.4)
x

##exrtacting 3rd and 1st elements : مولفه سوم و یک را نمایش بده
x[c(3,1)]

## omit elements at the specified posituion : مولفه سوم و یکم را حذف کن
x[-c(3,1)]


## extracts only values > 3 : تنها بزرگتر از سه را نمایش بده
x[x>3] 

##  returns the original vector:
x<-c(2.1,4.2,3.3,5.4)
x[]


## If the vector is named : نام گذاری مولفه های بردار
x<-c(2.1,4.2,3.3,5.4)
#Letters : حروف الفای یک تا چهار را نمایش بده

y<-setNames(x,letters[1:4])
y


## extracting with column name 
y[c("d","c","a")]


## example 2 for matrix : ----------

# First make matrix
a<-matrix(1:9,nrow = 3)
a
# colnames : نام ستون را تعیین کن
colnames(a)<-c("A","B","C")   
a

#1) extracting 1st and 2nd rows from list :
a[1:2,]

#2) extracing elements at position of 3rd row 3rd column :
a[3,3]

## excluding 2nd column , 2nd row :
a[-2,-2]


### Subsetting Data Frame -------------------------------------------------------------------------

## 1st make a data frame,
df<-data.frame(x=1:3,y=3:1,z=letters[1:3])
df

# example :

df[df$x==2,] # ستون های یی که برابر دو هستند را نمایش بده
df[df$x==2,]

#################################### Data Management in R ##############################################

install.packages("data.table")
library(data.table)



# کاربرد چند تابع

## Using "names" Function:------- 

# mtcars : dataset in R library :
head()
head(mtcars)  
i<-mtcars
names(i)

# names : Function to chanage name

names(i)[1]<-"MPG"
names(i)
head(i)


# example, Way 2:
names(i)[names(i)=="cyl"]<-"CYL"
names(i)

## Adding , Removing row/Column --------------------------

# First make data frame :
df<-data.frame(A=c(1,2),B=c(3,4))
df


## Adding a row : method 1 ------

#rbind = adds new variables in row
# cbind = Column

new_row<-c(7,8)
df<-rbind(df,new_row) 
df


## Adding a row : method 2 -------
df[nrow(df)+1,]<-c(5,6)
df

## Removing a row : -------

# women ( R data set ): Average Heights and Weights for American Women
data()
women
dim(women)
test<-women
test<-women[-c(14),]   # حذف ردیف  چهار
test
head(test) # shows first 6 rows
tail(test) # shows last 6 rows
dim(test) #dimention

## Removing multiple rows : حذف چند ردیف

test1<-women[-c(6,11,13),]
test1
tail(test1)

dim(test1)


#########################################################################################################
########################################### پیش پردازش داده #############################################

# Heart Data Data Frame
# Heart Data

setwd("C:/Users/saman/Desktop")
data1<-read.csv(file.choose())
head(data1)

## تغییر نام ستون :  -------------------------------------
#names() : #تابع تغییر نام

names(data1)[1]<-"age"


data2<-data1



## Data Cutting برش دادن فایل ----------------------------

# ردیف یک تا هفت و ستون دو تا ده را انتخاب کن
A<-data1[1:7,2:10]
A

# ردیف یک تا پنج و ستون سن و جنسیت را انتخاب کن
B=data1[1:5,c("age","sex")]
B



# Ex : 
C=data1[c(2:10,40,47,201:205),c(7,9)]
C



D<-data1[which(data1$age==40 & data1$sex==1),]
D

## Data Sampling نمونه برداری از داده : -----------------------------------------------


# Sampling : Data1  from heart data

# sample = تابع نمونه گیری
ind<-sample(1:nrow(data1),50,replace=FALSE) # پنجاه نمونه از ردیف یک تا انتها گرفته شود
ind
# replace=FALSE : نمونه گيري بدون جايگذاري

# ادامه :
# نام ستون های دیتا فریم اصلی را  بر روی نمونه های قرار بده
samp<-data1[ind,]    # نام ستون ديتا فريم اصلي بر روي نمونه هاي قرار گرفت 
samp
head(samp)
dim(samp)


# Variable Trasformation -----------------------
# House Price Data Frame
# House Price

setwd("C:/Users/saman/Desktop") 
getwd()


df<-read.csv(file.choose(),header=T)
head(df)

# Trasform several features in one feature by average

# $ : Call Column name 
# $ : New Column 

df$avg_dist<-(df$dist1+df$dist2+df$dist3+df$dist4)/4
df$avg_dist

# Deleting variable ------------------

df2<-df[,-6:-9]

df<-df2

rm(df2)        
df<-df[,-13] 


### Sorting Data ------------------------------------------------ 

## "Training_dataset.txt" data set: 

setwd("C:/Users/saman/Desktop") 
getwd()

trainData<-read.table("trainData.txt",header = T)

str(trainData)
head(trainData)
tail(trainData)
names(trainData)
# ------------------

sort(trainData$age)   # صعودی



# ascending by age variable, type: صعودی
trainData2 <- trainData[order(trainData$age),]

# descending by age variable, type: نزولی
trainData2 <- trainData[order(-trainData$age),]


# sort "age" (ascending) and "weight" (descending ) : صعودی و نزولی
trainData2 <- trainData[order(trainData$age, -trainData$weight),]


## Minimum, maximum ----------------------
min(trainData$age)
max(trainData$age)


## identifing mising value  : ---------------------------
levels(trainData$gender) # console

table(trainData$gender, useNA = "always")

## Duplicate  data : حذف داده های تکراری مشاهده شده در یک ستون
# id_number
trainData2 <-trainData[!(duplicated(trainData$id_number) &trainData$age == 33), ]

# check the no of dupicated data
trainData2 <-trainData[!duplicated(trainData$id_number),]


####### Outliers Detection شناسائی داده های پرت : ------------------------------------------------

#var()   واریانس
#sqrt()  مجذور
#sig     انحراف معیار

#######حدود استاندارد --------------------------------------------------------------------------

# Heart Data : cholestoral

setwd("C:/Users/gsstech/Desktop")
data1<-read.csv(file.choose())


Mu<-mean(data1$cholestoral,na.rm=TRUE)
Mu
#na.rm= قبل از میانگین گیری دیتاهای بی ارزش را حذف و سپس میانگین بگیر 

sig=sqrt(var(data1$cholestoral,na.rm=TRUE))
sig

# يا 
sig<-sd(data1$cholestoral,na.rm=TRUE)
sig



##حدود استاندارد ------------
#Lowband
Lowband<-Mu-3*sig 
Lowband

#Upband
Upband<-Mu+3*sig
Upband

#is.na= آيا داده گم شده وجود دارد؟
is.na()

sum(is.na(data1$cholestoral))

data1$cholestoral[data1$cholestoral>Upband]=NA   # مقادير بيشتر از حد بالا را داده پرت در نظر بگير
data1$cholestoral[data1$cholestoral<Lowband]=NA  # مقادير کمتر از حد پائين را داده پرت در نظر بگير

sum(is.na(data1$cholestoral))

Outlier=30-23=7

# _________________________________________________________________________________________

# Frequency on Factor data type

# فراخاني فايل سلامت:heart Data

data1<-read.csv("C:/Users/gsstech/Desktop/Heart data.csv")

# يا
data1<-read.csv(file.choose())


fix(data1)                  # ميتوانيم مقادير ديتا ست را در جدول مستقيما بصورت دستي تغيير دهيم
# یا
data.entry(data1)

str(data1)
##### -------------------------
summary(data1)                            # اطلاعات آماري از ستونها را نمايش ميدهد

names(data1)                # نام هر ستون را نمایش میدهد
names(data1)[1]<-"age"      # تغییر نام هر ستون

summary(data1)

# as.factor = تبدیل ستونهای با مقادیر صفر و یک یه فاکتور



data1$c<-as.factor(data1$c)
summary(data1)          # مجددا اطلاعات آماري را مرور مي کنيم

#    c      
#   0:352  
#   1:245


# ستون جنسيت را هم نظير بالا فاکتور تعريف مي کنيم
data1$sex<-as.factor(data1$sex)
summary(data1)


# level=  تنوع دسته ها يا نوع متغيرهاي ستون را نمايش   ميدهد

levels(data1$c)         # نمايش مقادير ستون برچسب
levels(data1$sex)       # نمايش مقادير ستون جنسيت


data1$th1<-as.factor(data1$thal)   # فاکتور
summary(data1)


####################################### رسم نمودار و مصور سازی #######################################

##### statistical parameters : پارامترهاي آماري

mean(data1$age)
median(data1$age)
mode(data1$age) # در این زبان تابع مد با تابع کلاس و تایپ یکیه
# We dont have directly MODE(Statistical)Function in R. We should create a function!
var(data1$age)
sd(data1$age)

#### Customer data set visualization : ----------------------
#customer Data Frame
customer<-read.csv(file.choose())
customer
str(customer)

table(customer$Region)

#How to make data table:
y<-table(customer$Region)
y

# View table :---
View(customer)

### Creating Barplot in R:


barplot(y)

barplot(y[order(y)])
barplot(y[order(-y)])

#changing position
barplot(y[order(y)],horiz=TRUE)

#Changing the color
barplot(y[order(y)],horiz=TRUE,col = "Red")
barplot(y[order(y)],horiz=TRUE,col = "green")

barplot(y[order(y)],horiz=TRUE,col = "Blue")


barplot(y[order(y)],horiz=TRUE,col = c("red","violetred3","green","brown2"),main = "Freq of Reg")

####Color package" ----------
colors()

#----------------------------


barplot(y[order(y)],horiz=TRUE,col = c("red","violetred3","lightsalmon3","beige"),
        border = NA,main="Freq of Regions")

barplot(y[order(y)],horiz=TRUE,col = c("red","blue","green","beige"),
        border = NA,main="Freq of \n Regions")


barplot(y[order(y)],horiz=TRUE,col = c("red","blue","green", "tan1"),
        border = NA,main="Freq of \n Regions",xlab="Number of Customer")

####Histogram### -----------------------
str(customer)

hist()
hist(customer$Age)




# Creating 5 bar
hist(customer$Age,breaks =10)
hist(customer$Age,breaks=c(0,40,60,100))
hist(customer$Age,breaks=c(0,40,60,100),freq = TRUE)
hist(customer$Age,breaks=c(0,40,60,100),freq = TRUE,col = "blue")

hist(customer$Age,breaks=c(0,40,60,100),freq = TRUE,
     col = "lightsalmon3",main = "Hisotgram of Age")

# Heart Data Visualizayion :---------------------------------------------
## histogram : نمايش هيستوگرام --------------------------------------------
# Heart Data
data1<-read.csv(file.choose())
names(data1)[1]<-"age"

hist(data1$age)

hist(data1$age,col = "olivedrab4")                    # col = رنگ ميله ها 
hist(data1$age,col = "olivedrab4",border = 5,
     xlab = "Age in Year",main = "Histogram")   #border= هر عدد بيانگر يک نوع رنگ است

# border= کد رنگ ستون ها را تعیین می کند


### Scatter Plot : نمودار پراکندگي : ---------------------------------------------------------

# Heart Data
data1<-read.csv(file.choose())
names(data1)[1]<-"age"
#------------------------------------------



cor(data1$age,data1$depression)# نمايش سن بر اساس  مقدار افسردگي
plot(data1$age,data1$depression)   


plot(data1$age,data1$depression,main = "Scatter plot",
     xlab = "age",ylab = "depression",pch=1,col=("blue"))

# pch: شکل ترسيم را تعيين ميکند   

## ضريب همبستگي : 
cor(data1$age,data1$depression)         
cor(dt$Sepal.Length,dt$Petal.Length)   

# iris ------------------------------
iris
dt<-iris
dt
plot(dt$Sepal.Length,dt$Petal.Length)  

plot(dt$Sepal.Length,dt$Petal.Length,main = "Scatter plot",
     xlab = "Sepal.Length",ylab = "Petal.Length",pch=19,
     col="blue")


# col="blue","red","green"= میتوانی بصورت دستی رنگ را تغییر دهیم
# pch: شکل ترسيم را تعيين ميکند

iris
# روش اول
plot(dt$Sepal.Length,dt$Petal.Length,main = "Scatter plot",
     xlab = "Sepal.Length",ylab = "Petal.Length",pch=19,col=dt$Species)

# 
?point

# روش دوم = ~
plot(dt$Petal.Length~dt$Sepal.Length,main = "Scatter plot",
     xlab = "Sepal.Length",ylab = "Petal.Length",pch=12,col=dt$Species)

# tild: ~

###############################

### visualization - pie chart : پاي چارت ------------------------------------------------

# Simple Pie Chart
Region <- c(15, 17,9, 21, 13)
CityName <- c("Paris", "London", "Seoul", "Tronto", "New Yourk")

pie(Region, labels = CityName, main="Pie Chart of Cities")


# Hear Data Pai chart: ---------------------------

#Heart Data

data1<-read.csv(file.choose())
names(data1)[1]<-"age"

#----------------------------

table(data1$chest.pain)   # نمايش جدول فراواني ستون درد قفسه سينه

# به کد بالا تابع پاي چارت اضافه مي کنيم

pie
pie(table(data1$chest.pain))


pie(table(data1$chest.pain), col = c("blue","green","red","yellow"),
    main = "pie chart")

#legend= تابع راهنمای نمودار ---------
legend

legend("topleft",legend = c("low","middle","high","very high"),
       col = c("blue","green","red","yellow"), ncol = 1, box.lwd = 5,lwd =4,
       cex = 0.5)

#topleft: چیدمان باکس
#ncol= تعداد ستونهاي داخل باکس را تعيين ميکند
#box.lwd= قطر خط دور باکس تغییر می کند
#lwd= قطر رنگهاي داخل باکس تغيير ميکند
#cex= سایز باکس تغییر می کند


## روش گام به گام
t<-table(data1$chest.pain)      
t
names(t)<-c("low","middle","high","very High") # نام ستون هاي جدول بالا را تغيير بده
t

#
pie(t)
pie(t,col=c("blue","green","red","yellow"),main = "pie chart")

## روش یک مرحله ای :

pie(table(data1$chest.pain),col=c("blue","green","red","yellow"),
    main = "pie chart",c("low","middle","high","very High"))


## Visialization - Box plot : باکس پلات -------------
# Heart Data

data1<-read.csv(file.choose())
names(data1)[1]<-"age"
str(data1)
boxplot(data1$age)


boxplot(data1$age)
boxplot(data1$age,col="green",main="box plot",horizontal =TRUE)



### Visialization - ggplot for Histogram --------------------------------------
#نصب پکیج رسم نمودار
# ggplot : یک تابع و یک کتابخانه است

install.packages("ggplot2")

# فراخوانی پکیج 
library(ggplot2)

#ggplot(data=data1): فراخانی دیتا
#geom_histogram : رسم هیستوگرام
# aes = aesthetic : تنظیمات نمودار


# Histigram: 

ggplot(data=data1)+geom_histogram(aes(x=age)) # aes=  تنظيمات نمودار و موقعيت برچسب محور

### نکته:
# پس از اجرای دستور ، برنامه هشدار میدد که بهتر است عرض دسته به سی تایی تبدیل شود
# عرض دسته = ماکسیمم ستون - مینیمم ستون / تعداد کل ستون

# محاسبه عرض دسته
defbin<-(max(data1$age)-min(data1$age))/30
defbin  # 1.63 ~ = 1 تقریبا برابر یک

# پس : binwidth = 1
ggplot(data=data1)+geom_histogram(aes(x=age),binwidth = 1)
#binwidth =1: عرض دسته



#Exercise
ggplot(dat=data1)+geom_histogram(aes(x=age),bins = 10)
#bins ": تعداد دسته

#Exercise
dt<-iris
ggplot(data=dt)+geom_histogram(aes(x=Sepal.Width),bins = 10)


## Visialization - Scatter : نمودار پراکندگی : ---------------------

#روش اول:
ggplot(data=data1)+geom_point(aes(x=age,y=blood.pressure))
# geom_point = رسم نمودار نقطه ای
# aes= eastatic = تنظيمات نمونه و تعيين مولفه اي محورها

# روش دوم:
ggplot(data=data1,aes(x=age,y=blood.pressure)) +geom_point()

# ---------------------------------------------------------------

g<-ggplot(data=data1,aes(x=age,y=blood.pressure)) +
  geom_point(aes(colour=factor(data1$c)),alpha=0.3)

g+scale_color_manual(values = c("green","blue"),name="class")

# colour = ترکیب رنگ را بر اساس داده های ستون برپپچسب تعیین کن
# factor(data1$c)= ستون باینری را فاکتور می کنیم
#alpha= میزان شدت رنگ نقاط


#scale_color_manual: تابع تنظیمات منوال رنگ :

g+scale_color_manual(values = c("red","blue"),name="class")
#Name= نام legend


## 
g+scale_color_manual(values=c("green","blue"),name="classes",
                     labels=c("First Class", "Second Class"))+
  guides(col=guide_legend(title.position = "top",label.position="bottom",
                          label.theme=element_text(angle=90),direction="Horizantal"))

# Guides; راهنمای طرح بندی
# col = فهرست
# guide legend = راهنماي فهرست legend
# title.position : نام کلاس بالا قرار بگیرد
# label.position : لیبل ها پائین قرار بگیرند
# element_text : تابع موقعیت المنتهای legend
# dirction : لیبلها بصورت عمودی یا افقی کنار هم قرار بگیرند


#ggplo / diamond : رسم نمودارهای دیتاست الماس -------------------
data2<-diamonds

library(ggplot2)
# نمودار توزیع نقطه ای :
# ابتدا اطلاعات پلات را  تعریف کرده و در متغییر قرار میدهیم

g<-ggplot(data2,aes(x=carat,y=price))   # console


g+geom_point()                  # با استفاده از تابع نمایش میدهیم
g+geom_point(aes(color=color))  # رنگ را از ستون رنگ بخوان و تفکیک کن
g+geom_point(aes(color=color,shape=cut))

# shape=cut : بر اساس کیفیت برش از ستون برش اشکال را تعیین میکند
#aesthetics : نحوه ترسيم مولفه ها بر روي نمودار

# Box plot : --------------------------------------------------
library(ggplot2)
ggplot(data2 , aes(y= carat , x=cut)) + geom_boxplot()


# Violin Plot : ------------------------------------------------
ggplot(data2 , aes(y= carat , x= cut)) + geom_violin()

# Violin vs Jitter : first make g variable :
g <- ggplot(data2 , aes(y= carat , x= cut))

# geom_jitter() ---------------------------------------------
g + geom_jitter() + geom_violin() # نمایش تراکم پذیری 
g + geom_jitter(color = "blue" , alpha = 0.2) + geom_violin()
# alpha = شدت رنگ


######################################## ِData Preprocessing ####################################

#### outlier detection  کشف داده های پرت ----------------------------------------------


# Heart Data , Data Frame
install.packages("DMwR")
library("DMwR") 
# Data Mining with r

# Data Mining With R : 
# second Edition :
install.packages("DMwR2")
library("DMwR2") 


# براي اجراي تابع اين کتابخانه مي بايست ديتا فريم به حالت ماتريس تبديل گردد
# محدودیت پکیج

# data.matrix 

h1 <- data.matrix(data1[,1:13])     # دیتا فریم را در ماتریس  قرار بده 
h1
h2 <- na.omit(h1)                   # حذف داده های نامعلوم در سطر
h2

## Local outliers factor
## k=5 : بر اساس پنج دیتای هر نقطه تصمیم بگیرد که آن نقطه محتمل داده های پرت هست یا خیر
# بر اساس شاخص تراکم پذیری و پراکندگی اطراف یک پوینت
# 1 ) اجرای تابع lof
# K= تعداد همسایگان 

# k=5
# lofactor

lof <- lofactor(data = h2 , k=5)  # console
lof

# 2 ) حال می توانیم مجددا به دیتا فریم تبدیل کنیم
h3 <- data.frame(h2)   # show in console       

# 3 ) به دیتا فرم یک ستون  اضافه می کنیم به نام lof
h3$lof <- lof         # show in enve
h3
# 4 ) جهت بررسی بیشتر هیستوگرام میگیریم :  
hist(h3$lof, breaks = 40) 


# lof بيشتر محتمل تر به داده هاي پرت است
# تراکم پذيري بيشتر و پراکندگي کمتر بهتر است
# 5) طبق هیستوگرام فراوانی های کم را حذف می کنیم

h4 <- h3[h3$lof<1.4,]   # مقادیر بیشتر از حدود تعیین شده محتمل بر داده های پرت هستند       
h4  # مشاهده  و بررسی h4
hist(h4$lof,breaks=40)


#### Missing Value داده های گم شده یا بی ارزش  -------------------------------------------------

# simple example ;
x <- c(1, 2, NA, 10, NA, 4, 3)
is.na(x) 


# Missing value in " House Price"  data set : --------------

setwd("C:/Users/saman/Desktop") 
df<-read.csv(file.choose(),header=T)
str(df)
summary(df)
head(df)
mean(df$n_hos_beds,na.rm = TRUE)

# Define which row no are NA
is.na
which(is.na(df$n_hos_beds))

# Replace Missing Value by Mean
df$n_hos_beds[is.na(df$n_hos_beds)]<-mean(df$n_hos_beds,na.rm = TRUE)
summary(df$n_hos_beds)

which(is.na(df$n_hos_beds))


# Missing value in " Heart Data" data set ---------------------
setwd("C:/Users/gsstech/Desktop")
data1<-read.csv(file.choose())
summary(data1)

data2<-data1
data2


data1[data1==""]<-NA        # به جای سلول های خالی ، NA قرار بده
summary(data1)

is.na()
sum
any()

# آیا در ستون کلسترول دیتای خالی وجود دارد؟
# any : True or False
any(is.na(data1$cholestoral))


# در صورت وجود داده های خالی، آنرا جمع کن
sum(is.na(data1$cholestoral))

# colsum = نمایش جمع داده های بی ارزش تفکیک هر ستون
colSums(is.na(data1))




colMeans(is.na(data1))        # نمایش میانگین سلولهای بدون ارزش
colMeans(is.na(data1))*100    # نمایش  بصورت درصد

# با توجه به  میانگین گیری در بالا : 
data1<-data1[,-c(11:13)] # ستونهائی که دیتاهای بی ارزش بالای پنجاه درصد هستند را حذف می کنیم

# حال مجددا دستور را  اجرا می کنیم : 
colMeans(is.na(data1))        # console
colMeans(is.na(data1))*100    # نمایش درصد


#### Handeling Missing Value مدیریت دیتا های بی ارزش -----------------------------

#1-Delet
data1<-data2
data1<-na.omit(data1)   # na.omit= حذف داده بی ارزش درهر سطر

#2-Replace

# جایگزینی داده های گم شده با میانگین مقادیر ستون
data1<-data2

data1$cholestoral[is.na(data1$cholestoral)]<-mean(data1$cholestoral,na.rm=TRUE)  
# na.rm = True : ابتدا دیتاهای گم شده را حذف و سپس میانگین بگیر


# روند میانگین را نماتیش بده
data1<-data2
data1$cholestoral[is.na(data1$cholestoral)]<-round(mean(data1$cholestoral,na.rm=TRUE))



#### Duplicate Data داده های تکراری ---------------------------------------

## داده های تکراری: چنانچه یک سطر عینا تکرار شده باشد

data1<-data2

# duplicated
sum(duplicated(data1))            # تعداد ردیف های تکراری را نمایش می دهد


row<-which(duplicated(data1))     # ردیف های تکراری را نمایش می دهد
row

data1<-data1[-row,]               # حذف ردیف های تکراری

sum(duplicated(data1))

######  Combining datasets   تر کیب دیتا ست ###########----------------------------------------------


## 1 )  Appending datasets : --------------------------------------
## الصاق داده در ردیف
# Variables in both sets have same names

# Step 1 : Create a 2 datasets to append : 

datmale <- data.frame(id=c("001", "002", "003", "004"),
                      var1=c("Male","Male","Male","Male"),
                      var2=c("","xx","","xx"),
                      var3=c("xx","xx","xx","xx"))


datfemale <- data.frame(id=c("001", "002", "003", "004"),
                        var1=c("Female","Female","Female","Female"),
                        var2=c("yy","yy","yy","yy"),
                        var3=c("yy","yy","yy","yy"))

# Step2 :  using rbind function to append row

dat1 <- rbind(datmale, datfemale)   


### 2 ) Data Merging ادغام داده ها----------------------------
# با شناسه یکسان

# 1 ) One-to-one merging : 
datmale<- data.frame(id=c("001", "002", "003", "004"),
                     var1=c("xx","xx","xx","xx"),
                     var2=c("","xx","","xx"),
                     var3=c("xx","xx","xx","xx"))


datfemale <- data.frame(id=c("001", "002", "003", "004"),
                        var1=c("yy","yy","yy","yy"),
                        var2=c("yy","yy","yy","yy"))


dat2 <- merge(datmale, datfemale, by = "id")

names(dat2)<-c("id","var1","var2","var3","var4","var5")

# 2 ) One-to-many merging : 

# Create a 2 datasets : 

SetA<- data.frame(id=c("001", "002", "003", "004"),
                  var1=c("xx","xx","xx","xx"),
                  var2=c("","xx","","xx"),
                  var3=c("xx","xx","xx","xx"))


SetB <- data.frame(id=c("001", "002","002", "003","003","003", "004"),
                   var4=c("yy","yy","yy","yy","yy","yy","yy"),
                   var5=c("yy","yy","yy","","","","yy"))


dat3 <- merge(SetA, SetB, by = "id")

dat3
# 3 ) Merging with No ID : بدون شناسه
# ابتدا دو دیتا ست میسازیم: 
# دیتا ست اول : 
PersonalInformation<-data1[1:300,1:2]   # سطر یک تا سیصد و ستون یک و دو را در متغیر قرار بده
PersonalInformation$id<-1:300           # id = ستون جديد ايجاد مي کنيم و از يک تا سيصد به ستون عدد ميدهيم           

# دیتا ست دوم : 
Vital<-data1[1:250,3:6]     # سطر یک تا دویست و پنجاه و ستون سه تا شش را در متغیر قرار بده
Vital$id<-1:250             # مقادیر یک تا دویست و پنجاه را در ستون جدید قرار بده

## ادغام دو دیتاست بالا
# merge = تابع ادغام
# ادغام بر اساس ستون مشابه

PersonalVital<-merge(PersonalInformation,Vital,by="id")  # by id : بر اساس ستون مشترک
PersonalVital

## در صورتیکه ستون مشترک نداشته باشیم : 

# مثال : 
names(Vital)[5]<-"code"  # تغییر نام ستون پنجم

PersonalVital2<-merge(PersonalInformation,Vital,by.x="id",by.y="code") 
names(PersonalVital2)[2]<-"age"




### Data Aggregation تجمیع داده  -----------------------------------------------------------------
data1<-read.csv(file.choose())
names(data1)[1]<-"age"
## محاسبات آماري با توجه به  مقايسه يک يا چند ستون با هم
# تغییر نام ستون


agg1<-aggregate(age~sex,data1,mean)  # env, میانگین ستون سن را بر اساس جنسیت نمایش دهد
# aggregate = تابع تجمیع , ~ = tilde : بر اساس
agg1

# میانگین تمامی ستونها بر اساس ستون جنسیت و قند خون نشان  میدهد

agg2<-aggregate(.~ sex+blood.sugar,data1,mean)  # env
# . = بر اساس تمام ستونها
agg2

# مینیمم و ماکسیمم ستون کلسترول را بر اساس جنسیت در دو ستون نشان میدهد
# cbind = چند ستون را کنار هم میگذارد 

agg3<-cbind(aggregate(cholestoral~sex,data1,min),
            aggregate(cholestoral~sex,data1,max)[,2]) # env

names(agg3)<-c("sex","min_cholestoral","max_cholestoral")
View(agg3)

# ------------------------------------------------------

##### Combining categories – use " mutate " and ifelse


# trainData 

install.packages("tidyverse")
install.packages("dplyr")
library("dplyr")
library("tidyverse")

setwd("C:/Users/saman/Desktop") 
trainData<-read.table("trainData.txt",header = T)

names(trainData)
head(trainData)
tail(trainData)

table(trainData$occupation)



# Creat "occup: variable and combine categories :

iris
head(iris)
# head(iris) : iris %>% head()
# 
# iris %>% head() %>% summary()

# mutate : creat or modify columns

trainData <- trainData %>%
  mutate(occup = ifelse(occupation== "Unemployed" | occupation
                        == "Student", "Unemployed",
                        ifelse(occupation== "Employed-informal" | occupation ==
                                 "Employed-formal", "Employed", NA)))
# compare 2 tables : 
table(trainData$occupation)
table(trainData$occup)
trainData

### Rotating Data Frame ###---------------------------

## 1 :  Rotating data (wide to long) ### -------------------

# converts data with "multiple variables" to "multiple observations"

# needs to reshape2 pakcage :
install.packages("reshape2")
library(reshape2)



# First make a data set : 
# dat1 reshape to dat2 : 
dat1 <-data.frame(id = c(1,2,3),
                  temp1 = c(36.2, 38, 37.6),
                  temp2 = c(37, 35.9, 36.8),
                  temp3 = c(36.8, 37.5, 38.5))

# melt : function to Rotatting ( molten data frame)



dat2 <-melt(dat1, id.vars = c("id"),
            variable.name = "temperature",
            value.name = "temperature_value")


# or use : reshape2::melt :
dat2 <- reshape2::melt(dat1, id.vars = c("id"),
                       variable.name = "temperature",
                       value.name = "temperature_value")


## 2 : Rotating data (long to wide) ##----------------------------------

# converts data with multiple observations to multiple variables by an "id"

# dcast : cast molten data fram in to data set shape
dat3 <-dcast(dat2, formula = id ~ temperature,
             value.var = "temperature_value")

# or use : reshape2::dcast
dat3 <- reshape2::dcast(dat2, formula = id ~ temperature,
                        value.var = "temperature_value")
# value.var : name of column which stores values

library(moments)

moments::shapiro.test

# ------------------------------------------

### Data Discretization : گسسته سازی داده : -----------------------------------------------------------

# House price data set

data1<-read.csv(file.choose())
data1


cat<-rep(NA,506)   # rep=replicate : # تکرار دیتاهای از دست رفته به تعداد سطرها
cat                # show on env



# 2 ) ترکیب سه ستون : 
dataPrice<-cbind("price"=data1[,1],cat,data1[,2:19])  # show on env
#1) "price"=data1[,1] : ستون اول قیمت
#2) cat : ستون دوم
#3) cat,data1[,2:14] : ستون سوم


# 3) تعیین نام دسته بندی بر اساس قیمت

dataPrice$cat[dataPrice$price>40]<-"Expensive"                     # show on env    
dataPrice$cat[dataPrice$price<=40 & dataPrice$price>30]<-"Moderate"  
dataPrice$cat[dataPrice$price<=30]<-"Cheap" 

# ---------------------------------------------

# To find your desire function within packages:

install.packages("sos",dependencies = TRUE)
library(sos)

findFunction("mold")


# ----------------------------------------

install.packages("BSDA")
