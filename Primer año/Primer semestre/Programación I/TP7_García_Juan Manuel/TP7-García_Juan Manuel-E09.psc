Algoritmo pares
	definir matriz,cantidadFilas,cantidadColumnas,valores Como Entero
	
	cantidadColumnas <- 0
	cantidadFilas <- 0
	
	Escribir "Ingrese la cantidad de filas: "
	leer cantidadFilas
	Escribir "Ingrese la cantidad de columnas: "
	leer cantidadColumnas
	
	si cantidadColumnas < 1 o cantidadFilas < 1 Entonces
		matriz <- tamañoMatriz(cantidadColumnas,cantidadFilas)
	FinSi
	
	Dimension matriz(cantidadFilas,cantidadColumnas)
	
	cargarValores(cantidadColumnas,cantidadFilas,matriz)
	
	sumaTotalNumeros(cantidadColumnas,cantidadFilas,matriz)
	
	MostrarMatriz(cantidadColumnas,cantidadFilas,matriz)
	
FinAlgoritmo

Funcion validarDimension <- tamañoMatriz(cantidadColumnas,cantidadFilas)
	Repetir
		Escribir "Ingrese la cantidad de filas: "
		leer cantidadFilas
		Escribir "Ingrese la cantidad de columnas: "
		leer cantidadColumnas
	Mientras Que cantidadColumnas < 1 o cantidadFilas < 1
FinFuncion

SubProceso cargarValores(cantidadColumnas,cantidadFilas,matriz Por Referencia)
	Definir i,j,numFila,numColumna Como Entero
	numFila <- 0
	para i <- 0 Hasta cantidadFilas - 1 Hacer
		numFila <- numFila + 1
		numColumna <- 0
		Para j <- 0 Hasta cantidadColumnas - 1
			numColumna <- numColumna + 1
		Escribir "Ingrese los valores en la fila ",numFila," y la columna ",numColumna,": "
			Leer matriz(i,j)
		FinPara
	FinPara
FinSubProceso

SubProceso sumaTotalNumeros(cantidadColumnas,cantidadFilas,matriz)
	Definir sumaTotalPares,sumaTotalImpares,i,j Como Entero
	sumaTotalImpares <- 0
	sumaTotalPares <- 0
	para i <- 0 Hasta cantidadFilas - 1 Hacer
		Para j <- 0 Hasta cantidadColumnas - 1
			si matriz(i,j) % 2 = 0 Entonces
				sumaTotalPares <- sumaTotalPares + matriz(i,j)
			SiNo
				sumaTotalImpares <- sumaTotalImpares + matriz(i,j)
			FinSi
		FinPara
	FinPara
	Mostrar "La suma total de los pares: ",sumaTotalPares
	
	Mostrar "La suma total de los impares: ",sumaTotalImpares
FinSubProceso

SubProceso MostrarMatriz(cantidadColumnas,cantidadFilas,matriz)
	definir i,j Como Entero
	para i <- 0 Hasta cantidadFilas - 1 Hacer
		Escribir Sin Saltar "[ "
		Para j <- 0 Hasta cantidadColumnas - 1
			Escribir Sin Saltar matriz(i,j),","
		FinPara
		Escribir Sin Saltar " ]"
		Escribir ""
	FinPara
FinSubProceso




	