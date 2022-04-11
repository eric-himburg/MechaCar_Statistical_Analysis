library(dplyr)
mechacar_mpg <- read.csv(file='MechaCar_mpg.csv',check.names=F,stringsAsFactors = F)
lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data=mechacar_mpg) #generate multiple linear regression model
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data=mechacar_mpg)) #generate summary statistics
suspension_coil <- read.csv(file='Suspension_Coil.csv',check.names=F,stringsAsFactors = F)
total_summary <- summarize(suspension_coil,Mean=mean(PSI),Median=median(PSI),Variance=var(PSI),SD=sd(PSI), .groups = 'keep') #create summary table
lot_summary <- suspension_coil %>% group_by(Manufacturing_Lot) %>% summarize(Mean=mean(PSI),Median=median(PSI),Variance=var(PSI),SD=sd(PSI), .groups = 'keep') #create a group summary table
t.test(suspension_coil$PSI,mu=1500) #compare sample PSI of all lots to population mean of 1500
lot1 <- suspension_coil[suspension_coil$Manufacturing_Lot=="Lot1",] #filter data for manufacturing lot 1
t.test(lot1$PSI,mu=1500) #compare PSI of manufacturing lot 1 to population mean of 1500
lot2 <- suspension_coil[suspension_coil$Manufacturing_Lot=="Lot2",] #filter data for manufacturing lot 2
t.test(lot2$PSI,mu=1500) #compare PSI of manufacturing lot 2 to population mean of 1500
lot3 <- suspension_coil[suspension_coil$Manufacturing_Lot=="Lot3",] #filter data for manufacturing lot 3
t.test(lot3$PSI,mu=1500) #compare PSI of manufacturing lot 3 to population mean of 1500