#Name : Ather Johear Noor
#ICM ID : NOOAD2301



# Question 1

#Inspection of the data
head(low_metabo)
head(high_metabo)

# Low metabolism group correlation
cor_low <- cor(low_metabolism$calorie_intake, low_metabolism$percent_increase_body_mass)

# High metabolism group correlation
cor_high <- cor(high_metabolism$calorie_intake, high_metabolism$percent_increase_body_mass)

print(paste("Correlation coefficient for low metabolism group:", round(cor_low, 3)))
print(paste("Correlation coefficient for high metabolism group:", round(cor_high, 3)))

# Interpretation for Question 1

#It is important to emphasize that higher coefficients of correlation are those that show the strength & direction of the dependency between variables. A positive correlation would mean that as one variable increases, the other variable increases. The closer to one the value of the correlation is, the stronger the relationship will be. The existence of a higher metabolism group would imply that calorie intake is more influential in the increase of body mass in this group than in individuals who present higher metabolic rates.

# Question 2

# Regression on low metabolism group
model_low <- lm(percent_increase_body_mass ~ calorie_intake, data = low_metabolism)

# Regression on high metabolism group
model_high <- lm(percent_increase_body_mass ~ calorie_intake, data = high_metabolism)

# Printing the summaries
summary(model_low)
summary(model_high)

# Interpretation for Question 2

#Slope coefficient takes the meaning of change in body mass percentage for one unit increased calorie intake and the intercept represents the predicted percentage of body mass when the calorie intake is zero-a value

# Question 3

# R^2 for low metabolism group
r_squared_low <- summary(model_low)$r.squared

# R^2 for high metabolism group
r_squared_high <- summary(model_high)$r.squared

print(paste("R-squared for low metabolism group:", round(r_squared_low, 3)))
print(paste("R-squared for high metabolism group:", round(r_squared_high, 3)))

# Discussion for Question 3
#The R^2 value describes the goodness of fit. The higher the R-squared, the better the fit. From this, if the R-squared for low metabolism rats is greater, it indicates that in low metabolism rats, calorie intake is a far stronger predictor of body mass increase than in high metabolism rats.
