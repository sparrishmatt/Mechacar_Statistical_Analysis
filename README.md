# Mechacar Statistical Analysis
 
## Linear Regression to Predict MPG

<img src="https://github.com/sparrishmatt/Mechacar_Statistical_Analysis/blob/main/Resources/regression.png" width="500">


### Random Variance
Due to the low p-values for both vehicle length and ground clearance in this case, there is evidence to suggest that these are unlikely to create random variance. However, the p-values are much higher for the other coeffecients and thus it can not be stated that they will not contribute to random variance. Vehicle weight has a p-value of 0.0776 which is relatively close to our significance level of 0.05, but in this case we're going to stick to 0.05 and below.  

### Slope
Because the beta coeffecients of our model are not equal to zero, we can not say that the slope of the model is equal to zero.

### Is the model working correctly?
The p-value connected to the f-test for this model is very small at 5.35e-11 which is much smaller than any reasonable level of significance. Therefore it must be concluded that this linear model predicts the mpg of MechaCar prototypes effectively.

## Summary Statistics on Suspension Coils

<img src="https://github.com/sparrishmatt/Mechacar_Statistical_Analysis/blob/main/Resources/total_summary.png" width="500">

<img src="https://github.com/sparrishmatt/Mechacar_Statistical_Analysis/blob/main/Resources/lot_summary.png" width="500">

The specifications for the suspension coils of MechaCar products state that the variance of the PSI of suspension coils can not be greater than 100. By looking at our variance columns, we can see that the total MechaCar variance is below 100 at 62.294 PSI. As far as the three lots go, Lots 1 and 2 both have a variance less than 100, while lot 3 has a variance of 170.286 which does not meet the MechaCar specifications.

## T-Tests on Suspension Coils

<img src="https://github.com/sparrishmatt/Mechacar_Statistical_Analysis/blob/main/Resources/total_t.png" width="500">

Starting off we will use a t-test comparing the PSI of all MechaCar lots to the population mean of 1500. In this case our null hypothesis is that the PSI is equal to the population mean of 1500, with an alternative hypothesis that the true population mean is not equal to 1500. The resulting p-value of 0.060 is greater than the significance level of 0.05, so we will fail to reject the null hypothesis that the population mean is equal to 1500.

<img src="https://github.com/sparrishmatt/Mechacar_Statistical_Analysis/blob/main/Resources/ind_t.png" width="500">

Looking at three t-tests comparing all three MechaCar lots to the population mean of 1500, lots 1 and 2 will not be rejecting the null hypothesis due to very large p-values. Lot 3 provided a p-value of 0.042 which is less than our significance level of 0.05. Therefore we must reject the null hypothesis and conclude that the population mean PSI for lot 3 does not equal 1500.

## Study Design: MechaCar vs Competition

A study that MechaCar could use to compare themselves to competitor companies could be a multivariate ANOVA test. For this example we can say that MechaCar is interested in comparing the cost of a vehicle changes based on the factors of safety and maintenance costs. This would require data from the other companies, but if that were possible then this would be a fairly easy test for anybody with basic R knowledge. 

We will now say that MechaCar has concluded that the data for themselves and the competitors are approximately normal, etc. If after running the anova test for the two chosen factors it appears that there is reason to believe the average cost of a MechaCar product differs based on the factors, a pairwise comparison test like the tukey test could be used to find specific information on which factor pairs are significantly different.  




