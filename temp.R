
save(Cars93, file = "Cars93Dataset.RData")
load('Cars93Dataset.RData')

View(Cars93)
df <- Cars93
library(tidyverse)


cleaner <- df %>% #This is a pipe (%>%). See the link below to learn about pipes
  select(-10, -11) %>% #This select function is from dplyr. Type ?dplyr into the console to learn more
  na.omit() %>% # I've commented out the pipe, so the last call is to omit NAs. Delete the first # to run the lines below.
  group_by(Manufacturer) %>% # This code doesn't run now. Delete the first # to run it.
  summarise(count1 = n()) # This code doesn't run now. Delete the first # to run it.

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


Cars93 %>%
  group_by(Manufacturer) %>%
  summarise(count = n())

apply(ccolor, MARGIN = 2, FUN = class)

tapply(X = ccolor$RT, INDEX = ccolor$s, FUN = mean)

rnorm(30)
?rnorm

dataPoints <- matrix(rnorm(mean = 10, sd = 2,30), nrow=5, ncol=6)


dataPoints_means <- apply(dataPoints, 2, mean)

dataPoints_Trans1 <- sweep(dataPoints, 2, dataPoints_means,"-")

?airquality

library(tidyverse)

newdf <- ccolor

df2 <- ccolor %>%
  filter(RT > 150) %>%
  summarise(count = n())

newdf %>%
  group_by(RT > 150) %>%
  summarise(n = n())

newdf %>%
  group_by(RT > 150) %>%
  summarise(n = n()) %>%
  mutate(freq = (n / sum(n))*100)


View(newdf %>% #Step 1 is to group by the subject and get the mean and sd
  group_by(s) %>%
  mutate(mRT = mean(RT), RTsd = sd(RT)))

hist(ccolor$RT, breaks = 100)
abline(v = mean(ccolor$RT),
       col = "red",
       lwd = 2)


legend(x = "topright", # location of legend within plot area
       c("Density plot", "Mean", "Median"),
       col = c("#FFFFFF", "red", "blue"),
       lwd = c(2, 2, 3))

# Current work ----

dat2 <- structure(list(School = structure(c(2L, 2L, 2L, 1L, 1L, 1L, 3L,3L, 3L), 
                                          .Label = c("School1", "School2", "School3"), 
                                          class = "factor"), 
                       Year = c(2015L, 2014L, 2013L, 2015L, 2014L, 2013L, 2015L, 2014L, 2013L), 
                       Rate = c(80L, 90L, 11L, 70L, 50L, 30L, 60L,50L, 40L), 
                       Order = c(1L, 1L, 1L, 2L, 2L, 2L, 3L, 3L, 3L), 
                       Order2 = c(1L, 2L, 3L, 1L, 2L, 3L, 1L, 2L, 3L), 
                       Order3 = structure(c(NA_integer_,
                                            NA_integer_, NA_integer_, NA_integer_, NA_integer_, NA_integer_, 
                                            NA_integer_, NA_integer_, NA_integer_), 
                                          .Label = c("School2","School1","School3"), class = "factor")),
                  .Names = c("School","Year", "Rate", "Order", "Order2", "Order3"), 
                  row.names = c(NA,-9L), class = c("tbl_df", "tbl", "data.frame"))


ggplot(data = dat2, mapping = aes(x = School, y = Rate)) +
  geom_point()

levels(gss_cat$race)

require(ggplot2) #We will get more into ggplot next week, 
#but for now here is an introduction.

ggplot(data = gss_cat, mapping = aes(x =race)) +
  geom_bar() +
  scale_x_discrete()

ggplot(data = gss_cat, mapping = aes(x = marital)) +
  geom_bar() +
  scale_x_discrete(drop = FALSE)

gss_cat$marital <- fct_relevel(gss_cat$marital,"Never married","Married" ,"Separated",
                               "Divorced","Widowed","No answer")
levels(dat2$School)  

dat2$School <- fct_relevel(dat2$School, levels(dat2$School)[2])

# New Numbers ----

9018 #undergraduates

load("data/ready.RData")
newdf %>%
  group_by(con) %>% 
  summarise(mrt = mean(RT),sd(RT))

newdf %>%
  group_by(s,con) %>% 
  summarise(mrt = mean(RT),sdrt = sd(RT)) %>%
  group_by(con) %>% 
  summarise(mrt = mean(mrt), sdrt = mean(sdrt))



newpeople <- people %>%
  pivot_wider(names_from = "",values_from = "numeros")  

newpeople %>%
  pivot_longer(cols = age:height,
               names_to = "stuff",
               values_to = "numeros")

weirdpeople <- people %>%
  separate(name, into = c("first","last"),
           sep = "d")

weirdpeople %>%
  unite(col = "names",befored:afterd, sep = "d")


length(unique(df$Participant))

rm(list = ls())

widerdf %>%
  mutate(total_cost = ifelse(is.na(`Room/Board`), 
                             `Fees/Tuiton`, `Fees/Tuition`+`Room/Board`))

library(forcats)
library(tidyverse)

# Eileen ----
# cleaner$SPhase <- fct_


View(cleaner[-1,] %>%
       pivot_wider(names_from = Indicator:Subgroup, 
                   values_from = Value:`Confidence Interval`)) 


View(cleaner[-1,] %>%
  pivot_wider(names_from = c(Indicator:State,Phase:`Time Period End Date`,SPhase), 
              values_from = c(Subgroup,Value:`Confidence Interval`)))



df %>%
  group_by(Year) %>%
  mutate(mcosts = mean(Value),sdcost = sd(Value)) %>%
ggplot() + geom_histogram(aes(x = Value)) +
  geom_vline(aes(xintercept = mcosts))+
  geom_vline(aes(xintercept = mcosts - sdcost)) +
  geom_vline(aes(xintercept = mcosts + sdcost)) +
  facet_grid(Year~.)

View(df %>%
       group_by(Year) %>%
       mutate(mcosts = mean(Value),sdcost = sd(Value)))

library(tidyverse)
dfnew <- df %>% 
  rename("test" = everything())

mynames <- c("column1","column2","column3")



MCstats_betternames <- MCstats %>% 
  rename(StatNames = everything())

colnames(df) <- StatNames




