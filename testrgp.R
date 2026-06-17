# testrgp.R
# Russell R. Barton September 2025
#   functions for RGP tutorial WSC `26 paper June 2026
#  enhance plots used in the WSC 2026 RGP tutorial by Barton.
# example program to define a function and levels for plotting
#  then call rgp - Response Grid Plot. See
#  Barton, R. R. (1998). Design-plots for factorial and fractional-factorial
#    designs. Journal of Quality Technology 30:1, 40-54. And 
#  Barton, R. R. (2025) Response Grid Plots for Model-Agnostic Machine Learning Insight

# Make sure plot window is large enough to accommodate plot legend

#=========================
#=========================

# Shashaani et al. 2024 inventory mean gap

source("rgp.R")
fname = "sS Optimality Gap (HomGP)"

# create metamodel object
source("SanchezSSCONTmeanhom.R")
 
xlo = c(.1,.5,1,.1)
xhi = c(.5,.9,3,.9)
ylab = "Fraction Opt. Gap"
xlab = NULL
xlab[1] = "eta_1"
xlab[2] = "eta_2"
xlab[3] = "gamma_1"
xlab[4] = "gamma_2"
nlev = c(3,3,5,5)

rgp(f,fname,nlev,ylab,xlab,xlo,xhi)

#=========================

source("rgp.R")
fname = "sS Optimality Gap (HetGP)"

# create metamodel object
source("SanchezSSCONTmeanhet.R")

xlo = c(.1,.5,1,.1)
xhi = c(.5,.9,3,.9)
ylab = "Fraction Opt. Gap"
xlab = NULL
xlab[1] = "eta_1"
xlab[2] = "eta_2"
xlab[3] = "gamma_1"
xlab[4] = "gamma_2"
nlev = c(3,3,5,5)

rgp(f,fname,nlev,ylab,xlab,xlo,xhi)

#=========================

# now Sanchez data SAN results
#=====================================================

# SAN

source("rgp.R")
fname = "SAN Optimality Gap (HomGP)"

# create metamodel object
source("SanchezSANmeanhom.R")

xlo = c(.1,.5,1,.1)
xhi = c(.5,.9,3,.9)
ylab = "Fraction Opt. Gap"
xlab = NULL
xlab[1] = "eta_1"
xlab[2] = "eta_2"
xlab[3] = "gamma_1"
xlab[4] = "gamma_2"
nlev = c(3,3,5,5)

rgp(f,fname,nlev,ylab,xlab,xlo,xhi)

#=========================

source("rgp.R")
fname = "SAN Optimality Gap (HetGP)"

# create metamodel object
source("SanchezSANmeanhet.R")

xlo = c(.1,.5,1,.1)
xhi = c(.5,.9,3,.9)
ylab = "Fraction Opt. Gap"
xlab = NULL
xlab[1] = "eta_1"
xlab[2] = "eta_2"
xlab[3] = "gamma_1"
xlab[4] = "gamma_2"
nlev = c(3,3,5,5)

rgp(f,fname,nlev,ylab,xlab,xlo,xhi)

#=========================

#=========================

# Shashaani et al. 2024 inventory area 
#=========================

source("rgp.R")
fname = "sS Area Under Optimality Gap (HetGP)"

# create metamodel object
source("SanchezSSCONTAhet.R")

xlo = c(.1,.5,1,.1)
xhi = c(.5,.9,3,.9)
ylab = "Area Under Gap Curve"
xlab = NULL
xlab[1] = "eta_1"
xlab[2] = "eta_2"
xlab[3] = "gamma_1"
xlab[4] = "gamma_2"
nlev = c(3,3,5,5)

rgp(f,fname,nlev,ylab,xlab,xlo,xhi)

#=========================

source("rgp.R")
fname = "SAN Area Under Optimality Gap (HetGP)"

# create metamodel object
source("SanchezSANAhet.R")

xlo = c(.1,.5,1,.1)
xhi = c(.5,.9,3,.9)
ylab = "Area Under Gap Curve"
xlab = NULL
xlab[1] = "eta_1"
xlab[2] = "eta_2"
xlab[3] = "gamma_1"
xlab[4] = "gamma_2"
nlev = c(3,3,5,5)

rgp(f,fname,nlev,ylab,xlab,xlo,xhi)

#=========================

# Plots for figures showing construction


# simple linear plus quadratic in x[1] d = 4
source("rgp.R")
f <- function(x) 2 + 2*x[1]^2 +x[2] +x[3] + x[4]
fname = "f(x) = 2 + 2*x[1]^2 +x[2] +x[3] + x[4]"
xlo = rep(0,4)
xhi = rep(3,4)
ylab = "f"
xlab = NULL
xlab[1]="x[1]";xlab[2]="x[2]";xlab[3]="x[3]";xlab[4]="x[4]"
nlev = c(3,3,3,3)

rgp(f,fname,nlev,ylab,xlab,xlo,xhi)

# d = 6 linear
source("rgp.R")
f <- function(x) 2 + x[1] + x[2] + x[3] + x[4] + x[5] + x[6]
fname = "f(x) = 2 + x[1] + x[2] + x[3] + x[4] + x[5] + x[6]"

xlo = rep(0,6)
xhi = rep(2,6)
ylab = "f"
xlab = NULL
xlab[1]="Var1";xlab[2]="Var2";xlab[3]="Var3";xlab[4]="Var4"
xlab[5]="Var5";xlab[6]="Var6"
nlev = c(2,2,2,3,3,3)

rgp(f,fname,nlev,ylab,xlab,xlo,xhi)

# d = 3 main
source("rgp.R")
f <- function(x)  x[2]
fname = "f(x) = x[2]"

xlo = rep(-1,3)
xhi = rep(1,3)
ylab = "f"
xlab = NULL
xlab[1]="x[1]";xlab[2]="x[2]";xlab[3]="x[3]"
nlev = c(2,2,2)

rgp(f,fname,nlev,ylab,xlab,xlo,xhi)

# d = 3 x1x2
source("rgp.R")
f <- function(x)  x[1]*x[2]
fname = "f(x) = x[1]*x[2]"

xlo = rep(-1,3)
xhi = rep(1,3)
ylab = "f"
xlab = NULL
xlab[1]="x[1]";xlab[2]="x[2]";xlab[3]="x[3]"
nlev = c(2,2,2)

rgp(f,fname,nlev,ylab,xlab,xlo,xhi)

# d = 3 x1x2x3
source("rgp.R")
f <- function(x)  x[1]*x[2]*x[3]
fname = "f(x) = x[1]*x[2]*x[3]"

xlo = rep(-1,3)
xhi = rep(1,3)
ylab = "f"
xlab = NULL
xlab[1]="x[1]";xlab[2]="x[2]";xlab[3]="x[3]"
nlev = c(2,2,2)

rgp(f,fname,nlev,ylab,xlab,xlo,xhi)

