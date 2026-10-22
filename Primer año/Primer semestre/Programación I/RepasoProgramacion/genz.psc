Algoritmo genz
	definir muestra,gen Como Caracter
	definir longitudMuestra,i,ordenMatriz Como Entero
	
	Repetir
		Escribir "Ingrese la muestra: "
		leer muestra
		longitudMuestra <- Longitud(muestra)
	Mientras Que (longitudMuestra <> 9 y longitudMuestra <> 16 y longitudMuestra <> 1369)
	
	cargarMatriz(muestra,longitudMuestra,ordenMatriz)
	
	dimension gen(ordenMatriz,ordenMatriz)
	
	formarMatriz(gen,ordenMatriz,muestra)
	
	si igualacionDiagonalSecundaria(gen,ordenMatriz) = 1 y igualacionDiagonalPrincipal(gen,ordenMatriz) = 1 Entonces
		Escribir "Ha encontrado el GEN Z"
	SiNo
		Escribir "No ha encontrado el GEN Z"
	FinSi
	
FinAlgoritmo

SubProceso cargarMatriz(muestra,longitudMuestra,ordenMatriz Por Referencia)
	definir i,j Como Entero
	si longitudMuestra = 9 Entonces
		ordenMatriz <- 3
	SiNo
		si longitudMuestra = 16 Entonces
			ordenMatriz <- 4
		SiNo
			si longitudMuestra = 1369 Entonces
				ordenMatriz <- 37
			FinSi
		FinSi
	FinSi
FinSubProceso

SubProceso formarMatriz(gen,ordenMatriz,muestra)
	Definir i,j,numeroSubcadena Como Entero
	numeroSubcadena <- 1
	para i <- 0 Hasta ordenMatriz - 1 Hacer
		para j <- 0 Hasta ordenMatriz - 1 Hacer
			gen(i,j) <- Subcadena(muestra,numeroSubcadena,numeroSubcadena)
			numeroSubcadena <- numeroSubcadena + 1
		FinPara
	FinPara
FinSubProceso

Funcion diagonalPrincipal <- igualacionDiagonalPrincipal(gen,ordenMatriz)
	definir i,contadorDiagonalPrincipal,diagonalPrincipal Como Entero
	Definir auxiliar Como Caracter
	contadorDiagonalPrincipal <- 0
	diagonalPrincipal <- 0
	para i <- 0 Hasta 0 Hacer
		auxiliar <- gen(i,i)
	FinPara
	
	para i <- 1 Hasta ordenMatriz - 1 Hacer
		si auxiliar = gen(i,i) Entonces
			contadorDiagonalPrincipal <- contadorDiagonalPrincipal + 1
		FinSi
	FinPara
	
	si contadorDiagonalPrincipal = ordenMatriz - 1 Entonces
		diagonalPrincipal <- 1
	FinSi
FinFuncion

Funcion diagonalSecundaria <- igualacionDiagonalSecundaria(gen,ordenMatriz)
	definir i,contadorDiagonalSecundaria,diagonalSecundaria Como Entero
	Definir auxiliar Como Caracter
	contadorDiagonalSecundaria <- 0
	diagonalSecundaria <- 0
	para i <- 0 Hasta 0 Hacer
		auxiliar <- gen(i,ordenMatriz - i - 1)
	FinPara
	
	para i <- 1 Hasta ordenMatriz - 1 Hacer
		si auxiliar = gen(i,ordenMatriz - i - 1) Entonces
			contadorDiagonalSecundaria <- contadorDiagonalSecundaria + 1
		FinSi
	FinPara
	
	si contadorDiagonalSecundaria = ordenMatriz - 1 Entonces
		diagonalSecundaria <- 1
	FinSi
FinFuncion