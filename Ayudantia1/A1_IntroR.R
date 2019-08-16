#### Ayudantía 1 - Introducción a R ####
##Profesor: Luis Maldonado
##Ayudantes: Catalina Rufs - José Daniel Conejeros

###Interactuando con R y RStudio

# : Comentarios que no se ejecutan como comandos
# + : Sigue el comando en la próxima linea
# ; : Para escribir m?s de una función en la misma línea

## Aritmética básica
2+3 #Suma
2-3 #Resta
2*3 #Multiplicación
2/3 #División
2^3 #Potencia


## Funciones
log(1000) #Por DEFAULT es logaritmo natural, en base a euler 2,718.
log(2,718) #Cercano a 1 porque euler elevado a 1 = euler
log(100, base=10)
log10(100)

help("log") #Para saber argumentos
?log

example("log")
#1e-3 = 0,003
#7.2e4 = 72000

args("log")

log(100,10) #= log(100, base=10)


##Vectores y variables
c(1) #Vector de un elemento
c(1, 2 , 3 , 4) #Crear un vector

1:4
4:1

seq(1, 4)
seq(4, 1)

-1:2
seq(-1, 2)

seq(2, 8, by=2)

seq(0, 1, by=0.1)

seq(0, 1, length=11)


##Operaciones aritméticas
c(1, 2, 3 , 4)/2
(1:4)/2
(1:4)*(4:1)

log(c(0.1, 1, 10, 100), base=10)

c(1, 2 , 3 , 4) + c(4, 3)
c(1, 2 , 3 , 4) + c(4, 3, 2) #Produce warning cuando no son múltiplos
(1:4)*(1:6) #Warning
(1:4)*(1:2)


##Matrices
x <- matrix(1:9,3,3)
x

y <- matrix(1:8,2,4,byrow = F) #Genera una matriz con 2 filas y 4 columnas que se ir? completando por columnas
y

z <- matrix(1:8,2,4,byrow = T) #Genera la matriz complet?ndola por filas
z


##Objetos
x <- c(1,2,3,4)
z=c(1,2,3,4)

edad <- c(23, 45, 67, 89)
sexo <- c(1, 1, 0, 1)

edad
sexo


##Fijar directorio
getwd() #Se obtiene el directorio de trabajo actual
setwd("ruta") #Establecer directorio de trabajo
setwd("C:\Users\CATAL\Dropbox\SOL201S_Datos_III\SOL201S_2019\Ayudantia\SOL201S_Datos_3\Ayudantia1") #error
setwd("C:/Users/CATAL/Dropbox/SOL201S_Datos_III/SOL201S_2019/Ayudantia/SOL201S_Datos_3/Ayudantia1")


##Instalar paquetes
library() #Puedo revisar los paquetes instalados
install.packages("librería") #Para instalar
library("librería") #Las librerías se instalan solo una vez, pero deben ser cargadas si se quieren utilizar en la sesión de trabajo

install.packages("dplyr") #Para manipulación de datos
install.packages("car") #"Companion to Applied Regression" (Fox & Weisberg)

install.packages("pacman") #Sólo la primera vez. Este es un paquete que nos permite administrar otros paquetes.
pacman::p_load(dplyr,
               car) #Cada vez
#El camino tradicional:
library(dplyr)
library(car)

