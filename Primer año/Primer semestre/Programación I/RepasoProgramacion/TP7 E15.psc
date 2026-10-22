Algoritmo cuadradoMagico
	Definir matriz,ordenMatriz Como Entero
	
	Repetir
		Escribir "Ingrese orden de la matriz: "
		leer ordenMatriz
	Mientras Que ordenMatriz < 1
	
	dimension matriz(ordenMatriz,ordenMatriz)
	
	cargarValoresMatriz(matriz,ordenMatriz)
	
	si sumaTotalColumnas(matriz,ordenMatriz) = sumaTotalFilas(matriz,ordenMatriz) y sumaTotalFilas(matriz,ordenMatriz) = recorrerDiagonalPrincipal(matriz,ordenMatriz) y sumaTotalFilas(matriz,ordenMatriz) =  recorrerDiagonalSecundaria(matriz,ordenMatriz) Entonces
		Mostrar "Es un cubo mágico"
	SiNo
		Mostrar "No es un cubo mágico"
	FinSi
FinAlgoritmo

SubProceso cargarValoresMatriz(matriz,ordenMatriz)
	definir i,j,numFila,numColumna Como Entero
	numFila <- 0
	para i <- 0 Hasta ordenMatriz - 1 Hacer
		numFila <- numFila + 1
		numColumna <- 0
		para j <- 0 Hasta ordenMatriz - 1 Hacer
			numColumna <- numColumna + 1
			Escribir "Ingrese los valores de la matriz en la fila ",numFila," y columna ",numcolumna,": "
			leer matriz(i,j)
		FinPara
	FinPara
FinSubProceso

Funcion sumaFilas <- sumaTotalFilas(matriz,ordenMatriz)
	definir i,j,sumaTotal,contadorSuma,sumaAuxiliar,sumaFilas Como Entero
	sumaAuxiliar <- 0
	contadorSuma <- 0
	sumaFilas <- 0
	para i <- 0 Hasta 0 Hacer
		para j <- 0 Hasta ordenMatriz - 1 Hacer
			sumaAuxiliar <- sumaAuxiliar + matriz(i,j)
		FinPara
	FinPara
	
	para i <- 1 Hasta ordenMatriz - 1 Hacer
		sumaTotal <- 0
		para j <- 0 Hasta ordenMatriz - 1 Hacer
			sumaTotal <- sumaTotal + matriz(i,j)
		FinPara
		si sumaTotal = sumaAuxiliar Entonces
			contadorSuma <- contadorSuma + 1
		FinSi
	FinPara
	
	si contadorSuma = ordenMatriz - 1 Entonces
		sumaFilas <- sumaAuxiliar
	FinSi
FinFuncion

Funcion sumaColumnas <- sumaTotalColumnas(matriz,ordenMatriz)
	definir i,j,sumaTotal,contadorSuma,sumaAuxiliar,sumaColumnas Como Entero
	sumaAuxiliar <- 0
	contadorSuma <- 0
	sumaColumnas <- 0
	para j <- 0 Hasta 0 Hacer
		para i <- 0 Hasta ordenMatriz - 1 Hacer
			sumaAuxiliar <- sumaAuxiliar + matriz(i,j)
		FinPara
	FinPara
	
	para j <- 1 Hasta ordenMatriz - 1 Hacer
		sumaTotal <- 0
		para i <- 0 Hasta ordenMatriz - 1 Hacer
			sumaTotal <- sumaTotal + matriz(i,j)
		FinPara
		si sumaTotal = sumaAuxiliar Entonces
			contadorSuma <- contadorSuma + 1
		FinSi
	FinPara
	
	si contadorSuma = ordenMatriz - 1 Entonces
		sumaColumnas <- sumaAuxiliar
	FinSi
FinFuncion

Funcion diagonalPrincipal <- recorrerDiagonalPrincipal(matriz,ordenMatriz)
	definir i,sumatotal,diagonalPrincipal Como Entero
	sumatotal <- 0
	para i <- 0 Hasta ordenMatriz - 1 Hacer
		sumatotal <- sumatotal + matriz(i,i)
	FinPara
	diagonalPrincipal <- sumatotal
FinFuncion

Funcion diagonalSecundaria <- recorrerDiagonalSecundaria(matriz,ordenMatriz)
	definir i,sumatotal,diagonalSecundaria Como Entero
	sumatotal <- 0
	para i <- 0 Hasta ordenMatriz - 1 Hacer
		sumatotal <- sumatotal + matriz(i,ordenMatriz - 1 - i)
	FinPara
	diagonalSecundaria <- sumatotal
FinFuncion
	