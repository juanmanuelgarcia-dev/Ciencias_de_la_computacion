Algoritmo juego
	definir tablero,sumaTotal Como Entero
	dimension tablero(3,3)
	cargarValoresTablero(tablero)
	Repetir
		sumaDeTodosLosNumeros(tablero,sumaTotal)
		Escribir "Display: ",sumaTotal
	Mientras que sumaTotal < 31
		
FinAlgoritmo

SubProceso cargarValoresTablero(tablero Por Referencia)
	definir i,j,num Como Entero
	num <- 0
	para i <- 2 Hasta 0 Hacer
		para j <- 0 Hasta 2 Hacer
			num <- num + 1
			tablero(i,j) <- num
		FinPara
	FinPara
FinSubProceso

SubProceso sumaDeTodosLosNumeros(tablero Por Referencia,sumaTotal Por Referencia)
	definir i,j,eleccion,fila,columna,ultimoNumero Como Entero
	Escribir Sin Saltar "Numeros disponibles: "
	para i <- 0 Hasta 2 Hacer
		para j <- 0 Hasta 2 Hacer
			Escribir Sin Saltar tablero(i,j),","
		FinPara
	FinPara
	Repetir
		Escribir "Elija el numero que desee: "
		leer eleccion
	Mientras Que eleccion < 0 o eleccion > 9
	para i <- 0 Hasta 2 Hacer
		para j <- 0 Hasta 2 Hacer
			si tablero(i,j) = eleccion Entonces
				fila <- i
				columna <- j
			FinSi
		FinPara
	FinPara
	sumaTotal <- eleccion + sumaTotal
	ultimoNumero <- eleccion
FinSubProceso
	