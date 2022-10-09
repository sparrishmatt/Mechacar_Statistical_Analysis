library(dplyr)

# Read in challenge data
mcar = read.csv(file = 'MechaCar_mpg.csv')
susp = read.csv(file = 'Suspension_Coil.csv')

#===============================================================================
#Deliverable 1
## create linear model with mpg as the dependent, other columns independent
carlin = lm(mpg~vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data = mcar)
summary(carlin)
#vehicle length and ground clearance are statistically unlikely to create random variance
#===============================================================================

#Deliverable 2
##Create summary df
total_summary <- susp  %>% summarize(mean_psi=mean(PSI),med_psi=median(PSI),var_psi=var(PSI),std_psi=sd(PSI)) 
print(total_summary)

lot_summary <- susp %>% group_by(Manufacturing_Lot) %>% summarize(mean_psi=mean(PSI),med_psi=median(PSI),var_psi=var(PSI),std_psi=sd(PSI))
print(lot_summary)
# Total mechacar PSI variance meets requirements as the variance is less than 100 PSI
# While lot 1 and 2 meet the PSI variance requirements, lot 3 does not with a variance of 170.286
#===============================================================================

#Deliverable 3
##Run total t-test and individual t-tests using the subset function

t.test(susp$PSI, mu=1500)

l1 = subset(susp, Manufacturing_Lot == "Lot1")
l2 = subset(susp, Manufacturing_Lot == "Lot2")
l3 = subset(susp, Manufacturing_Lot == "Lot3")

t.test(l1$PSI,mu=1500)
t.test(l2$PSI,mu=1500)
t.test(l3$PSI,mu=1500)

#do not reject 1, do not reject 2, reject 3
#===============================================================================
#del4 use multivariate anova test to find if there is a difference in average safety ratings and cost 
#between mechacar and other companies. After this use pairwise comparision to learn about the specifics


