//Datos Entrada: Orden Matriz
//Datos Salida: Valores Matriz,Mostrar Matriz,Mostrar Ubicación,Mostrar Diagonal Principal,Mostrar Diagonal Secundaria,Mostrar contorno
Algoritmo menuDeOpciones
	definir matriz,ordenMatriz,opciones Como Entero
	definir ingreso como logico
	ingreso = Falso
	Repetir
		Escribir "Ingrese orden de la matriz(impar): "
		leer ordenMatriz
	Mientras Que ordenMatriz % 2 = 0
	Dimension matriz(ordenMatriz,ordenMatriz)
	Escribir "Elija una opción (1 para inicializar): "
	Escribir "1.Crear Matriz"
	Escribir "2.Mostrar Matriz"
	Escribir "3.Mostrar ubicacion(fila,columna)"
	Escribir "4.Mostrar Valores Diagonal Principal"
	Escribir "5.Mostrar Valores Diagonal Principal"
	Escribir "6.Mostrar Valores Contorno"
	Escribir "7.Salir"
	Repetir
		Escribir "Ingrese su seleccion: "
		leer opciones
	Mientras que opciones <> 1
	crearMatriz(matriz,ordenMatriz)
	Repetir
		Escribir "Ingrese su seleccion: "
		leer opciones
	Mientras Que opciones < 2 o opciones > 7
		Segun opciones Hacer
			2:
				mostrarMatriz(matriz,ordenMatriz)
			3:
				ubicacion(matriz,ordenMatriz)
			4:
				elementosDiagonal(matriz,ordenMatriz)
			5:
				elementosDiagonalSecundaria(matriz,ordenMatriz)
			6:
				contornoMatriz(matriz,ordenMatriz)
		FinSegun
FinAlgoritmo

SubProceso crearMatriz(matriz,ordenMatriz)
	definir i ,j Como Entero
	para i <- 0 Hasta ordenMatriz - 1 Hacer
		para j <- 0 Hasta ordenMatriz - 1 Hacer
			matriz(i,j) <- Aleatorio(3,9)
		FinPara
	FinPara
FinSubProceso

SubProceso mostrarMatriz(matriz,ordenMatriz)
	definir i ,j Como Entero
	para i <- 0 Hasta ordenMatriz - 1 Hacer
		Escribir Sin Saltar "[ "
		para j <- 0 Hasta ordenMatriz - 1 Hacer
			Escribir Sin Saltar matriz(i,j)
			Escribir Sin Saltar " "
		FinPara
		Escribir Sin Saltar " ]"
		Escribir ""
	FinPara
FinSubProceso

SubProceso ubicacion(matriz,ordenMatriz)
	definir i,j,fila,columna Como Entero
	Repetir
		Escribir "Ingrese una fila(de 1 hasta el orden): "
		leer fila
		Escribir "Ingrese una columna(de 1 hasta el orden): "
		leer columna
	Mientras Que fila < 1 o columna < 1
	fila <- fila -1
	columna <- columna -1
	mostrar "El elemento en esa ubicacion es ",matriz(fila,columna)
FinSubProceso

SubProceso elementosDiagonal(matriz,ordenMatriz)
	Definir i Como Entero
	Escribir Sin Saltar "Los elementos de la diagonal principal son: "
	para i <- 0 Hasta ordenMatriz - 1 Hacer
		Escribir Sin Saltar matriz(i,i)
		Escribir Sin Saltar " "
	FinPara
FinSubProceso

SubProceso elementosDiagonalSecundaria(matriz,ordenMatriz)
	definir i Como Entero
	Escribir Sin Saltar "Los elementos de la diagonal secundaria son: "
	para i <- 0 Hasta ordenMatriz - 1 Hacer
		Escribir Sin Saltar matriz(i,ordenMatriz - 1 - i)
		Escribir Sin Saltar " "
	FinPara
FinSubProceso

SubProceso contornoMatriz(matriz,ordenMatriz)
	Definir i,j Como Entero
	para i <- 0 Hasta ordenMatriz - 1 Hacer
		para j <- 0 Hasta ordenMatriz -1 Hacer
			si i = 0 o i = ordenMatriz - 1 o j = 0 o j = ordenMatriz - 1 Entonces
				Escribir Sin Saltar "[ "
				Escribir Sin Saltar matriz(i,j)
				Escribir Sin Saltar " ]"
			SiNo
				Escribir Sin Saltar "      "
			FinSi
		FinPara
		Escribir ""
	FinPara
FinSubProceso