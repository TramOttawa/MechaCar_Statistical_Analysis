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

![Variance_in_PSI](https://user-images.githubusercontent.com/100484606/175492201-07573f6c-d271-4e5e-944b-598a1bdf2b39.JPG)

![Variance_in_PSI_grouped_bylot](https://user-images.githubusercontent.com/100484606/175491924-3e68b945-540f-465c-8221-c71288647c13.JPG)

* The current manufacturing data, for all manufacturing lots in total, has the variance of 62.29 pounds per square inch. It meets the design specification that it does not exceed 100 pounds/square inch. The variances of each lot are shown in the image above. Lot1: 0.98, Lot2: 7.47 meet the design specification, but Lot3 (170.29) is over the specification about 70 pound/square inch, which make Lot3 does not meet the design specification.

## T-Tests on Suspension Coils
* Suspension Coils Cumulative T-test

* A review of the results of the T-test for the suspension coils across all manufacturing lots shows that they are not statistically different from the population mean, and the p-value is not low enough (0.0603) for us to reject the null hypothesis.

* A review of the results of the T-test for the suspension coils for Lot 2 shows that they are not statistically different from the population mean, and the p-value is not low enough (0.6072) for us to reject the null hypothesis.

## Study Design: MechaCar vs. Competition

To further aid AutosRU in improving their MechaCar prototype for maximal performance against the competition, designing another study design may be worth further analysis to compare metrics with competitors. In this study design, the MechaCar data could be analyzed against one or more competitor's comparable data to highlight a variety of metrics which may be of interest to potential consumers as well as AutosRU's manufacturing.

* Choosing a metric to test:
Although there a multitude of possible metrics to consider, it may be useful to focus on how MechaCar's mean highway fuel efficiency (measured in MGP) in particular and compare it to the mean value of multiple competitors. To do this, it would be ideal to compare vehicles which are as similar as possible as this could theoretically minimize "statistical noise" when attempting to determine statistical significance.

* What is the null hypothesis or alternative hypothesis?
Once we have selected a metric to analyize, it is imperative to identify our null and alternative hypotheses. The null hypothesis, in this case, would be that there is no statistical difference between the fuel efficiency of the MechaCar prototype and the fuel efficiency of competitors. Of course, this would mean the alternative hypotheses would be that there is indeed a statistical difference.

* What statistical test would you use to test the hypothesis? And why?
In order to test the hypotheis that there is no statistical difference between the MechaCar prototype and the fuel efficiency of competitors, we could use a one-way ANOVA test. Also known as the analysis of variance test, the ANOVA test would allow us to test the null hypothesis that the means of all groups are equal. As such, this would correspond well with our original orchestration of the null hypothesis. In this case, the sample means would include MechaCar's MPG values and mean MPG values from samples of similar competitor vehicles.

* What data is needed to run the statistical test?
To perform this ANOVA test, we would need one continous, numerical variable for the dependent variable and MPG would satisfy that requirement. For the independent variable specification when using ANOVA, we could compare vehicles of the same class using multiple categorical variables which would be the different vehicles for comparison, including the MechaCar prototype. Furthermore, we would want the sample sizes of each group to be sufficiently large (at least 30) and we would also operate under the assumption that the dependent variable (MPG) is normally distributed and that the variance among each group is similar.

* How to analyze the results:
We could use R's aov() method to run the ANOVA test and use R's summary() function to retrieve the summary statistics which would house our p-value. If the p-value resulted in a value below 0.05 (assuming a 95% confidence level) we would have sufficient statistical reasoning to reject the null hypotheses that the means for all groups were equal. Note, one limitation of the ANOVA test would be that we would not be able to tell which categorical variable(s) was/were the culprit for the statistical significance. However, supposing we reject the null based on this test result, we could also rerun the anova test without the MechaCar sample MPG and compare the competitors to check that their means were all statistically the same without the MechaCar prototype. This may provide us additional insight about MechaCar's contribution to the statistical significance. In any case, the ANOVA test can prove quite useful for comparing the means of a continous numerical variable across multiple categorical variables and could aid AutosRU in understanding better how their prototype fares against the competition.
