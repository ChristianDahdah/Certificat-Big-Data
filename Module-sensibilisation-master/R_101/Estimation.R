#Estimation

n=10
Y=rnorm(n,80,5)# génération
Y
mean(Y)# moyenne
sd(Y)# écart-type

sd(Y)/sqrt(length(Y))# écart-type de la moyenne

summary(Y)# quartiles et moyenne
boxplot(Y)# diagramme boîte
# histogramme de la densité
hist(Y, probability=T, col="blue") # probability = True yaane badel ma yhot l frequence bihot l probabilite
# estimation par la méthode du noyau
lines(density(Y), col="red", lwd=2)
# tracer la loi théorique
x=1:100
curve(dnorm(x,mean=80,sd=5),add=TRUE,col="red",lwd=1)


##########################################################

# Loi des grands nombres

n=100
# matrice de nombres aléatoires de
# 10 colonnes et n lignes
Y=matrix(rnorm(n*10,80,5),n,10)
# moyenne de chaque colonne
apply(Y,2,mean)
mean(apply(Y,2,mean))# moyenne des moyennes, le 2 indique parcourir par colonne, le 1 c'est donc par row
# écart-type de chaque colonne
apply(Y,2,sd)
mean(apply(Y,2,sd))# moyenne des écarts-types


##########################################################

# Théorème de la limite centrale

# IMPORTANT CONCLUSION WITH HISTOGRAMME: 

# La simulation proposée illustre le résultat fondamental du théorème de la limite centrale :
# une SOMME de variables aléatoires indépendantes et de même loi converge vers une variable aléatoire deloi gaussienne. 
# Faire varier N=4,8,12,20. Remarquer que la convergence est très rapide.
# Ceci "justifie" la pratique qui revient à considérer que la loi d'un estimateur est gaussienne lorsque n est "suffisamment" grand avec n >30.




n=1000
N=12
X=rep(0,n) # creates a 0 vector of length n 
# n itérations
for (i in 1 : n)
  X[i]=sum(runif(N)) # runif(N, min = 0, max = 1) give a vector of size N with a uniform distribution (yaane zet l probability kellon)
# histogramme
hist(X, col="blue", probability=T)
# estimation par méthode du noyau
lines(density(X), col="red", lwd=2) # lines lets to draw a curve based on real points
x=X
sigma2=N/12
curve(dnorm(x,mean=N/2,
            sd=sqrt(sigma2)),add=T, col="green", lwd=2)

