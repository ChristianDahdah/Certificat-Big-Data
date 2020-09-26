getwd() # Get location where data is collected

# Change location of where data is collected
setwd("C:/Users/Christian/Documents/3A Supaero/Certificat Big Data/Module-sensibilisation-master/R")

2+2
exp(10)
a = log(2)
b <- cos(10) # "<-" est équivalent à "="
a+b
a
b
2==3
b = 2<3
ls() # variables de l'environnement de travail
rm(a) # effacer une ou plusieurs variables
a
a="texte"

#Manipulation de Chaînes de caractères.

c="ABCdef";nchar(c);c
is.character(c)
substr(c,1,3)
# changer la casse
tolower(c)
toupper(c)
# coller
paste("alpha",c,sep="-")

# Type de booléen et opérateurs logiques

a = 3 ; b = 6
a<=b
a!=b
(b-3==a) & (b>=a)
(b ==a) | (b>=a)

# Vecteurs

d = c(2,3,5,8,4,6); d
is.vector(d)
c(2,5,"texte")

#Séquences et répétitions.
1:10
seq(from=1,to=20,by=2)
seq(1,20,by=5)
seq(1,20,length=5)
rep(5,times=10)
rep(c(1,2),3)
rep(c(1,2),each=3)
e = rep(1,10)

#Extraction dans un vecteur par [] et valeurs manquantes.
d[2];d[2:3];d[-3]
# attention aux indices :
d[-1:2];d[-(1:2)]
# NA (Not Available) signale une donnée manquante
d[3]=NA;d;summary(d)
is.na(d);help(NA)
# fonctions "any" et "all"
any(is.na(d))
all(is.na(d))

# Labels et opérations.
f = c(a=12,b=26,c=32,d=41);f
names(f);f["a"]
names(f)=c("a1","a2","a3","a4")
f>30;
f[f>30] # noter les différences
which(f>30)
f[2] = 22;f+100;f+d # un problème ?
cos(f);length(f);sum(f)
t(f) # transposition
e=rep(2,4); 2*e; 2+e
e+f ; e*f # opérations terme à terme
t(f)%*%e # produit scalaire
a<-c(3,-1,5,2,-7,3,9)
abs(a);sort(a);order(a)

# Facteurs

vect=c("a","b","c","b","f","a")
vect
vect.f=as.factor(vect)
vect.f
as.integer(vect.f)
as.character(vect.f)

# Matrices

A = matrix(1:15,ncol=5);A
B = matrix(1:15,nc=5,byrow=T)
B2=B;B2[1,1]="toto";B2
cbind(A,B);rbind(A,B) # concaténations
A[1,3];A[,2];B[2,] # composants
A[1:3,2:4]

# Opérations sur les matrices ;
g = seq(0,1,length=20)
C = matrix(g,nrow=4)
dim(C)
C[C[,1]>0.1,] # *
# ranunif : tirage aléatoire uniforme
D = matrix(runif(16),ncol=4)
D>0.5
D[D[,1]>0.5,2] # **
A+B;A*B # opérations terme à terme
cos(A); cos(A[1:2,1:2])
# inversion
solve(A)
solve(A[1:2,1:2])
# produit matriciel
t(A) %*% B
A[1:2,1:2] %*% B[1:2,1:3]
t(B); diag(A)
apply(A,2,sum) # *** # fait la somme par colonnes. Si apply(A,1,sum): fait la somme par rangé
apply(D,1,max)
# Eléments propres
s=eigen(A[1:2,2:3])
s$values
s$vectors

# Tableaux

array(c(1:8, rep(1,8),seq(0,1,len=8)), dim = c(2,4,3))
E = .Last.value
E[, , 1]
dim(E);length(E)
nrow(E);ncol(E)
E+10
H=array(1:12,c(2,3,2))
apply(H,1,mean) # mean of rows of all the sub-matrices
apply(H,2,mean) # mean of columns of all sub-matrices
apply(H,3,mean) # mean of sub-matrices independently


# Lists - Listes

x = list("toto",1:8);x
x[[1]];x[[1]]+1;
x[[2]]+10 # *
y = list(matrice=D,vecteur=f,texte="toto",scalaire=8)
names(y);y[[1]]
y$matrice;y$vec
y[c("texte","scal")] # **
y[c("texte","scalaire")]
length(y)
length(y$vecteur)
cos(y$scalaire)+y[[2]][1] ### "y[[2]][1]" j'accede le premier element de la list qui est un vecteur dans ce cas, et puis j'accede le premier element de ce vecteur
summary(y)



# data frame - data.frame est un ensemble heterogenes de vecteurs rangés colonne par colonne de même longeur

taille = runif(12,150,180)
masse = runif(12,50,90)
sexe = rep(c("M","F","F","M"),3)
H = data.frame(taille,masse,sexe)
H;summary(H)
# analogies entre data.frame, list et matrix
H[1,];H$taille;H$sexe
is.data.frame(H)
is.matrix(H)
MH = as.matrix(H)
summary(MH)
as.list(H)
rm(taille);taille # (1)
H$taille
attach(H);taille # (2)
search() # (3)
detach();taille # (4)


# import
fic1=read.table("fic1.csv",sep=",")
fic1
fic1b=read.csv("fic1.csv")
fic1b
fic1b=read.csv("fic1.csv",header=FALSE)
fic1b

# dec for decimal("." by default not a comma ","), header means like the first row contains titles of the columns
ficccc = read.table("ficccc.txt",sep=";",dec=",", header =T)

#export

A=seq(1,10,l=50)
write.table(A,"A.txt")
sink("A2.txt") # début. Exports all print outs in txt file
A;summary(A)
sink() # arrêt et fermeture du fichier
summary(A)

