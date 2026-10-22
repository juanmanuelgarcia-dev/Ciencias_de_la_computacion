Algoritmo estacionamiento
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
	
	Dimension valores(cantidadFilas,cantidadColumnas)
	
	cargarValores(cantidadColumnas,cantidadFilas,valores)
	
	mostrarEstacionamiento(cantidadColumnas,cantidadFilas,valores)
	
	plazasOcupadas(cantidadColumnas,cantidadFilas,valores)
	
	pisosOcupados(cantidadColumnas,cantidadFilas,valores)
	
FinAlgoritmo

Funcion validarDimension <- tamañoMatriz(cantidadColumnas,cantidadFilas)
	Repetir
		Escribir "Ingrese la cantidad de filas: "
		leer cantidadFilas
		Escribir "Ingrese la cantidad de columnas: "
		leer cantidadColumnas
	Mientras Que cantidadColumnas < 1 o cantidadFilas < 1
FinFuncion

SubProceso cargarValores(cantidadColumnas,cantidadFilas,valores Por Referencia)
	definir i,j Como Entero
	para i <- 0 Hasta cantidadFilas - 1 Hacer
		para j <- 0 Hasta cantidadColumnas -1 Hacer
			valores(i,j) <- Aleatorio(0,1)
		FinPara
	FinPara
FinSubProceso

SubProceso mostrarEstacionamiento(cantidadColumnas,cantidadFilas,valores)
	definir i,j Como Entero
	para i <- 0 Hasta cantidadFilas - 1 Hacer
		Escribir Sin Saltar "[ "
		para j <- 0 Hasta cantidadColumnas -1 Hacer
			Escribir Sin Saltar valores(i,j),", "
		FinPara
		Escribir Sin Saltar " ]"
		Escribir ""
	FinPara
FinSubProceso

SubProceso plazasOcupadas(cantidadColumnas,cantidadFilas,valores)
	definir i,j,contadorOcupado Como Entero
	contadorOcupado <- 0
	para i <- 0 Hasta cantidadFilas - 1 Hacer
		para j <- 0 Hasta cantidadColumnas -1 Hacer
			si valores(i,j) = 1 Entonces
				contadorOcupado <- contadorOcupado + 1
			FinSi
		FinPara
	FinPara
	Mostrar "Hay ",contadorOcupado," lugares ocupados"
FinSubProceso

SubProceso pisosOcupados(cantidadColumnas,cantidadFilas,valores)
	definir i,j,contadorOcupados,pisoMasOcupado,lugarPiso Como Entero
	contadorOcupados <- 0
	pisoMasOcupado <- 0
	lugarPiso <- 0
	para i <- 0 Hasta cantidadFilas - 1 Hacer
		para j <- 0 Hasta cantidadColumnas -1 Hacer
			si valores(i,j) = 1 Entonces
				contadorOcupados <- contadorOcupados + 1
			FinSi
		FinPara
		si pisoMasOcupado <= contadorOcupados Entonces
			pisoMasOcupado <- contadorOcupados
			lugarPiso <- i
		FinSi
		si contadorOcupados = 0 Entonces
			Mostrar "Existe un piso no ocupado"
		FinSi
	FinPara
	Mostrar "El piso mas ocupado es ",lugarPiso
FinSubProceso

