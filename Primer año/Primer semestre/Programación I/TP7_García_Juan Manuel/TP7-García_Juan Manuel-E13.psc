Algoritmo sillaDeMatriz
	definir cantidadFilas,cantidadColumnas,matriz Como Entero
	Escribir "Ingrese la cantidad de filas de la matriz: "
	leer cantidadFilas
	Escribir "Ingrese la cantidad de columnas de la matriz: "
	leer cantidadColumnas
	
	si cantidadColumnas < 1 o cantidadFilas < 1 Entonces
		verificarDimension(cantidadColumnas,cantidadFilas)
	FinSi
	dimension matriz(cantidadFilas,cantidadColumnas)
	
	cargarValores(matriz,cantidadFilas,cantidadColumnas)
	
	matrizPuntoSilla(matriz,cantidadFilas,cantidadColumnas)
FinAlgoritmo

SubProceso verificarDimension(cantidadColumnas Por Referencia,cantidadFilas Por Referencia)
	Repetir
		Escribir "Ingrese la cantidad de filas de la matriz mayor o igual a 1: "
		leer cantidadFilas
		Escribir "Ingrese la cantidad de columnas de la matriz mayor o igual a 1: "
		leer cantidadColumnas
	Mientras Que cantidadColumnas < 1 o cantidadFilas < 1
FinSubProceso

SubProceso cargarValores(matriz Por Referencia,cantidadFilas,cantidadColumnas)
	definir i,j,numeroFila,numeroColumna Como Entero
	numeroFila <- 0
	para i <- 0 hasta cantidadFilas - 1 Hacer
		numeroFila <- numeroFila + 1
		numeroColumna <- 0
		para j <- 0 Hasta cantidadColumnas - 1 Hacer
			numeroColumna <- numeroColumna + 1
			Escribir "Ingrese los valores en la fila ",numeroFila," y columna ",numeroColumna,": "
			leer matriz(i,j)
		FinPara
	FinPara
FinSubProceso

SubProceso  matrizPuntoSilla(matriz,cantidadFilas,cantidadColumnas)
		Definir i, j, k, menorFila, mayorColumna, encontrado Como Entero
		encontrado <- 0
		
		para i <- 0 Hasta cantidadFilas - 1 Hacer
			menorFila <- matriz(i, 0)
			para j <- 0 Hasta cantidadColumnas - 1 Hacer
				si matriz(i, j) < menorFila Entonces
					menorFila <- matriz(i, j)
				FinSi
			FinPara
			
			para j <- 0 Hasta cantidadColumnas - 1 Hacer
				si matriz(i, j) = menorFila Entonces
					mayorColumna <- matriz(0, j)
					para k <- 0 Hasta cantidadFilas - 1 Hacer
						si matriz(k, j) > mayorColumna Entonces
							mayorColumna <- matriz(k, j)
						FinSi
					FinPara
					si menorFila = mayorColumna Entonces
						Mostrar "Existe un punto de silla y es: ", menorFila
						encontrado <- 1
					FinSi
				FinSi
			FinPara
			
		FinPara
		
		si encontrado = 0 Entonces
			Mostrar "No hay ningun punto de silla"
		FinSi
		
FinSubProceso
