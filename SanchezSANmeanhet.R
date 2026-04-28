# SanchezSANmeanhet.R
# This code captures the experiment design results for 
#  Shashaani Eckman and Sanchez for the SAN Stochastic Activity Network
#  for the mean optimality gap given x = eta_1, eta_2, gamma_1, gamma_2
#  fits a heterogeneous variance GP model for use for prediction,
#  and defines a function that does prediction using the GP object

  library("hetGP") # for GP fit
  
  # read Sanchez TOMACS data csv file
  # NOTE: data file has results for SSCONT and SAN problems
  #       these are separated for plotting but can be combined with rgp2
  dataname = "./SanchezData/df_solver_results_gen.csv"
  TOMACSdata = as.data.frame(read.csv(dataname, header = TRUE))
  #TOMACSdataSSCONT = TOMACSdata[TOMACSdata$Problem=="SSCONT",]
  TOMACSdataSAN = TOMACSdata[TOMACSdata$Problem=="SAN",]
  
  # extract predictor variable columns
  # mean subset
  DOEcols = c("eta_1","eta_2","gamma_1","gamma_2")
  DOE = as.matrix(TOMACSdataSAN[,DOEcols])
  opt_gap = as.vector(TOMACSdataSAN[,"Final.Relative.Optimality.Gap"])
  
  
  
  # fit GP model to data, make model object global
  # use homGP or hetGP
  # make fitted GP object global so function can access
  #mmSSCONTgap <<- mleHetGP(DOE,opt_gap,covtype = "Matern5_2") 
  #mmSSCONTgap <<- mleHetGP(DOE,opt_gap,covtype = "Matern5_2", maxit = 1000)
  mmSANgap <<- mleHetGP(DOE,opt_gap,covtype = "Gaussian", maxit = 1000)
  # define GP approximation function
  f <- function(x){
    gap = predict(x = x, object = mmSANgap)$mean
    return(gap)
  }
