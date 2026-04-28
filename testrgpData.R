# testrgpData.R
# Russell R. Barton March 2026
# example program to identify a response function name and name of the csv file
#  then call rgpData - Response Grid Plot for DOE data rather than for a function. 
# See Barton WSC 2026

# Make sure plot window is large enough to accommodate plot legend

source("rgpData.R")

# series of test functions follows

# TestData
# to compare with test data
# d = 3
dataname = "TestDataComplete.csv"
fname = "Test Data Function d=2 Full 2^3"


rgpData(dataname,fname)

# TestData
# to compare with test data
# d = 3
dataname = "TestData.csv"
fname = "Test Data Function d=2 2^3 One Missing"


rgpData(dataname,fname)

# TestData2
# to compare with test data
# d = 5
dataname = "TestData2.csv"
fname = "Test Data Function d=5 2^(3-1)4^15^1 Fraction"


rgpData(dataname,fname)

#SimpleTestData - one good setting on DOE
# suppose testing adhesive strength as function of process parameters
# d = 3
dataname = "SimpleTestData.csv"
fname = "Adhesive Strength Result"

rgpData(dataname,fname)
