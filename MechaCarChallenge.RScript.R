### PART 1: Linear Regression to Predict MPG ###
# package upload
library(dplyr)

# import and read the `MechaCar_mpg.csv` file as a DF
MechaCar_mpg <- read.csv(file='MechaCar_mpg.csv',check.names=F,stringsAsFactors = F)
head(MechaCar_mpg)

# performing linear regression using the lm() function
lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data=MechaCar_mpg)

# using the summary() function to determine p-value and r-squared value
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD ,data=MechaCar_mpg)) #summarize linear model


### PART 2: Create Visualizations for the Trip Analysis ###
# import and read the 'Suspension_Coil.csv' file as a table
Suspension_Coil <- read.csv(file='Suspension_Coil.csv',check.names=F,stringsAsFactors = F)

# use the summary() function to get the mean, median, variance, and std of the PSI column
total_summary <- Suspension_Coil %>% summarize(Mean = mean(PSI), Median = median(PSI), Variance = var(PSI), SD = sd(PSI), .groups = 'keep')
                                            
# use groupby() and summary() functions to group each manufacturing lot of the PSI column
lot_summary <- Suspension_Coil %>% group_by(Manufacturing_Lot) %>% summarize(Mean = mean(PSI),Median = median(PSI), Variance = var(PSI), SD = sd(PSI) , .groups = 'keep') 


### Part 3: T-Test on Suspension Coils
# use the t.test() function to determine if the PSI on all lots is diff from the pop mean of 1500lbs per sq inch
t.test(Suspension_Coil$PSI,mu=mean(1500))

# lot 1
t.test(subset(Suspension_Coil$PSI,Suspension_Coil$Manufacturing_Lot == "Lot1"),mu=mean(1500))

# lot 2
t.test(subset(Suspension_Coil$PSI,Suspension_Coil$Manufacturing_Lot == "Lot2"),mu=mean(1500))

#lot 3
t.test(subset(Suspension_Coil$PSI,Suspension_Coil$Manufacturing_Lot == "Lot3"),mu=mean(1500))
