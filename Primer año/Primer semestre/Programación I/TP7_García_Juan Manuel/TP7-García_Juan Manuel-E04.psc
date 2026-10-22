Algoritmo vectores
	definir tamaño,i,valores Como Entero
	Escribir "Igrese el tamaño del vector: "
	leer tamaño
	
	si tamaño < 1 Entonces
		tamaño = verificarDimension(tamaño)
	FinSi
	dimension valores(tamaño)
	
	cargarValores(tamaño,valores)
	
FinAlgoritmo

funcion nuevoTamaño <- verificarDimension(tamaño)
	Definir nuevoTamaño Como Entero
	Repetir
		Escribir "Igrese el tamaño del vector, mayor o igual a 1: "
		leer tamaño
	Mientras Que tamaño < 1
	nuevoTamaño = tamaño
FinFuncion

SubProceso cargarValores(tamaño,valores Por Referencia)
	Definir i,vuelta Como Entero
	vuelta <- 0
	para i <- 0 Hasta tamaño - 1 Hacer
		vuelta <- vuelta + 1
		Escribir "Ingrese el valor para cada valor número ",vuelta,": "
		leer valores(i)
	FinPara
	
	Escribir ""
	Escribir "VECTOR EN ORDEN"
	Escribir ""
	Escribir "[ " Sin Saltar
	Escribir Sin Saltar valores(0)
	si tamaño > 1 Entonces
		para i <- 1 Hasta tamaño - 1
			Escribir Sin Saltar ",",valores(i)
		FinPara
		Escribir Sin Saltar "]"
	SiNo
		Escribir Sin Saltar " ]"
	FinSi
	Escribir ""
	Escribir ""
	Escribir "VECTOR EN EN ORDEN CAMBIADO"
	Escribir ""
	Escribir "[ " Sin Saltar
	si tamaño > 1 Entonces
		para i <- 1 Hasta tamaño - 1
			Escribir Sin Saltar valores(i),","
		FinPara
		Escribir Sin Saltar valores(0)
		Escribir Sin Saltar "]"
	SiNo
		Escribir Sin Saltar valores(0)
		Escribir Sin Saltar " ]"
		Escribir ""
	FinSi
FinSubProceso

	