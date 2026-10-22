
Algoritmo desplazarMatriz
	definir matriz,ordenMatriz,fila,columna Como Entero
	Repetir
		Escribir "Ingrese el orden de la matriz: "
		leer ordenMatriz
	Mientras Que ordenMatriz < 1
	Dimension matriz(ordenMatriz,ordenMatriz)
	ingresarValores(matriz,ordenMatriz)
	mostrarMatriz(matriz,ordenMatriz)
	Mostrar "Ingrese una fila para desplazar: "
	leer fila
	
	DesplazarLaMatriz(matriz,ordenMatriz,fila)
	
	Mostrar "Ingrese una columna: "
	leer columna
	
	DesplazarLaColumna(matriz,ordenMatriz,columna)
	
FinAlgoritmo

SubProceso ingresarValores(matriz,ordenMatriz)
	Definir i,j Como Entero
	para i <- 0 Hasta ordenMatriz - 1 Hacer
		para j <- 0 Hasta ordenMatriz - 1 Hacer
			matriz(i,j) <- Aleatorio(1,9)
		FinPara
	FinPara
FinSubProceso

SubProceso mostrarMatriz(matriz,ordenMatriz)
	definir i,j Como Entero
	para i <- 0 Hasta ordenMatriz - 1 Hacer
		Escribir "[ " Sin Saltar
		para j <- 0 Hasta ordenMatriz - 1 Hacer
			Escribir matriz(i,j) Sin Saltar
			Escribir " " Sin Saltar
		FinPara
		Escribir " ]" Sin Saltar
		Escribir ""
	FinPara
FinSubProceso

SubProceso DesplazarLaMatriz(matriz,ordenMatriz,fila)
	Definir i,j,auxiliarMatriz Como Entero
	auxiliarMatriz <- matriz(fila,ordenMatriz-1)
	para j <- ordenMatriz - 1 Hasta 1 Con Paso -1 Hacer
			matriz(fila,j) <- matriz(fila,j-1)
	FinPara
		matriz(fila,0) <- auxiliarMatriz
FinSubProceso

SubProceso DesplazarLaColumna(matriz,ordenMatriz,columna)
	Definir i,j,AuxiliarMatriz Como Entero
	Dimension AuxiliarMatriz(ordenMatriz)
	para i <- 0 Hasta ordenMatriz - 1 Con Paso 1 Hacer
		AuxiliarMatriz(i) <- matriz(i,columna)
	FinPara
	Para i <- ordenMatriz - 1 Hasta 0 Con Paso - 1 Hacer
		matriz(i,columna) <- AuxiliarMatriz(ordenMatriz - 1 - i)
	FinPara
FinSubProceso


