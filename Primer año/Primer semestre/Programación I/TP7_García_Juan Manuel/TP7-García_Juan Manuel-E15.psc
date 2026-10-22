Algoritmo matrizMagica
	definir sumaFilas,sumaColumnas,sumaDiagonal,matriz Como Entero
	
	//Dimensionamos la matriz
	dimension matriz(3,3)
	sumaFilas <- 0
	sumaColumnas <- 0
	sumaDiagonal <- 0
	
	//Cargamos los valores
	cargarValores(matriz)
	
	//Verificamos la suma de cada una de sus filas
	verificarSumaFilas(matriz,sumaFilas)
	
	//Verificamos la suma de cada una de sus columnas
	verificarSumaColumnas(matriz,sumaColumnas)
	
	//Verificamos la suma de su diagonal
	verificarSumaDiagonal(matriz,sumaDiagonal)
	
	//Condicion a cumplir
	si sumaColumnas = sumaFilas y sumaFilas = sumaDiagonal Entonces
		Mostrar "El cuadrado es mágico"
		Mostrar "La suma de cada columna,fila,diagonal es: ",sumaColumnas
	SiNo
		Mostrar "No es un cuadrado magico"
	FinSi
	
FinAlgoritmo

//Subproceso cargar valores
SubProceso cargarValores(matriz)
	Definir i,j,numeroFila,numeroColumna Como Entero
	numeroFila <- 0
	para i <- 0 hasta 2 Hacer
		numeroFila <- numeroFila + 1
		numeroColumna <- 0
		para j <- 0 hasta 2 Hacer
			numeroColumna <- numeroColumna + 1
			Escribir "Ingrese valores de fila ",numeroFila," y columna ",numeroColumna,": "
			leer matriz(i,j)
			Mientras matriz(i,j) > 10 Hacer
				Escribir "Ingrese valores menores a 10: "
				leer matriz(i,j)
			FinMientras
		FinPara
	FinPara
FinSubProceso

//Subproceso suma filas
SubProceso verificarSumaFilas(matriz,sumaFilas Por Referencia)
	definir i,j,k,sumaToTal,sumaReferencia,contador Como Entero
	sumaReferencia <- 0
	contador <- 0
	para k = 0 Hasta 2 Hacer
		sumaReferencia <- sumaReferencia + matriz(0,k)
	FinPara
	
	para i = 1 Hasta 2 Hacer
		sumaTotal <- 0
		para j = 0 Hasta 2 Hacer
			sumaTotal <- sumaTotal + matriz(i,j)
		FinPara
		si sumaTotal = sumaReferencia Entonces
			contador = contador + 1
		FinSi
	FinPara
	
	si contador = 2 Entonces
		sumaFilas = sumaReferencia
	FinSi
FinSubProceso

//Subproceso suma columnas
SubProceso verificarSumaColumnas(matriz,sumaColumnas Por Referencia)
	definir i,j,k,sumaToTal,sumaReferencia,contador Como Entero
	sumaReferencia <- 0
	contador <- 0
	para k = 0 Hasta 2 Hacer
		sumaReferencia <- sumaReferencia + matriz(k,0)
	FinPara
	
	para j = 1 Hasta 2 Hacer
		sumaTotal <- 0
		para i = 0 Hasta 2 Hacer
			sumaTotal <- sumaTotal + matriz(i,j)
		FinPara
		si sumaTotal = sumaReferencia Entonces
			contador = contador + 1
		FinSi
	FinPara
	
	si contador = 2 Entonces
		sumaColumnas = sumaReferencia
	FinSi
FinSubProceso

//Subproceso suma diagonal
SubProceso verificarSumaDiagonal(matriz,sumaDiagonal Por Referencia)
	definir i,j Como Entero
	sumaDiagonal <- 0
	para i <- 0 Hasta 2 Hacer
		para j <- 0 Hasta 2 Hacer
			si i = j Entonces
				sumaDiagonal <- sumaDiagonal + matriz(i,j)
			FinSi
		FinPara
	FinPara
FinSubProceso
	