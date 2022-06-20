# MechaCar_Statistical_Analysis
Statisitical analysis of automobile performance with R

# Overview
AutosRUs' new MechaCar is "suffering from production troubles" and the company is hoping that an analytical review may help provide some insight. The goal of this project is to:

* discover which variables predict the MPG for vehicle prototypes;
* collect summary stats on the PSI of suspension coils;
* determine if manufacturing lots are statistically different from the mean population;
* design a study to compare the MechaCar performance against vehicles from other manufacturers.

# Result:
* The most significant variables in our dataset which show a non-random effect on the MPG of the MechaCar are the Vehicle Length and the Ground Clearance. As indicated by the yellow arrows in the image above, a linear regression model run on these variables against figures for MPG, resulted in p-values of 2.6x10-12 and 5.21x10-8, respectively. The intercept was also statistically significant, indicating that there are likely other factors, not included in our dataset, that have a strong impact on the MPG.
* The slope of the linear model can not be considered to be zero, as the p-value of 5.35x10-11, indicated by the orange arrow above, is lower than even an extreme level of significance, and thus the null hypothesis must be rejected. This means that the relationship between our variables and the miles per gallon is subject to more than random chance.
* Although there are still unconsidered factors, this model does predict the mpg of the MechaCar prototype with some relative effectiveness. The r-squared value of 0.7149, highlighted in the purple box, indicates that the model is 71% accurate... though it could probably do better.

## Summary Statistics on Suspension Coils

* While the overall variance, as shown in the Total Summary data above, is under 100 psi and meets specifications, there is a problem with one of the individual lots. As shown in the Lot Summary stats, the variance for Lot 3 is well over the acceptable threshold, at 170.28.

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
