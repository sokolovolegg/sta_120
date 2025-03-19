# Hemoglobin levels of blood samples from patients with Hb Sβ sickle cell disease

HbSb <- c(8.1, 9.2, 10, 10.4, 10.6, 10.9, 11.1, 11.9, 12.0, 12.1)

# Step 1: Specify the null and alternative hypotheses
# Null hypothesis (H0): The population mean HbSβ is 10.
# Alternative hypothesis (H1): The population mean HbSβ is not equal to 10.

# H0: μ = 10 (the population mean HbSβ is 10)
# H1: μ ≠ 10 (the population mean HbSβ is not equal to 10)

# Step 2: Perform the two-sided t-test
# The t-test will compare the sample mean to the hypothesized population mean (10).
# The function 't.test()' performs the test, specifying mu = 10 for the population mean.

tt <- t.test(HbSb, mu = 10, alternative = "two.sided", conf.level = 0.95)

# Step 3: Store the result in a list as specified
sol <- list(ttest = tt)

# Display the t-test result
sol$ttest

# Interpretation:
# The t-test output provides:
# - The t-statistic: A measure of how far the sample mean is from the hypothesized population mean, in terms of standard errors.
# - The p-value: This tells us the probability of obtaining a sample mean at least as extreme as the observed one, assuming the null hypothesis is true.
# - Confidence interval: A range of values within which we expect the true population mean to lie, with 95% confidence.

# Step 4: Interpret the results
# If the p-value is less than α = 0.05, we reject the null hypothesis and conclude that there is significant evidence to suggest that the population mean HbSβ is not 10.
# If the p-value is greater than α = 0.05, we fail to reject the null hypothesis, meaning there is not enough evidence to conclude that the population mean HbSβ differs from 10.
