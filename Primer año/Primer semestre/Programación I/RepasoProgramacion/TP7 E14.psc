Algoritmo menu
	definir matriz,ordenMatriz,opciones,contadorTriangularidadInferior,contadorTriangularidadSuperior,contadorSimetria,contadorAsimetria Como Entero
	Repetir
		Escribir "Ingrese orden de la matriz: "
		leer ordenMatriz
	Mientras Que ordenMatriz < 1
	dimension matriz(ordenMatriz,ordenMatriz)
	
	cargarValoresMatriz(matriz,ordenMatriz)
	
	Repetir
		Escribir "Ingrese una opcion"
		Escribir "1. Sacar Transpuesta"
		Escribir "2. Simetria"
		Escribir "3. Triangularidad"
		leer opciones
	Mientras Que opciones < 1 o opciones > 4
	segun opciones
		1:
			calcularTranspuesta(matriz,ordenMatriz)
		2:
			calcularSimetria(matriz,ordenMatriz,contadorSimetria,contadorAsimetria)
			
			si contadorSimetria = ordenMatriz * ordenMatriz Entonces
				Mostrar "La matriz es simetrica"
			SiNo
				Mostrar "La matriz NO es simetrica"
			FinSi
			
			si contadorAsimetria = ordenMatriz * ordenMatriz Entonces
				Mostrar "La matriz es antisimetrica"
			SiNo
				Mostrar "La matriz NO es antisimetrica"
			FinSi
		3:
			triangularidad(matriz,ordenMatriz,contadorTriangularidadInferior,contadorTriangularidadSuperior)
			
			si contadorTriangularidadInferior = ordenMatriz Entonces
				Mostrar "La matriz es triangular inferior"
			SiNo
				Mostrar "La matriz No es triangular inferior"
			FinSi
			
			si contadorTriangularidadSuperior = ordenMatriz Entonces
				Mostrar "La matriz es triangular superior"
			SiNo
				Mostrar "La matriz No es triangular superior"
			FinSi
	FinSegun
FinAlgoritmo

SubProceso cargarValoresMatriz(matriz,ordenMatriz)
	Definir i,j,numFila,numColumna Como Entero
	numFila <- 0
	para i <- 0 Hasta ordenMatriz - 1 Hacer
		numFila <- numFila + 1
		numColumna <- 0
		para j <- 0 Hasta ordenMatriz - 1 Hacer
			numColumna <- numColumna + 1
			Repetir
				Escribir "Ingrese los valores de la matriz en la fila ",numFila," y la columna ",numcolumna,": "
				leer matriz(i,j)
			Mientras Que matriz(i,j) <> real
		FinPara
	FinPara
FinSubProceso

SubProceso calcularTranspuesta(matriz,ordenMatriz)
	definir i,j Como Entero
	para j <- 0 Hasta ordenMatriz - 1 Hacer
		para i <- 0 Hasta ordenMatriz - 1 Hacer
			Escribir Sin Saltar matriz(i,j)
			Escribir Sin Saltar " "
		FinPara
		Escribir ""
	FinPara
FinSubProceso

SubProceso calcularSimetria(matriz,ordenMatriz,contadorSimetria Por Referencia,contadorAsimetria Por Referencia)
	Definir i,j Como Entero
	contadorSimetria <- 0
	contadorAsimetria <- 0
	para i <- 0 Hasta ordenMatriz - 1 Hacer
		para j <- 0 Hasta ordenMatriz - 1 Hacer
			si matriz(i,j) = matriz(j,i) Entonces
				contadorSimetria <- contadorSimetria + 1
			SiNo
				si matriz(i,j) * (-1) = matriz(j,i) Entonces
					contadorAsimetria <- contadorAsimetria + 1
				FinSi
			FinSi
		FinPara
	FinPara
FinSubProceso

SubProceso triangularidad(matriz,ordenMatriz,contadorTriangularidadInferior Por Referencia,contadorTriangularidadSuperior Por Referencia)
	Definir i,j Como Entero
	contadorTriangularidadInferior <- 0
	contadorTriangularidadSuperior <- 0
	para i <- 0 Hasta ordenMatriz - 1 Hacer
		para j <- 0 Hasta ordenMatriz - 1 Hacer
			si matriz(i,j) = 0 y j > i Entonces
				contadorTriangularidadInferior <- contadorTriangularidadInferior + 1
			SiNo
				si matriz(i,j) = 0 y i > j Entonces
					contadorTriangularidadSuperior <- contadorTriangularidadSuperior + 1
				FinSi
			FinSi
		FinPara
	FinPara
FinSubProceso
