
# Importing Data

>“It is a capital mistake to theorize before one has data.” 
><div style="text-align: right">
> --- Arthur Conan Doyle </div>

First off...

 <h4>Advanced R Challenges</h4>


This challenge is to understand and use this function to read in a series of csv files and transform them into
one data.frame.


```r
#Take this function and modify it to combine csvs

CombineData <- function(dir) { #See Base R cheatsheet for function format
  
  filepath <- getwd() #Base R cheatsheet Working Directory
  setwd(filepath) ##Base R cheatsheet Working Directory
  
  dirs <- list.dirs(path = dir, full.names = TRUE) #get directories
  files <- list.files(path=dirs, pattern="*.csv", full.names=T, recursive=F) #get files 
  #in those directories with .csv at the end (see ?regex)
  subids <- regmatches(files, regexpr("1\\d{3}", files)) # optional (see ?regmatches, ?regex)
  condition1 <- as.character(lapply(strsplit(files, "_"), "[",4)) # optional (see ?lapply, ?strsplit)
  condition <- substr(condition1, 4,4) # optional (see ?substr)
  
  
  for (i in 1:length(files)) { #See Base R for correct structure of For Loop
    infile <- read.csv(files[i]) #Read all of the .csv's in files
    infile$subids <- as.factor(subids[i]) #subject id was in the title of the .csv
    infile$condition <- as.factor(condition[i]) #condition was in the title of the .csv
    
    if(!exists("combined.data")) { #Best practices
      combined.data <- infile #create new data.frame
    }
    else { #OR
      combined.data <- rbind(combined.data,infile) #row bind new data.frame with infile info
    }
  }
  return(combined.data) #Return your new data.frame
}
```


## Reading files into R {-}

Some of you have .SPSS data, some .txt, and others .csv. All of you will have to identify which function will read your data. The package in the bundle of packages known as the *tidyverse* that performs this job is called <code>readr</code>. The readr package has functions like:


```r
readr::read_csv()
readr::read_lines()
readr::read_file_raw()
```

Other packages can help with weird file types like .SPSS such as the <code>haven</code> package.


```r
install.packages('haven')
library(haven)
haven::read_spss()
haven::read_sav()
```

One thing that I like to do before I start working is clearing out my environment and loading my desired packages. You can do that with...

```r
rm(list = ls())
library(tidyverse)

df <- read_csv("data/WorkingMemoryEyeTracking.csv") #Read in csv and turn into a tibble
```

## What's a tibble?

>"Tibbles are a modern take on data frames. They keep the features that have stood the test of time, and drop the features that used to be convenient but are now frustrating (i.e. converting character vectors to factors)."
><div style="text-align: right">
> --- [Tibbles Page](https://cran.r-project.org/web/packages/tibble/vignettes/tibble.html) </div>


```r
class(df) #It's a data.frame with attributes for extra info
#> [1] "spec_tbl_df" "tbl_df"      "tbl"         "data.frame"
```

If you type the name of the tibble...


```r
df
#> # A tibble: 1,600 × 11
#>   Participant Block version Trial Difficulty Part    Start  Stop PicNumber video
#>         <dbl> <dbl> <chr>   <dbl> <chr>      <chr>   <dbl> <dbl>     <dbl> <chr>
#> 1        1002     1 normal      1 easy       questi…  48.6  54.4        37 <NA> 
#> 2        1002     1 normal      1 easy       anwser   54.8  56.8        37 <NA> 
#> 3        1002     1 normal      2 hard       questi…  59    64.3        18 <NA> 
#> 4        1002     1 normal      2 hard       anwser   64    65.8        18 <NA> 
#> 5        1002     1 normal      3 hard       questi…  68    73.6        20 <NA> 
#> 6        1002     1 normal      3 hard       anwser   73.8  75          20 <NA> 
#> # … with 1,594 more rows, and 1 more variable: X11 <chr>
```

It automatically shows the first 10 rows. Now type...


```r
as.data.frame(df) #A ton of rows get printed.
```
This is the kind of stuff tibbles make nicer.

## Save your dataset:

```r
save(df, file = "data/eyedata.RData")
```

Now you can clean your environment...


```r
rm(list = ls()) 
```

and load back your data.frame


```r
load('data/eyedata.RData')
```

.RData files can hold multiple data.frames, values, or other data types.


## Cleaning your data file 
First let's visualize some stuff

```r
View(df)
#> Warning in system2("/usr/bin/otool", c("-L", shQuote(DSO)), stdout = TRUE):
#> running command ''/usr/bin/otool' -L '/Library/Frameworks/R.framework/Resources/
#> modules/R_de.so'' had status 1
```

...or...


```r
df[1,1:11] #This is subsetting, row = 1, columns equal 1:11 (1 to 11)
#> # A tibble: 1 × 11
#>   Participant Block version Trial Difficulty Part    Start  Stop PicNumber video
#>         <dbl> <dbl> <chr>   <dbl> <chr>      <chr>   <dbl> <dbl>     <dbl> <chr>
#> 1        1002     1 normal      1 easy       questi…  48.6  54.4        37 <NA> 
#> # … with 1 more variable: X11 <chr>
```


Looks like we have some messy columns. We can clean them up.


```r

cleaner <- df %>% #This is a pipe (%>%). See the link below to learn about pipes
  select(-10, -11) %>% #This select function is from dplyr. Type ?dplyr into the console to learn more
  na.omit() #%>% # I've commented out the pipe, so the last call is to omit NAs. Delete the first # to run the lines below.
  # group_by(Participant) %>% # This code doesn't run now. Delete the first # to run it.
  # summarise(count1 = n()) # This code doesn't run now. Delete the first # to run it.
```
(to learn about [pipes](https://style.tidyverse.org/pipes.html)...)

We can coerce columns in the data.frame to a factor...


```r
df$Participant <- as.factor(df$Participant)

class(df$Participant)
#> [1] "factor"
```

...and a lot of other transformations that we'll be talking about in the coming classes. For now, please attempt to read in your dataset, save it as a .RData file, clean your environment, load that data file, and start transforming your tibble/data.frame.
