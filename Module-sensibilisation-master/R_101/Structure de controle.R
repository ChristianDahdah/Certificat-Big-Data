
# for var in seq) {commandes}
# while (condition) {commandes}
# repeat {commandes ; if (condition) break }

# La condition est évaluée avant toute exécution dans while alors que repeat exécute au moins une fois les commandes.

for (i in 1:10) print(i)
y=z=0;
for (i in 1:10) {
  x=runif(1)
  if (x>0.5) y=y+1
  else z=z+1 }
y;z
for (i in matrix(1:10,ncol=5)) print(i)
x = rnorm(100)
y = ifelse(x>0, 1, -1) # condition
y;i=0
while (i<10){
  print(i)
  i=i+1}

# Functions - Fonctions

Calcule=function(r){
  p=2*pi*r;s=pi*r*r;
  list(rayon=r,perimetre=p,
       surface=s)}
resultat=Calcule(3)
resultat$ray
2*pi*resultat$r==resultat$perim
resultat$rsurface


# Commandes de type apply

data(iris)
apply(iris[,1:4],2,sum)
lapply(iris[,1:4],sum)
sapply(iris[,1:4],sum)
tapply(iris[,1],iris[,5],sum)
