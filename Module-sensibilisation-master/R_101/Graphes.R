help("plot")
help("par")

x11() #ouvre une autre fenêtre pour éviter d'écraser le graphe précédent,
dev.off() #ferme correctement la dernière fenêtre,
split.screen(c(1,2)) #partage la fenêtre en 2 de même que l'option mfrow de la commande par.


# Load or create pdf - jpeg - jpg files

jpeg("fichier.jpeg") # ou bmp(), png(), pdf()
# le graphique n'apparaît pas à l'écran :
plot(1:100); text(20,80,"abcdef")
dev.off() # fermeture indispensable du fichier


# Variables qualitatives

vec=c(12,10,7,13,26,16,4,12)
pie(vec);pie(vec,clockwise=T)
names(vec)=LETTERS[1:8]
# de très nombreuses options sont disponibles
pie(vec)
barplot(vec)
# pour découper la fenêtre en 1 ligne 2 colonnes
par(mfrow=c(1,2))
pie(vec)
barplot(vec)
par(mfrow=c(1,1))
mosaicplot(Titanic, color = T)
colors()

# variables quantitatives

x=rnorm(50)
boxplot(x,horizontal=T)
hist(x)
stripchart(x)



# Croisement de variables.

data(iris)
pairs(iris[,1:4])
par(mfrow=c(2,2))
plot(iris[,1],iris[,2],xlab="Sepal Length",
     ylab="Sepal Width",main="Iris data",
     col="red",type="l")
points(iris[,1],iris[,2],col="green",pch=21)
boxplot(iris[,1:4])
hist(iris[,1],xlab="Sepal Length",
     main="Histogramme")


# Ajouter des éléments graphiques.

x=seq(-10,10,l=50)
plot(x,sin(x))
plot(x,sin(x),type="l")
abline(v=0,col="blue",lwd=5,lty=3)
abline(h=sin(0.7),col=3)

text(-5,-0.5,"texte",font=3)


# Gestion des libellés.

par(mfrow=c(1,2))
plot(x,sin(x),type="l",col=1,main="sinus")
plot(x,cos(x),type="b",col=3,xlab="Abscisses")


# 3D graphs

M=matrix(1:100,nc=10)
# images, nappes et contours
image(M)
x = seq(-10, 10, length= 30);y=x
f = function(x,y){r=sqrt(x^2+y^2); 10 * sin(r)/r}
z = outer(x, y, f)
z[is.na(z)] = 1
persp(x,y,z)
persp(x, y, z, theta=30, phi=30,expand = 0.5,
      col="lightblue")
image(x,y,z)
contour(x,y,z)
filled.contour(x,y,z)
image(x,y,z)
contour(x,y,z,add=T)


# Pour mieux comprendre la fonction outer(), tester :
x=y=1:5
z=outer(x,y,"+");z
