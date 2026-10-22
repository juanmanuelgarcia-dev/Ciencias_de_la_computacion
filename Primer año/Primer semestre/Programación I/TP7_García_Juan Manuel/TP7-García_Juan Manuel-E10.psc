Algoritmo matrices
	Definir matriz,ordenDeLaMatriz,opciones,fila,columna Como Entero
	definir existeMatriz Como Logico
	existeMatriz <- Falso
	Repetir
		Escribir "1-Ingrese un orden a la matriz: "
		Escribir "2-Mostrar la matriz por pantalla: "
		Escribir "3- Mostrar el contenido de una ubicación ingresada por el usuario: "
		Escribir "4-Mostrar los valores de la diagonal principal: "
		Escribir "5-Mostrar los valores de la diagonal secundaria: "
		Escribir "6-Mostrar el contorno de la matriz: "
		Escribir "7-Salir: "
		
		Escribir "Ingrese la opcion que desea(1 para iniciar): "
		leer opciones
		
		Segun opciones Hacer
			1:
				Escribir "Ingrese el orden de la matriz: "
				leer ordenDeLaMatriz
				Dimension matriz(ordenDeLaMatriz,ordenDeLaMatriz)
				si ordenDeLaMatriz % 2 = 0 Entonces
					ordenTamaño(ordenDeLaMatriz)
				FinSi
				valoresMatriz(ordenDeLaMatriz,matriz)
				existeMatriz <- Verdadero
			2:
				si existeMatriz = falso Entonces
					Repetir
						Escribir "Ingrese la opcion 1: "
						leer opciones
					Mientras Que opciones <> 1
				SiNo
					mostrarMatriz(ordenDeLaMatriz,matriz)
				FinSi
				
			3:
				si existeMatriz = falso Entonces
					Repetir
						Escribir "Ingrese la opcion 1: "
						leer opciones
					Mientras Que opciones <> 1
				FinSi
				Escribir "Ingrese la fila que desea : "
				leer fila
				Escribir "Ingrese la columna que desea: "
				leer columna
				mostrar "La ubicacion de la matriz es: ",ubicacionM(fila,columna,matriz)
			4:
				si existeMatriz = falso Entonces
					Repetir
						Escribir "Ingrese la opcion 1: "
						leer opciones
					Mientras Que opciones <> 1
				FinSi
				cargardiagonal(ordenDeLaMatriz,matriz)
			5:
				si existeMatriz = falso Entonces
					Repetir
						Escribir "Ingrese la opcion 1: "
						leer opciones
					Mientras Que opciones <> 1
				FinSi
				cargarContraDiagnoal(ordenDeLaMatriz,matriz)
			6:
				si existeMatriz = falso Entonces
					Repetir
						Escribir "Ingrese la opcion 1: "
						leer opciones
					Mientras Que opciones <> 1
				FinSi
				matrizVacia(ordenDeLaMatriz,matriz)
			7:
				Mostrar "Gracias por su atenciòn"
				opciones = 8
		Fin Segun
	Mientras Que opciones >= 1 y opciones <= 7
	
	
	
FinAlgoritmo

SubProceso ordenTamaño(ordenDeLaMatriz Por Referencia)
	Repetir
		Escribir "Ingrese el orden de la matriz(IMPAR): "
		leer ordenDeLaMatriz
	Mientras que ordenDeLaMatriz % 2 = 0
	Dimension matriz(ordenDeLaMatriz,ordenDeLaMatriz)
FinSubProceso

SubProceso valoresMatriz(ordenDeLaMatriz,matriz Por Referencia)
	definir i,j Como Entero
	Para i <- 0 Hasta ordenDeLaMatriz - 1 Hacer
		para j <- 0 Hasta ordenDeLaMatriz - 1 Hacer
			matriz(i,j) <- Aleatorio(3,9)
		FinPara
	FinPara
FinSubProceso

SubProceso mostrarMatriz(ordenDeLaMatriz,matriz)
	Definir i,j Como Entero
	Para i = 0 Hasta ordenDeLaMatriz - 1 Hacer
		para j = 0 Hasta ordenDeLaMatriz -1 Hacer
			Escribir Sin Saltar "[ "
			Escribir Sin Saltar matriz(i,j),","
			Escribir Sin Saltar " ]"
		FinPara
		Escribir ""
	FinPara
FinSubProceso

Funcion ubicacionMatriz <- ubicacionM(fila,columna,matriz)
	Definir ubicacionMatriz Como Entero
	Repetir
		Escribir "Ingrese valores vàlidos: "
		Escribir "Ingrese la fila que desea : "
		leer fila
		Escribir "Ingrese la columna que desea: "
		leer columna
	Mientras Que fila < 0 o columna < 0 o columna > ordenDeLaMatriz o fila > ordenDeLaMatriz
	ubicacionMatriz <- matriz(fila,columna)
FinFuncion

SubProceso cargardiagonal(ordenDeLaMatriz,matriz)
	definir i,j Como Entero
	para i <- 0 Hasta ordenDeLaMatriz - 1 Hacer
		para j <- 0 Hasta ordenDeLaMatriz - 1 Hacer
			si i = j Entonces
				Escribir Sin Saltar matriz(i,j)," "
			FinSi
		FinPara
	FinPara
FinSubProceso

SubProceso cargarContraDiagnoal(ordenDeLaMatriz,matriz)
	definir i,j Como Entero
	para i <- 0 Hasta ordenDeLaMatriz - 1 Hacer
		para j <- 0 Hasta ordenDeLaMatriz - 1 Hacer
			si j = ordenDeLaMatriz - i - 1 Entonces
				Escribir Sin Saltar matriz(i,j)," "
			FinSi
		FinPara
	FinPara
FinSubProceso

SubProceso matrizVacia(ordenDeLaMatriz,matriz)
	definir i,j Como Entero
	para i <- 0 Hasta ordenDeLaMatriz - 1 Hacer
		para j <- 0 Hasta ordenDeLaMatriz -1 Hacer
			si i = 0 o i = ordenDeLaMatriz - 1 o j = 0 o j = ordenDeLaMatriz - 1 Entonces
				Escribir Sin Saltar "[ "
				Escribir Sin Saltar matriz(i,j),","
				Escribir Sin Saltar " ]"
			SiNo
				Escribir Sin Saltar "      "
			FinSi
		FinPara
		Escribir ""
	FinPara
FinSubProceso





