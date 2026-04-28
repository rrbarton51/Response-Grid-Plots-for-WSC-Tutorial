RGP readme

This repository contains R files for codes used in the 2026 Winter Simulation Conference tutorial "Response Grid Plots for Characterizing Simulation Output" by Russell R. Barton.

There are several code files, each are described below.

rgp.R - a code file for the function rgp(f,fname,nlev,ylab,xlab,xlo,xhi) to generate an RGP.
  f - function called by rgp, argument x a vector of dimension <= 6, result is f(x)=y,
  fname - text variable for name of the function for the plot title,
  nlev - vector of number of grid levels for each component of x,
  ylab - text variable with short name for the response,
  xlab - list of short text names for x[1], x[2] etc.,
  xlo - vector of lower limit for each component of x for the RGP,
  xhi - vector of upper limit for each component of x for the RGP.

testrgp.R - source code to exercise rgp on several functions at several grid settings.

Beeler.R - Beeler(x) codes the response for the original virus model (an ANOVA model) used in "Response Grid Plots for Model-Agnostic Machine Learning Insight".

BeelerReg.R codes the response for the polynomial regression virus model that appears in "Response Grid Plots for Model-Agnostic Machine Learning Insight".

SanchezSANAhet.R - uses hetGP to create metamodel for area under relative optimality gap for stochastic activity network data.

SanchezSANmeanhet.R - uses hetGP to create metamodel for mean final relative optimality gap for stochastic activity network data.

SanchezSSCONTAhet.R - uses hetGP to create metamodel for area under relative optimality gap for sS inventory model data.

SanchezSSCONTmeanhet.R - uses hetGP to create metamodel for mean final relative optimality gap for sS inventory model data.

rgp2.R - a code file for function rgp2(f1,fname1,f2,fname2,nlev,ylab,xlab,xlo,xhi) to generate a two-response RGP. 
  f1 - first response function in the two-response RGP,
  fname1 - text variable for name of the first function for the plot title,
  f2 - second response function in the two-response RGP,
  fname2 - text variable for name of the second function for the plot title,
  (other arguments the same as for rgp).

testrgp2.R - source code to exercise rgp2. For the repository, the code only contains the Shashaani et al. 2024 final optimality gap and area under the optimality gap curve models.

Regression for Simple Test Data.R - gives the regression coefficients for the adhesive study RGP in Figure 1.

SimpleTestData.csv and SimpleTestDataPM1.csv - read by Regression for Simple Test Data to perform regression.

rgpData.R - permits RGPs directly from data in .csv format without a functional model. Requires a factorial design with 6 or fewer levels for each factor.

testrgpData - source code to exercise rgpData.R

TestData.csv, TestData2,csv, TestDataComplete.csv - passed by testrgpData to rgpData (also SimpleTestData.csv and SimpleTestDataPM1.csv).