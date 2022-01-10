#Deliverable 1
#1
#2

#3
library(dplyr)
library(tidyverse)

#4
MechaCarMPG <- read.csv(file='MechaCar_mpg.csv', check.names = F, stringsAsFactors = F)

#5
lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data = MechaCarMPG)

#6
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data = MechaCarMPG))


#Deliverable 2
#1

#2
MechaCarCoils <- read.csv(file = 'Suspension_Coil.csv', check.names = F, stringsAsFactors = F)

#3
total_summary <- MechaCarCoils %>% summarize(MeanofPSI=mean(PSI),
                                             MedianofPSI=median(PSI),
                                             VarianceofPSI=var(PSI),
                                             StdDevofPSI=sd(PSI))

#4
lot_summary <- MechaCarCoils %>% group_by(Manufacturing_Lot) %>% summarize(MeanofPSI=mean(PSI),
                                                                           MedianofPSI=median(PSI),
                                                                           VarianceofPSI=var(PSI),
                                                                           StdDevofPSI=sd(PSI))

#Deliverable 3

#1
t.test(MechaCarCoils$PSI, mu=1500)

#2 split each lot is easier
Lot1 <- subset(MechaCarCoils,Manufacturing_Lot=="Lot1")
Lot2 <- subset(MechaCarCoils,Manufacturing_Lot=="Lot2")
Lot3 <- subset(MechaCarCoils,Manufacturing_Lot=="Lot3")

t.test(Lot1$PSI, mu=1500)
t.test(Lot2$PSI, mu=1500)
t.test(Lot3$PSI, mu=1500)

