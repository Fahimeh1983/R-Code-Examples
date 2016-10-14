# Linear regression
# Data
year <- c(1995, 1996,1997, 1998, 1999, 2000, 2001, 2002)
income <- c(53807, 55217,55209, 55415, 63100, 63206, 63761, 65766)

# Creat a data fram
df <- data.frame(income, year)

# perform linear regression
alli.mod1 <- lm(income ~ year , data = df)

# plot the data and linear model
plot(income ~ year, data = df) + abline(alli.mod1, col="red")

# Look at the coefficient and the model summary
summary(alli.mod1)
coefficients(alli.mod1)

# Make a new data fram for prediction
new_df <- data.frame(year=2010)

# predict based on the model that you just developed
predict(alli.mod1, new_df)
