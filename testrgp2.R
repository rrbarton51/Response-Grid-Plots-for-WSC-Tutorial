# testrgp2.R
# Russell R. Barton April 2026
# example program to define a function and levels for plotting
#  then call rgp2 - Response-Scaled Design-Plots for two functions. See
#  Barton, R. R. (1998). Design-plots for factorial and fractional-factorial
#    designs. Journal of Quality Technology 30:1, 40-54. 
# Some rgp2.R parameters have been adjusted from the original rgp2 code to 
#  enhance plots used in the WSC 2026 RGP tutorial by Barton.

#  Make sure plot window is large enough to accommodate legend

# Shashaani et al. Sanchez optimality gap for SSCONT and SAN
source("rgp2.R")

fname1 = "sS Optimality Gap (hetGP)"

# create metamodel object
source("SanchezSSCONTmeanhet.R")
f1 <- f

xlo = c(.1,.5,1,.1)
xhi = c(.5,.9,3,.9)
ylab = "Fraction Opt. Gap"
xlab = NULL
xlab[1] = "eta_1"
xlab[2] = "eta_2"
xlab[3] = "gamma_1"
xlab[4] = "gamma_2"
nlev = c(3,3,5,5)


fname2 = "SAN Optimality Gap (HetGP)"

# create metamodel object
source("SanchezSANmeanhet.R")
f2 <-f

xlo = c(.1,.5,1,.1)
xhi = c(.5,.9,3,.9)
ylab = "Fraction Opt. Gap"
xlab = NULL
xlab[1] = "eta_1"
xlab[2] = "eta_2"
xlab[3] = "gamma_1"
xlab[4] = "gamma_2"
nlev = c(3,3,5,5)


rgp2(f1,fname1,f2,fname2,nlev,ylab,xlab,xlo,xhi)
#=============================================================

# Shashaani et al. Sanchez area under gap curve for SSCONT and SAN
source("rgp2.R")

fname1 = "sS Optimality Gap (hetGP)"

# create metamodel object
source("SanchezSSCONTmeanhet.R")
f1 <- f

xlo = c(.1,.5,1,.1)
xhi = c(.5,.9,3,.9)
ylab = "Area Under Gap Curve"
xlab = NULL
xlab[1] = "eta_1"
xlab[2] = "eta_2"
xlab[3] = "gamma_1"
xlab[4] = "gamma_2"
nlev = c(3,3,5,5)


fname2 = "SAN Optimality Gap (HetGP)"

# create metamodel object
source("SanchezSANmeanhet.R")
f2 <-f

xlo = c(.1,.5,1,.1)
xhi = c(.5,.9,3,.9)
ylab = "Area Under Gap Curve"
xlab = NULL
xlab[1] = "eta_1"
xlab[2] = "eta_2"
xlab[3] = "gamma_1"
xlab[4] = "gamma_2"
nlev = c(3,3,5,5)


rgp2(f1,fname1,f2,fname2,nlev,ylab,xlab,xlo,xhi)

#=======================================================
# Shashaani et al. Sanchez area under gap curve for SSCONT and SAN
source("rgp2.R")

fname1 = "sS Area Under Optimality Gap (HetGP)"

# create metamodel object
source("SanchezSSCONTAhet.R")
f1 <- f

xlo = c(.1,.5,1,.1)
xhi = c(.5,.9,3,.9)
ylab = "Area Under Gap Curve"
xlab = NULL
xlab[1] = "eta_1"
xlab[2] = "eta_2"
xlab[3] = "gamma_1"
xlab[4] = "gamma_2"
nlev = c(3,3,5,5)


fname2 = "SAN Area Under Optimality Gap (HetGP)"

# create metamodel object
source("SanchezSANAhet.R")
f2 <-f

xlo = c(.1,.5,1,.1)
xhi = c(.5,.9,3,.9)
ylab = "Area Under Gap Curve"
xlab = NULL
xlab[1] = "eta_1"
xlab[2] = "eta_2"
xlab[3] = "gamma_1"
xlab[4] = "gamma_2"
nlev = c(3,3,5,5)


rgp2(f1,fname1,f2,fname2,nlev,ylab,xlab,xlo,xhi)
