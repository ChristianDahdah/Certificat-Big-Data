#Estimation

n=10
Y=rnorm(n,80,5)# g�n�ration
Y
mean(Y)# moyenne
sd(Y)# �cart-type

sd(Y)/sqrt(length(Y))# �cart-type de la moyenne

summary(Y)# quartiles et moyenne
boxplot(Y)# diagramme bo�te
# histogramme de la densit�
hist(Y, probability=T, col="blue") # probability = True yaane badel ma yhot l frequence bihot l probabilite
# estimation par la m�thode du noyau
lines(density(Y), col="red", lwd=2)
# tracer la loi th�orique
x=1:100
curve(dnorm(x,mean=80,sd=5),add=TRUE,col="red",lwd=1)


##########################################################

# Loi des grands nombres

n=100
# matrice de nombres al�atoires de
# 10 colonnes et n lignes
Y=matrix(rnorm(n*10,80,5),n,10)
# moyenne de chaque colonne
apply(Y,2,mean)
mean(apply(Y,2,mean))# moyenne des moyennes, le 2 indique parcourir par colonne, le 1 c'est donc par row
# �cart-type de chaque colonne
apply(Y,2,sd)
mean(apply(Y,2,sd))# moyenne des �carts-types


##########################################################

# Th�or�me de la limite centrale

# IMPORTANT CONCLUSION WITH HISTOGRAMME: 

# La simulation propos�e illustre le r�sultat fondamental du th�or�me de la limite centrale :
# une SOMME de variables al�atoires ind�pendantes et de m�me loi converge vers une variable al�atoire deloi gaussienne. 
# Faire varier N=4,8,12,20. Remarquer que la convergence est tr�s rapide.
# Ceci "justifie" la pratique qui revient � consid�rer que la loi d'un estimateur est gaussienne lorsque n est "suffisamment" grand avec n >30.




n=1000
N=12
X=rep(0,n) # creates a 0 vector of length n 
# n it�rations
for (i in 1 : n)
  X[i]=sum(runif(N)) # runif(N, min = 0, max = 1) give a vector of size N with a uniform distribution (yaane zet l probability kellon)
# histogramme
hist(X, col="blue", probability=T)
# estimation par m�thode du noyau
lines(density(X), col="red", lwd=2) # lines lets to draw a curve based on real points
x=X
sigma2=N/12
curve(dnorm(x,mean=N/2,
            sd=sqrt(sigma2)),add=T, col="green", lwd=2)

