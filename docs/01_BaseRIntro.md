---
output:
  pdf_document: default
  html_document: default
---

# Introduction

> "At the heart of quantitative reasoning is a single question: Compared to what?"
>
> ::: {style="text-align: right"}
> ---Edward Tufte
> :::

First off...

<h4>Advanced R Challenges</h4>

Write a for loop to combine multiple .csv files, (each file representing one participant's data) and output a <code>data.frame</code>. Save that <code>data.frame</code> to a <code>.RData</code> file.

## BaseR walkthrough {.unnumbered}

[R](https://www.r-project.org/) is mostly made up of a bunch of user-developed functions aimed at a specific purpose or task. These functions are wrapped in bundles called **Packages** that can be downloaded from [CRAN](https://cran.r-project.org/). However, [R](https://www.r-project.org/) and [Rstudio](https://www.rstudio.com/) have built-in calls to download these packages.

To get packages, you can use...


```r
#To install a new package... (These are comments. Explain every line of your code with these.)
#Queue collaborator story
install.packages("datasets")
```

Once a package is installed, you can load the functions into your Rstudio environment using...


```r
#To load a package in order to use its functions do this...
library(datasets)
library(MASS)
```

If you want to search through objects (functions, data) within a package do this... <code>datasets::<tab></code>


```r
require(MASS)
#> Loading required package: MASS
require(datasets)
MASS::Cars93

data() #list all of the available datasets
```

## Help

The help function is very useful. All packages are required to have documentation of their functions, as well as a vignette (real world example of the main functions of their package)


```r

help.search('cars') 

help(package = 'dplyr') #If you don't have dplyr installed, this won't work.

```


```r
#If you don't have dplyr, install the tidyverse (a bundle of packages) 
#with install.packages('tidyverse')
# View(cars)
#dimensions
dim(cars) #Which comes first rows or columns?
#> [1] 50  2
str(cars) #What is str short for? Hint: use ?str
#> 'data.frame':	50 obs. of  2 variables:
#>  $ speed: num  4 4 7 7 8 9 10 10 10 11 ...
#>  $ dist : num  2 10 4 22 16 10 18 26 34 17 ...
# View(cars) #Which pane does it open in? 
class(cars) 
#> [1] "data.frame"


#classes of vectors (columns) within data.frame
class(MASS::Cars93$Type)
#> [1] "factor"

#levels of the factor
levels(MASS::Cars93$Type)
#> [1] "Compact" "Large"   "Midsize" "Small"   "Sporty"  "Van"

#What happens if you use levels or class on cars instead of Cars93?
```

This symbol <code>\<-</code> is how you assign objects to something in R


```r
#For example, you can make sure that Type is a factor in the Cars93 dataset by reassining it.

Cars93$Type <- as.factor(Cars93$Type)
#Or change the class
Cars93$Type <- as.character(Cars93$Type)

class(Cars93$Type)
#> [1] "character"
levels(Cars93$Type)
#> NULL
```

## VECTORS


```r

#Make your own vectors
c(1,2,3)
#> [1] 1 2 3
2:6
#> [1] 2 3 4 5 6
c(2:6,1,2,3)
#> [1] 2 3 4 5 6 1 2 3

seq(2,10,by=1)
#> [1]  2  3  4  5  6  7  8  9 10
#How would you go from 10 to 2 by 1 in a sequence?
```

The <code>c()</code> is short for *combine*. From the help call <code>?c</code>, "The default method combines its arguments to form a vector. All arguments are coerced to a common type which is the type of the returned value, and all attributes except names are removed."


```r

newV <- c(2,3,4,5,6,7,8,9,10) #save your vector
class(newV)
#> [1] "numeric"

newV2 <- c(2,3,4,5,6,7,8,9,"a","b")
class(newV2)
#> [1] "character"
```


```r



newV*newV #You can multiply vectors together! (or do other maths with them)
#> [1]   4   9  16  25  36  49  64  81 100
#See Base R cheatsheet -Maths Functions-

rev(newV2)
#>  [1] "b" "a" "9" "8" "7" "6" "5" "4" "3" "2"

#Try subsetting the vector by the position or value as shown in the cheatsheet
newV2[3:5]
#> [1] "4" "5" "6"
cars[,2] <- dim(cars)[1]
```

## PROGRAMMING

Like many programming languages, R has the ability to easily create vectors and two-dimensional data. You can look at preexisting datasets and subset them, or create vectors of numbers for iteration with for loops and while loops.


```r


length(cars) #you can get 1 dimension of a data.frame...
#> [1] 2
length(cars$type) #or the other... OR
#> [1] 0
dim(cars)[1] #subset the dim
#> [1] 50

#This is useful for for loops if you want to iterate through every row or column of something.
1:length(cars$dist)
#>  [1]  1  2  3  4  5  6  7  8  9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25
#> [26] 26 27 28 29 30 31 32 33 34 35 36 37 38 39 40 41 42 43 44 45 46 47 48 49 50
1:dim(cars)[1]
#>  [1]  1  2  3  4  5  6  7  8  9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25
#> [26] 26 27 28 29 30 31 32 33 34 35 36 37 38 39 40 41 42 43 44 45 46 47 48 49 50
#NOTE: for loops are a lot slower than vectorized functions (check the advanced R book
# for a detailed explanation)
```

There are 5 basic types of objects in the R language:

-   Vectors - Atomic vectors can store homogeneous data types such as character, doubles, integers, raw, logical, and complex. A single element variable is also said to be vector.
-   Data Frames - Data frames are 2-dimensional tabular data object in R programming. Data frames consists of multiple columns and each column represents a vector. Columns in data frame can have different modes of data unlike matrices.
-   Lists - List can contain heterogeneous data types such as vectors or another lists.
-   Matrices - To store values as 2-Dimensional array, matrices are used in R. Data, number of rows and columns are defined in the matrix() function.
-   Arrays - array() function is used to create n-dimensional array. This function takes dim attribute as an argument and creates required length of each dimension as specified in the attribute.

Also like many programming languages you can measure how long code takes to run by checking the system time of your computer


```r

#You can check the speed of something with...
Sys.time()
#> [1] "2022-01-05 14:24:03 PST"
```

You do this by saving Sys.time() to a variable and then subtracting the variable from Sys.time() at the end of execution. For example, ...

### For loop


```r
#Example:
tic <- Sys.time()
seq(1,1000000, by = 1)
Sys.time() - tic
#Still it's a computer so it'll be pretty fast at this stuff
tic <- Sys.time()
for (placeholder in 1:1000) {
  print(placeholder)
}
```

(Try adding zeros to the end of 1000 and see how long it takes to run.)

### While loop


```r
#While loops are dangerous
i <- 0
while(i < 1000) {
  print(i:10000)
}
#What happened?
```

### Ifelse statement


```r
i <- 0
##If statement
if (i > 0) {
  print("yay")
} else {
  print("boo")
  i =+1 #what does this do?
}
#> [1] "boo"
```

### Function


```r
#How does this work?
newfunction <- function(placeholder) {
  new_variable <- placeholder*i
  return(new_variable)
}

newfunction(10)
#> [1] 10
```

## Assignment 1

Read your own dataset into R. Some of you have .SPSS data, some .txt, and others .csv. All of you will have to identify which function will read your data. Then, assign it to a variable and save that variable to a <code>.RData</code> file.


```r
# Reading in Your Data 

?read.csv


library(readr) #From the tidyverse

#Everyone identify which argument you will need to import your data

df <- read.<your datatype>("PATH TO YOUR DATA/FILENAME.DATATYPE") #assigns your data to df (short for dataframe)

save(df, file="NAMEYOURFILE.RData")

```
