# Set Working directory
setwd('/home/noble_mannu/Documents/PhD/First/STAT_2131_Applied_Statistical_Methods_I/HW2')

# Read the table with the information of the data
data <- read.delim('HW2_plastic_hardness.txt', sep = '', dec = '.')
names(data) <- c('Hardness','Elapsed_Time')

# Make the linear regression model
linearMod = lm(formula = Hardness~Elapsed_Time, data = data)

# Obtain the regression coefficients
coefficients = coef(linearMod)
beta_1 = coefficients[2]
beta_0 = coefficients[1]

# Plotting the data and the estimated regression function

plot(data$Elapsed_Time,data$Hardness, xlab = names(data)[2], ylab = names(data)[1], 
     main = 'Plotted data and regression line', col = 'blue')
abline(lm(data$Hardness ~ data$Elapsed_Time))