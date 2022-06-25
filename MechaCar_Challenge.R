###### Deliverable 1

# Use the library() function to load the dplyr package

library(dplyr)

library(tidyverse)

# Import and read in the MechaCar_mpg.csv file as a dataframe

mecha_mpg <- read.csv(file='C:/Users/ttran/Documents/TramTran/Github/MechaCar_Statistical_Analysis/Resources/MechaCar_mpg.csv',check.names=F,stringsAsFactors = F) 
head(mecha_mpg)

# Perform linear regression using the lm() function
lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data=mecha_mpg)

# Using the summary() function, determine the p-value and the r-squared value for the linear regression model.
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data=mecha_mpg)) 


##### DELIVERABLE 2: SUMMARY STATISTICS ON SUSPENSION COIL

# Import and read in the Suspension_Coil.csv file as a table
suspension_coil <- read.csv(file='C:/Users/ttran/Documents/TramTran/Github/MechaCar_Statistical_Analysis/Resources/Suspension_Coil.csv',check.names=F,stringsAsFactors = F) 
head(suspension_coil)

#mean, median, variance, and standard deviation of the suspension coil’s PSI column.
Mean = mean(suspension_coil$PSI)
Median=median(suspension_coil$PSI)
Variance=var(suspension_coil$PSI)
SD = sd(suspension_coil$PSI)

#Total_Summary Data Frame
total_Summary <- data.frame(Mean,Median,Variance,SD)

#summary by lot
lot_summary <- suspension_coil %>% group_by(Manufacturing_Lot) %>% summarize(Mean=mean(PSI),Median = median(PSI),Variance = var(PSI),SD = sd(PSI), .groups = 'keep') 

##### DELIVERABLE 3: T-TEST

# Use t.test() to determine if the PSI across ALL lots is statistically different from the pop. mean of 1,500 PSI.
t.test(suspension_coil$PSI,mu=1500)


# Use t.test() function 3 more times with subset() to determine if PSI for each manufacturing lot is statistically different from the pop. mean of 1,500 PSI
lot1 <- subset(suspension_coil, Manufacturing_Lot=="Lot1")
lot2 <- subset(suspension_coil, Manufacturing_Lot=="Lot2")
lot3 <- subset(suspension_coil, Manufacturing_Lot=="Lot3")

t.test(lot1$PSI,mu=1500)
t.test(lot2$PSI,mu=1500)
t.test(lot3$PSI,mu=1500)

