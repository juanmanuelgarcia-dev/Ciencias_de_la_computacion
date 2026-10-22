Algoritmo recuperatorio
	definir tabla,orden,maxTurnos,turnos,seleccion,fila,columna Como Entero
	definir sumaPromedioFila,sumaPormedioColumna,sumaPromedioTotal Como Real
	turnos <- 0
	sumaPromedioFila <- 0
	sumaPormedioColumna <- 0
	Repetir
		Escribir "Ingrese el orden de la tabla: "
		leer orden
	Mientras Que orden < 4 o orden > 8
	
	Repetir
		Escribir "Ingrese la cantidad maxima de turnos: "
		leer maxTurnos
	Mientras Que maxTurnos < 1
	Dimension tabla(orden,orden)
	
	cargarValoresMatriz(tabla,orden)
	MostrarMatriz(tabla,orden)
	
	Repetir
		seleccion = seleccionarOpcionMenu
		segun seleccion Hacer
			1:
				Repetir
					Escribir "Ingrese la fila a la que le desea sacar promedio: "
					leer fila
				Mientras Que fila < 1 o fila > orden
				Mostrar "El promedio de la fila es: ",CalcularPromedioFila(tabla,orden,fila-1)
				sumaPromedioFila <- sumaPromedioFila + CalcularPromedioFila(tabla,orden,fila-1)
			2:
				Repetir
					Escribir "Ingrese la columna  para calcular promedio: "
					leer columna
				Mientras Que columna < 1 o columna > orden
				Mostrar "El promedio de la fila es: ",CalcularPromedioColumna(tabla,orden,columna -1)
				sumaPormedioColumna <- sumaPormedioColumna + CalcularPromedioColumna(tabla,orden,columna -1)
			3:
				Repetir
					Escribir "Ingrese la fila: "
					leer fila
				Mientras Que (fila < 1 o fila > orden)
				
				Repetir
					Escribir "Ingrese la columna: "
					leer columna
				Mientras Que (columna < 1 o columna > orden)
				desplazarFilasColumnas(orden,tabla,fila-1,columna-1)
		FinSegun
		turnos <- turnos + 1
	Mientras Que turnos < maxTurnos o seleccion <> 4
	sumaPromedioTotal <- sumaPormedioColumna + sumaPromedioFila
	Mostrar "La suma promedio total es ",sumaPromedioTotal
FinAlgoritmo

SubProceso cargarValoresMatriz(tabla,orden)
	Definir i,j Como Entero
	para i <- 0 Hasta orden - 1 Hacer
		para j <- 0 Hasta orden - 1 Hacer
			tabla(i,j) <- Aleatorio(1,9)
		FinPara
	FinPara
FinSubProceso

SubProceso MostrarMatriz(tabla,orden)
	definir i,j Como Entero
	para i <- 0 Hasta orden - 1 Hacer
		para j <- 0 Hasta orden - 1 Hacer
			Escribir Sin Saltar tabla(i,j)
			Escribir Sin Saltar " "
		FinPara
		Escribir ""
	FinPara
FinSubProceso

Funcion promedioFila <- CalcularPromedioFila(tabla,orden,fila)
	Definir j,sumaTotal Como Entero
	definir promedioFila como real
	sumaTotal <- 0
	para j <- 0 Hasta orden - 1 Hacer
		sumaTotal <- sumaTotal + tabla(fila,j)	
	FinPara
	promedioFila <- sumaTotal / orden
FinFuncion

funcion promedioColumna <- CalcularPromedioColumna(tabla,orden,columna)
	Definir i,sumaTotal Como Entero
	definir promedioColumna Como Real
	sumaTotal <- 0
	para i <- 0 Hasta orden -1 Hacer
		sumaTotal <- sumaTotal + tabla(i,columna)
	FinPara
	promedioColumna <- sumaTotal / orden
FinFuncion

funcion seleccion = seleccionarOpcionMenu
	Definir seleccion Como Entero
	Escribir "1. Calcular promedio fila"
	Escribir "2.Calcular promedio columna"
	Escribir "3. reemplzar fila con columna"
	Escribir "4. Salir"
	Repetir
		Escribir "Ingrese la seleccion: "
		leer seleccion
	Mientras Que seleccion < 1 o seleccion > 4
FinFuncion

SubProceso desplazarFilasColumnas(orden,tabla,fila,columna)
	definir i,j,auxiliar Como Entero
	Dimension auxiliar(fila)
	para i <- 0 Hasta orden - 1 Hacer
		auxiliar
	FinPara
FinSubProceso
	