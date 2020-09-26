# Author: Christian El-Dahdah
# 26/ 09 / 2020



# Takes two random variables and calculates the cumulative distribution function of their sum, multiplication and division
# Also the last parameter if True plots the results
# Param1: Random variable, Param2: Random variable, Param3: boolean

pCertificatBigData <- function(X1, X2, Graph = FALSE) {
  
  #Initializes an empty list of dimension 3
  returns = list(0,0,0);

  # Calculates the cumulative distribution function
  returns[[1]] = ecdf(X1 + X2);
  returns[[2]] = ecdf(X1 * X2);
  returns[[3]] = ecdf(X1 / X2);
  
  # Plots the graphs if needed
  if(Graph == TRUE){
    
    par(mfrow=c(1,3))
    plot(returns[[1]]);
    plot(returns[[2]]);
    plot(returns[[3]]);
    
  }
  
  # returns the values in a list the cumulative distribution function of the sum, multiplication and division
  return(returns)
}





# Takes two random variables and calculates the density function of their sum, multiplication and division
# Also the last parameter if True plots the results
# Param1: Random variable, Param2: Random variable, Param3: boolean

dCertificatBigData <- function(X1,X2, Graph = FALSE) {
  
  #Initializes an empty list of dimension 3
  returns = list(0,0,0);
  
  # Calculates the density distribution function
  returns[[1]] = density(X1 + X2);
  returns[[2]] = density(X1 * X2);
  returns[[3]] = density(X1 / X2);
  
  # Plots the graphs if needed
  if(Graph == TRUE){
    
    par(mfrow=c(1,3))
    plot(returns[[1]]);
    plot(returns[[2]]);
    plot(returns[[3]]);
    
  }
  
  # returns the values of the density functions of the sum, multiplication and division
  return(returns)
}





# Takes two random variables and calculates the quantiles of their sum, multiplication and division
# Also the last parameter if True plots the results
# Param1: Random variable, Param2: Random variable, Param3: boolean

qCertificatBigData <- function(X1, X2, Graph = FALSE) {
  
  
  #Initializes an empty list of dimension 3
  returns = list(0,0,0);
  
  Y = X1 + X2;
  Z1 = X1 * X2;
  Z2 = X1 / X2
  
  # Calculates the quantiles
  returns[[1]] = quantile(Y);
  returns[[2]] = quantile(Z1);
  returns[[3]] = quantile(Z2);
  
  # Plots the graphs if needed
  if(Graph == TRUE){
    
    par(mfrow=c(1,3))
    boxplot(Y);
    boxplot(Z1);
    boxplot(Z2);
    
  }
  
  # returns the values in a list of the quartiles of the sum, multiplication and the division
  return(returns)
}




# Random number generator with a uniform or normal distribution 
# Param1: Type of distribution, Param2: size of the sample
# If uniform distribution: min: for minimum, max for maximum
# If normal distribution: av: mean value, std: standard deviation

rCertificatBigData <- function(distribution = "unif", n, min = 0, max = 1, av = 1, std = 0) {
  
  if(distribution == "unif"){
    # returns a uniform distribution
    return(runif(n, min, max));}
  
  else if(distribution == "norm"){
    #returns a normal distribution
    return(rnorm(n, mean = av, sd = std));}
  
  else{
    print("Invalid distribution type");}
}





# Takes two random variables and calculates the mean of their sum, multiplication and division
# Param1: Random variable, Param2: Random variable

eCertificatBigData <- function(X1,X2) {
  
  #Initializes an empty vector of dimension 3
  returns = rep(0,3);
  
  # Calculates the mean
  returns[1] = mean(X1 + X2);
  returns[2] = mean(X1 * X2);
  returns[3] = mean(X1 / X2);
  
  # returns the values of the averages
  return(returns)
}


# Takes two random variables and calculates the variance of their sum, multiplication and division
# Param1: Random variable, Param2: Random variable

vCertificatBigData <- function(X1,X2) {
  
  #Initializes an empty vector of dimension 3
  returns = rep(0,3);
  
  # Calculates the variance
  returns[1] = var(X1 + X2);
  returns[2] = var(X1 * X2);
  returns[3] = var(X1 / X2);
  
  # returns the values of the variances
  return(returns)
}


# Taille des échantillons
n = 1000;

# X1 X2 sont deux vecteurs contenant 1000 nombres aléatoirement choisi suivant une loi uniforme
# X1: loi uniforme entre 5 et 10
# X2: loi unforme entre 1 et 4

X1 = rCertificatBigData("unif", n, min = 5, max = 10)
X2 = rCertificatBigData("unif", n, min = 1, max = 4)


pCertificatBigData(X1, X2, Graph=TRUE);
dCertificatBigData(X1, X2, Graph=TRUE);
qCertificatBigData(X1, X2, Graph=TRUE);
eCertificatBigData(X1, X2);
vCertificatBigData(X1, X2);


# La somme de deux variables aléatoires uniforme (X1,X2) résulte en une variable aléatoire
# qui suit une loi normale de moyenne = à la somme des moyennes de X1 et X2 et de variance
# égale à la somme des variance de X1 et X2

################################################################################


# X1 X2 sont deux vecteurs contenant 1000 nombres aléatoirement choisi suivant une loi normale
# X1: loi normale de moyenne 80 et ecart-type = 5
# X2: loi normale de moyenne 70 et ecart-type = 3


X1 = rCertificatBigData("unif", n, av = 80, std = 5)
X2 = rCertificatBigData("unif", n, av = 70, std = 3)


pCertificatBigData(X1, X2, Graph=TRUE);
dCertificatBigData(X1, X2, Graph=TRUE);
qCertificatBigData(X1, X2, Graph=TRUE);
eCertificatBigData(X1, X2);
vCertificatBigData(X1, X2);

# Vue les résultats du graphe, des quartiles, de la moyenne, et de la variance
# La somme de deux variables aléatoires normale (X1,X2) résulte en une variable aléatoire
# qui suit une loi normale de moyenne = à la somme des moyennes de X1 et X2 et de variance
# égale à la somme des variance de X1 et X2
