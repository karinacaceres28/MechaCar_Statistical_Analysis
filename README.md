# MechaCar_Statistical_Analysis
## Objective
The purpose of this project is to aid in AutosRU’s newest prototype called MechaCar due to issues with troubling production, thus preventing any progress with the manufacturing team. Objectives include:
  •	Performing multiple linear regression analysis to identify which variables in the dataset predict the mpg of the new prototype
  •	Collection of summary statistics on the pound per square inch of the suspension coils from the manufacturing lots
  •	Running t-test for determining if the manufactured lots are statistically different from the mean population
  •	Designing a statistical study to compare vehicle performance of MechaCar vehicles against vehicles from other manufactures

## Linear Regression to Predict MPG
### Figure 1: Sample of MechaCar Dataset
<img width="641" alt="1 1" src="https://user-images.githubusercontent.com/110318652/210921526-64a513b7-1f66-45fd-b6b0-5faf4b922b64.png">

As shown in the image above, the dataset contains 50 prototypes MechaCars. The following metrics are found on the table, length, weight, spoiler angle, ground clearance, all-wheel drive (AWD), and miles per gallon (mpg).

### Figure 2: Summary of Linear Model
<img width="508" alt="1 3" src="https://user-images.githubusercontent.com/110318652/210921531-5da03de8-64b0-49ee-9d95-bce256678820.png">

The image above shows the summary of the linear model. 

    •	The p-value for vehicle length is 2.60e-12. The p-value for vehicle weight is 0.0776. For the spoiler angle it is 0.3096. Ground clearance has a p-value of 5.21e-08, and AWD has it as 0.1852. It can be noted that the values that provide non-random amount of variance are vehicle length and ground clearance due to being significantly less than 0.5

    •	The slope for vehicle length is 6.267e+00. The slope for vehicle weight is 1.245e-03. For the spoiler angle it is 6.877e-02. Ground clearance has a slope of 3.546e+00, and AWD has it as -3.411e+00. It can be noted that the slope of the linear model would not be considered zero. When converted from scientific notation, we can see that vehicle length (6.267) and ground clearance (3.546) are above zero and AWD (-3.411) is below zero.

    •	Being that the R-squared has a value of 0.7149, we can determine that the model does predict mpg of MechaCar prototypes effectively.


## Summary Statistics and Suspension Coils

### Figure 3: Total Summary
<img width="335" alt="2 1" src="https://user-images.githubusercontent.com/110318652/210921532-2a6cfbb0-482f-4161-9e9e-551900e5aca6.png">

Notice the mean is 1498.78, median is 1500, variance is 62, and standard deviation is 7.89.

### Figure 4: Lot Summary
<img width="477" alt="2 2" src="https://user-images.githubusercontent.com/110318652/210921533-1a284afd-c6a8-4954-b2c3-bb8eed8ff2a1.png">
The mean and median for lots 1 and 2 are 1500. The variance for lots 1 and 2 is below 100. The same cannot be said about lot 3, having a variance of 170. The suspension coils are not supposed to exceed 100 pounds per square inch. This indicates that lot 3 does not meet the designed specification.


## T-Test on Suspension Coils
### Figure 5: T-test for all Lots
<img width="408" alt="3 1" src="https://user-images.githubusercontent.com/110318652/210921535-5d351f03-e00c-4ecb-ae68-106f50bd74bb.png">

The figure above shows t-test for all the manufacturing lots. We can see that t is -1.89, df is 149, and the p-value is 0.06. We can determine that the total manufacturing lot is not significantly significant from the distribution because the p-value is greater than 0.5. The mean is 1498.78, meaning that it falls in the 95% confidence interval.

### Figure 6: T-test for Lots 1-2
<img width="727" alt="3 2" src="https://user-images.githubusercontent.com/110318652/210921536-d8b10ffc-dbf6-4ce3-85d7-9ad1f1e253a3.png">

The figure above shows the t-test for lots 1 and 2. For lot 1 the t is 0, df is 49, and the p-value is 1. We can determine that the total manufacturing lot is not significantly significant from the distribution because the p-value is greater than 0.5. The mean is 1500. For lot 2 the t is 0.517, df is 49, and the p-value is 0.06. We can determine that the total manufacturing lot is not significantly significant from the distribution because the p-value is greater than 0.5. The mean is 1500, meaning that it falls in the 95% confidence interval.

### Figure 7: T-test for Lot 3
<img width="711" alt="3 3" src="https://user-images.githubusercontent.com/110318652/210921537-93bc67f4-2c10-407b-9ad6-bb919545a0db.png">

The figure above shows the t-test for lot 3. We can see that lot 3 is different from 1 and 2. It’s p-value is 0.04, meaning it is significantly different from the normal distribution. Its mean is also 1496.


## Study Design: MechaCar vs Competition
When comparing how MechaCar performs against other competition, it would be beneficial to determine which metrics would be of interest to a consumer.
  •	Metric: maintenance cost.
  •	Hypothesis:
      o	Null: The maintenance cost will be zero.
      o	Alternative: The maintenance cost will be less than the average car.
  •	Statistical Test: We can use multiple linear regression statistical summary between the car parts to determine which parts would make the car cheaper to fix. 
  •	Data: The data needed would be the price of the car parts, and the lifespan of the parts the car is made from.

