Algoritmo restasSucesivas
	definir primerNumero,segundoNumero,cociente,resto Como Entero
	Escribir "Ingrese el primer número: "
	leer primerNumero
	Escribir "Ingrese el segundo número: "
	leer segundoNumero
	restaSucesiva(primerNumero, segundoNumero, cociente, resto)
	Mostrar "El cociente queda ",cociente
	Mostrar "El resto queda ",resto
FinAlgoritmo


//Subproceso division por restas sucesivas
SubProceso  restaSucesiva(dividendo, divisor, cociente por referencia, resto Por Referencia)
	cociente <- 0
	si dividendo >= divisor Entonces
		Mientras dividendo >= divisor Hacer
			dividendo <- dividendo - divisor
			cociente <- cociente + 1
		FinMientras
		resto <- dividendo
	SiNo
		Mientras  segundoNumero > primerNumero Hacer
			Mostrar "Ingrese un primer número mayor al segundo"
			Escribir "Ingrese el primer número: "
			leer primerNumero
			Escribir "Ingrese el segundo número: "
			leer segundoNumero
		FinMientras
	FinSi
finSubProceso 
	