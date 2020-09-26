# Ceci est un commentaire
2+2
sqrt(2)
a = exp(2)

# création d'une variable scalaire
b = a + pi
b

# affichage de la valeur# liste des variablesls()
ls()


#########################################################


# Vecteur
x = 1:10
# définition d'une séquence
x
y = 2*x + 3
y[5] ;
y[1:3] ;
y[-3] # composants d'un vecteur
# Matrice
A = matrix(1:15,ncol=5); #value affection will be: all column 1, then column 2 then ...
A
B = matrix(1:15,nc=5,byrow=TRUE) ; #value affection will be: all row 1, then row 2 then ...
B
A[1,3] ;
A[,2] ;
A[2,] ;
A[1:3,1:3] # composants# Listex=list(mat=A, texte="testliste",vec=y)

x[[2]] ; x$vec# composants

# Base de donnée ou data frame, tableau contenant des vecteurs de types
# éventuellement différents 
taille = c(147, 132, 156, 167, 156, 140)
poids = c( 50, 46, 47, 62, 58, 45)
sexe = c("M","F","F","M","M","F")
H = data.frame(taille,poids,sexe)
H
summary(H) 
plot(H$poids,H$taille)