Algoritmo matrizCuadrada
	definir matriz,ordenDeLaMatriz,opciones Como Entero
	Escribir "Ingrese el orden de la matriz: "
	leer ordenDeLaMatriz
	si ordenDeLaMatriz < 1 Entonces
		verificarOrden(ordenDeLaMatriz)
	FinSi
	
	Dimension matriz(ordenDeLaMatriz,ordenDeLaMatriz)
	
	ingresarValores(matriz,ordenDeLaMatriz)
	
	Repetir
		Mostrar "1.Traspuesta"
		Mostrar "2.Simetria"
		Mostrar "3.Triangular"
		Mostrar "cualquiera de los numeros que no esten para salir"
		Escribir "Ingrese una opcion: "
		leer opciones
		si opciones = 1 Entonces
			cargarTraspuesta(matriz,ordenDeLaMatriz)
		SiNo
			si opciones = 2 Entonces
				cargarSimetria(matriz,ordenDeLaMatriz)
			SiNo
				si opciones = 3 Entonces
					cargarTriangular(matriz,ordenDeLaMatriz)
				FinSi
			FinSi
		FinSi
	Mientras Que opciones <> 1 o opciones <> 2 o opciones <> 3
	
FinAlgoritmo

SubProceso verificarOrden(ordenDeLaMatriz por referencia)
	Repetir
		Escribir "Ingrese el orden de la matriz mayor a cero: "
		leer ordenDeLaMatriz
	Mientras Que ordenDeLaMatriz < 1
FinSubProceso

SubProceso ingresarValores(matriz Por Referencia,ordenDeLaMatriz)
	definir i,j,numeroColumna,numeroFila como entero
	numeroFila <- 0
	para i <- 0 hasta ordenDeLaMatriz - 1 Hacer
		numeroFila <- numeroFila + 1
		numeroColumna <- 0
		para j <- 0 hasta ordenDeLaMatriz - 1 Hacer
			numeroColumna <- numeroColumna + 1
			Escribir "Ingrese el valor en la fila ",numeroFila," y columna ",numeroColumna,": "
			leer matriz(i,j)
		FinPara
	FinPara
FinSubProceso

SubProceso cargarTraspuesta(matriz,ordenDeLaMatriz)
	Definir i,j Como Entero
	para i <- 0 Hasta ordenDeLaMatriz - 1 Hacer
		para j <- 0 Hasta ordenDeLaMatriz - 1 Hacer
			Escribir Sin Saltar "[ "
			Escribir Sin Saltar matriz(j,i),","
			Escribir Sin Saltar " ]"
		FinPara
		Escribir ""
	FinPara
FinSubProceso

SubProceso cargarSimetria(matriz,ordenDeLaMatriz)
	Definir i,j,contadorSimetria,contadorAsimetria Como Entero
	contadorSimetria <- 0
	contadorAsimetria <- 0
	para i <- 0 Hasta ordenDeLaMatriz - 1 Hacer
		para j <- 0 Hasta ordenDeLaMatriz - 1 Hacer
			si matriz(i,j) = matriz(j,i) Entonces
				contadorSimetria <- contadorSimetria + 1
			FinSi
			si matriz(i,j) * (-1) = matriz(j,i) Entonces
				contadorAsimetria <- contadorAsimetria + 1
			FinSi
		FinPara
	FinPara
	si contadorSimetria = ordenDeLaMatriz * ordenDeLaMatriz Entonces
		Mostrar "La matriz es simètrica"
	SiNo
		Mostrar "La matriz no es simètrica"
	FinSi
	
	si contadorAsimetria = ordenDeLaMatriz * ordenDeLaMatriz Entonces
		Mostrar "La matriz es antisimetrica"
	SiNo
		Mostrar "La matriz NO es antisimetrica"
	FinSi
FinSubProceso

SubProceso cargarTriangular(matriz,ordenDeLaMatriz)
	definir i,j,contadorSuperior,contadorInferior Como Entero
	contadorInferior <- 0
	contadorSuperior <- 0
	para i <- 0 hasta ordenDeLaMatriz - 1 Hacer
		para j <- 0 Hasta ordenDeLaMatriz -1 Hacer
			si i <> j y i < j y matriz(i,j) = 0 Entonces
				contadorInferior <- contadorInferior + 1
			FinSi
			si i <> j y i > j y matriz(i,j) = 0 Entonces
				contadorSuperior <- contadorSuperior + 1
			FinSi
		FinPara
	FinPara
	si contadorInferior = ordenDeLaMatriz Entonces
		Mostrar "La matriz es triangular inferior"
	SiNo
		Mostrar "La matriz no es triangular inferior"
	FinSi
	si contadorSuperior = ordenDeLaMatriz Entonces
		Mostrar "La matriz es triangular superior"
	SiNo
		Mostrar "La matriz no es triangular superior"
	FinSi
FinSubProceso



