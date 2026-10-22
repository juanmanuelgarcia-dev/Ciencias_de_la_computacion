Algoritmo zombie
	definir matriz Como Caracter
	definir ordenMatriz Como Entero
	Escribir "Ingrese el orden de la matriz: "
	leer ordenMatriz
	si ordenMatriz <> 3 y ordenMatriz <> 4 y ordenMatriz <> 37 Entonces
		validarOrdenMatriz(ordenMatriz)
	FinSi
	Dimension matriz(ordenMatriz,ordenMatriz)
	
	ingresarValores(matriz,ordenMatriz)
	
	enseñarMatriz(matriz,ordenMatriz)
	
	si recorreDiagonal(matriz,ordenMatriz) = Verdadero y recorreContraDiagonal(matriz,ordenMatriz) = Verdadero Entonces
		Mostrar "Se ha detectado el GEN Z"
	SiNo
		Mostrar "No se ha detectado el GEN Z"
	FinSi
	
FinAlgoritmo

SubProceso validarOrdenMatriz(ordenMatriz Por Referencia)
	Repetir
		Escribir "Ingrese el orden de la matriz(debe ser 3,4 o 37): "
		leer ordenMatriz
	Mientras Que ordenMatriz <> 3 y ordenMatriz <> 4 y ordenMatriz <> 37
FinSubProceso

SubProceso ingresarValores(matriz Por Referencia,ordenMatriz)
	definir i,j,numeroFila,numeroColumna Como Entero
	numeroFila <- 0
	para i <- 0 hasta ordenMatriz - 1 Hacer
		numeroFila <- numeroFila + 1
		numeroColumna <- 0
		para j <- 0 hasta ordenMatriz - 1 Hacer
			numeroColumna <- numeroColumna + 1
			Escribir "Ingrese las bases del gen A,B,C o D para fila ",numeroFila," y columna ",numeroColumna,": "
			leer matriz(i,j)
			Mientras matriz(i,j) <> "A" y matriz(i,j) <> "B"y matriz(i,j) <> "C" y matriz(i,j) <> "D" Hacer
				Escribir "Ingrese las bases del gen,deben ser si o si, A,B,C o D para ",numeroFila," y columna ",numeroColumna,": "
				leer matriz(i,j)
			FinMientras
		FinPara
	FinPara
FinSubProceso

SubProceso enseñarMatriz(matriz,ordenMatriz)
	definir i,j Como Entero
	para i <- 0 Hasta ordenMatriz - 1 Hacer
		Escribir Sin Saltar "[ "
		para j <- 0 Hasta ordenMatriz -1 Hacer
			Escribir Sin Saltar matriz(i,j),","
		FinPara
		Escribir Sin Saltar " ]"
		Escribir ""
	FinPara
FinSubProceso

funcion recorrerDiagonal <- recorreDiagonal(matriz,ordenMatriz)
	Definir recorrerDiagonal Como Logico
	definir contador,i,j Como Entero
	Definir referenciaMatriz Como caracter
	recorrerDiagonal <- Falso
	contador <- 0
	para i <- 0 hasta 0 Hacer
		para j <- 0 hasta 0 Hacer
			si i = j Entonces
				referenciaMatriz <- matriz(i,j)
			FinSi
		FinPara
	FinPara
	para i <- 1 hasta  ordenMatriz-1 Hacer
		para j <- 1 hasta ordenMatriz-1 Hacer
			si i = j Entonces
				si referenciaMatriz = matriz(i,j) Entonces
					contador <- contador + 1
				FinSi
			FinSi
		FinPara
	FinPara
	si contador = ordenMatriz - 1 Entonces
		recorrerDiagonal <- Verdadero
	FinSi
FinFuncion

funcion recorrerContraDiagonal <- recorreContraDiagonal(matriz,ordenMatriz)
	Definir recorrerContraDiagonal Como Logico
	definir contador,i,j Como Entero
	Definir referenciaMatriz Como caracter
	referenciaMatriz <- "D"
	recorrerContraDiagonal <- Falso
	contador <- 0
	para i <- 0 hasta 0 Hacer
		para j <- 0 hasta 0 Hacer
			si j = ordenMatriz - i - 1 Entonces
				referenciaMatriz <- matriz(i,j)
			FinSi
		FinPara
	FinPara
	
	para i <- 0 hasta  ordenMatriz-1 Hacer
		para j <- 0 hasta ordenMatriz-1 Hacer
			si j = ordenMatriz - i - 1 Entonces
				si referenciaMatriz = matriz(i,j) Entonces
					contador <- contador + 1
				FinSi
			FinSi
		FinPara
	FinPara
	si contador = ordenMatriz Entonces
		recorrerContraDiagonal <- Verdadero
	FinSi
FinFuncion
	