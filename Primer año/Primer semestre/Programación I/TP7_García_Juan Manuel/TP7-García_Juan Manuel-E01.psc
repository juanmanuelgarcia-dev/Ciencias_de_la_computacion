Algoritmo ejercicio1
	
	//Pregunto tamaño del vector
	definir tamaño,i,valores Como Entero
	Escribir "Ingrese el temaño del vector: "
	leer tamaño
	
	//Si tamaño es menor a uno invoco la función
	si tamaño < 1 Entonces
		tamaño = verificarDimension(tamaño)
	FinSi
	
	//Aclaro la dimensión
	dimension valores(tamaño)
	
	//Invoco al subproceso para cargar valores
	cargarValores(tamaño,valores)
	
	//Invoco la función número Menor
	Mostrar "El número menor es: ",NumeroMenor(tamaño, valores)
	
	//Invoco el subproceso número Mayor y su posición
	numeroMayor(tamaño,valores)
	
	//Invoco la función suma de todos los valores
	Mostrar "La suma total es: ",sumaTodosLosValores(tamaño,valores)
	
FinAlgoritmo

//Función si el tamaño es menor a uno
funcion nuevoTamaño <- verificarDimension(tamaño)
	Definir nuevoTamaño Como Entero
	Repetir
		Escribir "Ingrese el temaño del vector, mayor a 0: "
		leer tamaño
	Mientras Que tamaño < 1
	
	nuevoTamaño <- tamaño
FinFuncion

//Subproceso para cargar los valores del vector
SubProceso cargarValores(tamaño,valores Por Referencia)
	Definir i Como Entero
	para i <- 0 Hasta tamaño - 1 Hacer
		Escribir "Ingrese el valor para cada dimension: "
		leer valores(i)
	FinPara
FinSubProceso

//Funcion numero menor
Funcion numMinimo <- NumeroMenor(tamaño, valores)
	Definir numMinimo,vuelta,i Como Entero
	vuelta <- 0
	Para i <- 0 Hasta tamaño - 1 Hacer
		vuelta <- vuelta + 1
		si vuelta = 1 Entonces
			numMinimo <- valores(i)
		FinSi
		si numMinimo - valores(i) > 0 Entonces
			numMinimo <- valores(i)
		FinSi
	FinPara
FinFuncion

//Subproceso numero mayor y su posición
SubProceso numeroMayor(tamaño,valores)
	definir numMayor,i,posicionNumMayor,posicion Como Entero
	numMayor <- 0
	posicion <- 0
	para i <- 0 Hasta tamaño - 1 Hacer
		posicion <- posicion + 1
		si valores(i) > numMayor Entonces
			numMayor <- valores(i)
			posicionNumMayor <- posicion
		FinSi
	FinPara
	Mostrar "El numero mayor es: ",numMayor
	Mostrar "Su posición es: ",posicionNumMayor
FinsubProceso

//Función suma total de todos los valores
Funcion sumaTotal <- sumaTodosLosValores(tamaño,valores)
	Definir sumaTotal,i Como Entero
	sumaTotal <- 0
	para i <- 0 hasta tamaño - 1 Hacer
		sumaTotal <- sumaTotal + valores(i)
	FinPara
FinFuncion


	