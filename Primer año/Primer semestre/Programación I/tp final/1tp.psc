Algoritmo tp
	definir matriz,orden,opciones,fila,columna Como Entero
	Definir repetirSolicitud Como Logico
	
	Repetir
		repetirSolicitud = Falso
		Escribir "Ingrese el orden de la matriz(impar): "
		leer orden
		si orden < 1 Entonces
			Escribir "Ese valor no es posible"
			repetirSolicitud = Verdadero
		SiNo
			si orden % 2 = 0 Entonces
				Escribir "Debe ser un valor impar"
				repetirSolicitud = Verdadero
			FinSi
		FinSi
	Mientras Que repetirSolicitud = Verdadero
	Dimension matriz(orden,orden)
	repetir
		Escribir "Ingrese la primera opcion para cargar la matriz: "
		opciones = seleccionarOpcionMenu
	Mientras Que opciones <> 1
	cargarValoresMatriz(orden,matriz)
	repetir
		opciones = seleccionarOpcionMenu
		Segun opciones Hacer
			2:
				Escribir "La matriz es: "
				mostrarMatriz(matriz,orden)
				Escribir ""
			3:
				repetir
					Escribir "Ingrese la fila que desea: "
					leer fila
					fila <- fila - 1
				Mientras Que fila < 0 o fila > orden - 1
				
				repetir
					Escribir "Ingrese la columna que desea: "
					leer columna
					columna <- columna - 1
				Mientras Que columna < 0 o columna > orden - 1
				Escribir "Ubicacion(",fila+1,",",columna+1,")","=",matriz(fila,columna)
			4:
				recorrerDiagonalPrincipal(matriz,orden)
			5:
				recorrerDiagonalSecundaria(matriz,orden)
			6:
				recorrerContorno(matriz,orden)
			7:
				Escribir "Muchas gracias"
		FinSegun
	Mientras Que opciones <> 7
FinAlgoritmo

funcion opciones = seleccionarOpcionMenu
	definir opciones Como Entero
	repetir
		Escribir "1. Crear Matriz"
		Escribir "2. Mostrar matriz "
		Escribir "3. ubicacion Matriz"
		Escribir "4. diagonal principal Matriz"
		Escribir "5. diagonal secundaria Matriz"
		Escribir "6. contorno Matriz"
		Escribir "7. Salir"
		Escribir "Ingrese la opcion que desee: "
		leer opciones
	Mientras Que opciones < 1 o opciones > 7
FinFuncion

SubProceso cargarValoresMatriz(orden,matriz)
	definir i,j como entero
	para i <- 0 Hasta orden - 1 Hacer
		para j <- 0 Hasta orden - 1 Hacer
			matriz(i,j) <- Aleatorio(3,9)
		FinPara
	FinPara
FinSubProceso

SubProceso mostrarMatriz(matriz,orden)
	definir i,j Como Entero
	para i <- 0 Hasta orden - 1 Hacer
		para j <- 0 Hasta orden - 1 Hacer
			Escribir Sin Saltar matriz(i,j)
			Escribir Sin Saltar " "
		FinPara
		Escribir ""
	FinPara
FinSubProceso

SubProceso recorrerDiagonalPrincipal(matriz,orden)
	Definir i Como Entero
	Escribir Sin Saltar "Diagonal principal: "
	para i <- 0 Hasta orden - 1 Hacer
		Escribir Sin Saltar " "
		Escribir Sin Saltar matriz(i,i)
	FinPara
	Escribir ""
FinSubProceso

SubProceso recorrerDiagonalSecundaria(matriz,orden)
	Definir i Como Entero
	Escribir Sin Saltar "Diagonal principal: "
	para i <- 0 Hasta orden - 1 Hacer
		Escribir Sin Saltar " "
		Escribir Sin Saltar matriz(i,orden - 1 - i)
	FinPara
	Escribir ""
FinSubProceso

SubProceso recorrerContorno(matriz,orden)
	definir i,j Como Entero
	para i <- 0 Hasta orden - 1 Hacer
		para j <- 0 Hasta orden - 1 Hacer
			si i = 0 o i = orden -1 o j = 0 o j = orden - 1 Entonces
				Escribir Sin Saltar matriz(i,j)
				Escribir Sin Saltar " "
			SiNo
				Escribir Sin Saltar "  "
			FinSi
		FinPara
		Escribir ""
	FinPara
FinSubProceso


	