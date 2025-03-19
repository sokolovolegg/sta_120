# Hemoglobin levels of blood samples from patients with Hb Sβ sickle cell disease
HbSb <- c(8.1, 9.2, 10, 10.4, 10.6, 10.9, 11.1, 11.9, 12.0, 12.1)

# Step 1: Perform the two-sided t-test (same as in Task 01)
tt_two_sided <- t.test(HbSb, mu = 10, alternative = "two.sided", conf.level = 0.95)

# Step 2: Perform the one-sided t-test (alternative hypothesis: sample mean > 10)
tt_one_sided <- t.test(HbSb, mu = 10, alternative = "greater", conf.level = 0.95)

# Step 3: Compare the p-values and calculate the ratio
p_ratio <- tt_one_sided$p.value / tt_two_sided$p.value

# Step 4: Store the result in the list as specified
sol <- list(ratio = p_ratio)

# Display the p-value ratio
sol
