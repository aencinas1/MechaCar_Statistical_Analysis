# MechaCar Statistical Analysis
In this challenge, Jeremy has been asked by upper management to run analysis on a prototype that the company has been working on: the MechaCar. Jeremy has been asked to run analysis on various factors of production to aid the manufacturing team. Below, I uncover significant factors that impact the MechaCar's performance and provide a written analysis of those findings.

## Linear Regression to Predict MPG 
Using linear regression, we were able to determine key statistical factors that impact the MechaCar's MPG. Below is our R result:

![](Images/Deliverable1.PNG)

1. From the results, we can see that both vehicle length and ground clearance very likely provide non-random variance to the MPG ratings for the MechaCar. In some way, vehicle lenght and grouund clearance have an impact on MPG, and these should be monitored by the manufacturing team. Every other measure seems to only provide random variance, or no measureable impact on MPG, although vehicle weight is just outside a significant p-value (.05). Although this eludes that weight only provides random variance, perhaps the manufacturing team should continue to monitor weight, at least closer that the other measures which seem to be truly random in variance.
2. The slope of this linear model can be determined to be zero or not zero by its p-value. The p-value of the test is 5.35e-11, which is a very small value, much smaller than 0.05. From this we can determine that the slope is not zero. 
3. The accuracy of the model to predict MPG of the MechaCar can be determined from the generated r-squared value. The r-squared model of the model is 0.7149. This means that the linear regression generated predicts about 71% of the MPG in respect to additional factors. Since the r-squared value is significantly higher than 50%, I would say that 71% is high enough to conclude that this model can accurately predict MPG of the MechaCar prototypes.

## Summary Statistics on Suspension Coils
After running analysis on suspension coils data, we were able to collect the following data on all 3 lots of coils:

![](Images/total_summary.PNG)

![](Images/lot_summary.PNG)

1. From the provided data and the resulting summaries, we can see the variance of the suspension coils. The manufactuing team has stated that variance must not exceed 100 PSI. The summary of all lots (total summary) indicates that the variance is 62.29 PSI. From this test alone, we can conclude that all manufacturing lots in total are compliant to specification, as 62 is lower than the standard of 100. However, when we break the summaries down by lot batch, we have a different story. Lot 1 and 2 are compliant with a variance of 0.97 and 7.46 respectively. Lot 3, however, has a variance of 170.28, which does not meet the set specification. Because of the variance of Lot 3, not all lots meet the specification of under 100 PSI.


