# MechaCar_Statistical_Analysis
Statisitical analysis of automobile performance with R

# Overview
The MechaCar prototypes were produced using multiple design specifications to identify ideal vehicle performance. The goals of this project are to:

* discover which variables predict the MPG for vehicle prototypes;
* collect summary statistics on the PSI of suspension coils;
* determine if manufacturing lots are statistically different from the mean population;
* design a study to compare the MechaCar performance against vehicles from other manufacturers.

# Result

![Linear_regression_to_predict_MPG](https://user-images.githubusercontent.com/100484606/175490066-06c40aee-9788-49e0-abbe-44cf4a427f9b.JPG)

* Vehicle Length and Ground Clearance variables/coeffeicients provided significant contribution to the linear model, which mean they provided a non-random amount of variance to the MPG in dataset, which can be seen through the figures shown in the image above.

* The p-value is 5.35e-11, which is smaller than significant level 0.05, thus we reject the null hypothesis that slope equal to 0. A conclusion is that the slop of the linear model cannot be considered to be 0.

* The R-squared value is 0.7149 meaning that the model is about 71% accurate. So this linear model predicts MPG effectively.

## Summary Statistics on Suspension Coils

Let have a look at the following figtures:

![Variance_in_PSI](https://user-images.githubusercontent.com/100484606/175755180-b23d8c9b-fa16-4ac6-ae17-660b019ff288.JPG)

![Variance_in_PSI_grouped_bylot](https://user-images.githubusercontent.com/100484606/175491924-3e68b945-540f-465c-8221-c71288647c13.JPG)

* The current manufacturing data, for all manufacturing lots in total, has the variance of 62.29 pounds per square inch. It meets the design specification that it does not exceed 100 pounds/square inch. The variances of each lot are shown in the image above. Lot1: 0.98, Lot2: 7.47 meet the design specification, but Lot3 (170.29) is over the specification about 70 pound/square inch, which make Lot3 does not meet the design specification.

## T-Tests on Suspension Coils
* Suspension Coils Cumulative T-test: T-tests was performed on Suspension_Coil.csv dataset to determine if all manufacturing lots and each lot individually are statistically different from the population mean of 1,500 pounds per square inch. Which null hypothesis is population mean equal to 1500 pounds per square inch, and alternative hypothesis is population mean not equal to 1500 pounds per square inch.

![T_test](https://user-images.githubusercontent.com/100484606/175755400-9197a585-18d9-439e-85e6-52bfabadc622.JPG)

From the summary, we see the P-value for all lots is around 0.06 which is greater than the significant level 0.05. Therefore, it is fail to reject the null hypothesis, that means the population mean is no statistical difference from 1500 pounds per square inch.

![T_test_Lot1_2_3](https://user-images.githubusercontent.com/100484606/175755402-9dc651af-9bf3-4089-9398-7834c1e7b60c.JPG)

The T-test for lot 1: from the summary we can see the P-value is around 1 which is greater than the significant level 0.05. It is fail to reject the null hypothesis, that means the sample mean is no statistical difference to 1500 pounds per square inch. Also the mean of Plot1 itself is 1500.

The T-test for lot 2, from the summary we can see the P-value is around 0.61 which is greater than the significant level 0.05. It is fail to reject the null hypothesis, that means the sample mean is no statistical difference to 1500 pounds per square inch.

The T-test for lot 3, from the summary we can see the P-value is around 0.04 which is smaller than the significant level 0.05. It is good to reject the null hypothesis, that means the sample mean is a statistical difference to 1500 pounds per square inch.

## Study Design: MechaCar vs. Competition

In this study design, the MechaCar data can be analyzed against the competition. There are some factors can be put into consideration such as the cost, city or highway fuel efficiency, horse power, maintenance cost, or safety rating.

* I am going to test the metric of car prices, maintenance cost and safety rating, which are in my opinion, the most consumers' concern.

* What is the null hypothesis or alternative hypothesis? Null Hypothesis would be that the car prices and maintenance cost coefficients correlation to safety rating from each class of car (small family car, large family car, supermini or executive); And Alternative Hypothesis would be all car prices and maintenance cost not coefficients correlation to safety rating from each classes of car.

* What statistical test would you use to test the hypothesis? And why?
We would use Multiple Linear Regression test to test the hypothesis. There are 2 numeric independent variables and a numeric dependent variable and we want to test on how independent variables combination affected the dependent variable.

* What data is needed to run the statistical test? 
The dataset we need to run the statistical test are the sample size which is large enough for each class of car and it must have same amount of sample; price and maintenance cost must be continuous numeric as independent variables and safety rating must be continuous numeric as dependant.

