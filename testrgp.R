# testrgp.R
# Russell R. Barton September 2025
#   functions for RGP tutorial WSC `26 paper April 2026
# Some rgp.R parameters have been adjusted from the original rgp2 code to 
#  enhance plots used in the WSC 2026 RGP tutorial by Barton.
# example program to define a function and levels for plotting
#  then call rgp - Response Grid Plot. See
#  Barton, R. R. (1998). Design-plots for factorial and fractional-factorial
#    designs. Journal of Quality Technology 30:1, 40-54. And 
#  Barton, R. R. (2025) Response Grid Plots for Model-Agnostic Machine Learning Insight

# Make sure plot window is large enough to accommodate plot legend



# EOQ model 5 levels

source("rgp.R")
f <- function(x){
  D = x[1]
  S = x[2]
  H = x[3]
  EOQ = sqrt(2*S*D/H)
}
fname = "EOQ 5lev"

xlo = c(35,8,4)
xhi = c(65,17,8.5)
ylab = "EOQ"
xlab = NULL
xlab[1]="D";xlab[2]="S";xlab[3]="H"
nlev = c(5,5,5)

rgp(f,fname,nlev,ylab,xlab,xlo,xhi)


# EOQ model 2 levels

source("rgp.R")
f <- function(x){
  D = x[1]
  S = x[2]
  H = x[3]
  EOQ = sqrt(2*S*D/H)
}
fname = "EOQ 2lev"

xlo = c(40,10,5)
xhi = c(60,15,7.5)
ylab = "EOQ"
xlab = NULL
xlab[1]="D";xlab[2]="S";xlab[3]="H"
nlev = c(2,2,2)

rgp(f,fname,nlev,ylab,xlab,xlo,xhi)


# Beeler et al. Regression form rather than ANOVA
# (works with any nlev, here 3)

source("rgp.R")
fname = "BeelerReg"

xlo = c(-1,-1,0,0)
xhi = c(1,1,2,2)
ylab = "Cases"
xlab = NULL
xlab[1] = "Days"
xlab[2] = "Infec"
xlab[3] = "Vac"
xlab[4] = "Quar"
nlev = c(3,3,3,3)
source("BeelerReg.R")

rgp(fr,fname,nlev,ylab,xlab,xlo,xhi)

# Beeler et al. Regression form rather than ANOVA
# (works with any nlev, here 4)

source("rgp.R")
fname = "BeelerReg"

xlo = c(-1,-1,0,0)
xhi = c(1,1,2,2)
ylab = "Cases"
xlab = NULL
xlab[1] = "Days"
xlab[2] = "Infec"
xlab[3] = "Vac"
xlab[4] = "Quar"
nlev = c(4,4,4,4)
source("BeelerReg.R")

rgp(fr,fname,nlev,ylab,xlab,xlo,xhi)

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

source("rgp.R")
fname = "sS Optimality Gap (mlegp)"

# for SanchezSSCONTmlegp, scaling is used for x

xlo <- c(.1,.5,1,.1)
xhi <- c(.5,.9,3,.9)

ylab = "Fraction Opt. Gap"
xlab = NULL
xlab[1] = "eta_1"
xlab[2] = "eta_2"
xlab[3] = "gamma_1"
xlab[4] = "gamma_2"
nlev = c(3,3,5,5)

# create metamodel object
source("SanchezSSCONTmlegp.R")

rgp(f,fname,nlev,ylab,xlab,xlo,xhi)

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

source("rgp.R")
fname = "SAN Optimality Gap (mlegp)"

# for SanchezSANmlegp, scaling is used for x

xlo <- c(.1,.5,1,.1)
xhi <- c(.5,.9,3,.9)

ylab = "Fraction Opt. Gap"
xlab = NULL
xlab[1] = "eta_1"
xlab[2] = "eta_2"
xlab[3] = "gamma_1"
xlab[4] = "gamma_2"
nlev = c(3,3,5,5)

# create metamodel object
source("SanchezSANmlegp.R")

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

# simple linear plus quadratic in x[1] d = 3
source("rgp.R")
f <- function(x) 2 + x[1]^2 +x[2] +x[3]
fname = "f(x) = 2 + x[1]^2 +x[2] +x[3]"
xlo = rep(0,3)
xhi = rep(3,3)
ylab = "f"
xlab = NULL
xlab[1]="x[1]";xlab[2]="x[2]";xlab[3]="x[3]"
nlev = c(4,3,3)

rgp(f,fname,nlev,ylab,xlab,xlo,xhi)

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
xlab[1]="x[1]";xlab[2]="x[2]";xlab[3]="x[3]";xlab[4]="x[4]"
xlab[5]="x[5]";xlab[6]="x[6]"
nlev = c(3,3,3,2,2,2)

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

