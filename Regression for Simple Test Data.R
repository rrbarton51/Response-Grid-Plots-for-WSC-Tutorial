# Testing regression model for 

dataname = "SimpleTestData.csv"
DOEdata = as.data.frame(read.csv(dataname, header = TRUE))
  
regMod = lm(Strength ~ (Temp + Press + Time)^3, data = DOEdata)

summary(regMod)

PredVals = predict(regMod,newdata=DOEdata)

plot(DOEdata$Strength,PredVals)

# now for predictors scaled +/- 1
dataname = "SimpleTestDataPM1.csv"
DOEdata = as.data.frame(read.csv(dataname, header = TRUE))

regMod = lm(Strength ~ (Temp + Press + Time)^3, data = DOEdata)

summary(regMod)

PredVals = predict(regMod,newdata=DOEdata)

plot(DOEdata$Strength,PredVals)
