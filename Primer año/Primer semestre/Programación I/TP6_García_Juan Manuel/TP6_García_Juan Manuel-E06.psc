Algoritmo operandos
	definir primerNumero,opciones Como Entero
	Mostrar "1. ¿Es Capicua?"
	mostrar "2. ¿Es primo?"
	Mostrar "3.¿Todos sus dígitos son impares?"
	Mostrar "Ingrese el número: "
	leer primerNumero
	Mostrar "Elija la opción"
	Leer opciones
	si opciones = 1 Entonces
		si capicuas(primerNumero) = 1 Entonces
			Mostrar "El número es capicúa"
		SiNo
			Mostrar "El número no es capicúa"
		FinSi
	SiNo
		si opciones = 2 Entonces
			si esPrimo(primerNumero) = Verdadero Entonces
				Mostrar "El número es primo"
			SiNo
				Mostrar "El número no es primo"
			FinSi
		SiNo
			si opciones = 3 Entonces
				si esImpar(primerNumero) = Verdadero Entonces
					Mostrar "Todos los digitos son impares"
				SiNo
					Mostrar "Tiene al menos UN digito par"
				FinSi
			FinSi
		FinSi
	FinSi
FinAlgoritmo

//Funcion para capicua
Funcion capicua <- capicuas(primerNumero)
	Definir capicua,digito,invertido Como Entero
	invertido <- 0
	capicua <- primerNumero
	Mientras capicua > 0 Hacer
		digito <- capicua % 10
		invertido <- invertido * 10 + digito
		capicua <- trunc(capicua / 10)
	FinMientras
	si primerNumero = invertido Entonces
		capicua <- 1
	SiNo
		capicua <- 2
	FinSi
FinFuncion

//Funcion para numero primo
Funcion primo <- esPrimo(primerNumero)
	Definir i Como Entero
	Definir primo Como Logico
	primo <- Verdadero
	para i <- 2 hasta primerNumero - 1 Hacer
		si primerNumero % i = 0
			primo <- Falso
		FinSi
	FinPara
FinFuncion

//Funcion para impares
funcion impar <- esImpar(primerNumero)
	definir digito,digitoTotal,vueltas,impares como Entero
	definir impar como logico
	digitoTotal <- 0
	vueltas <- 0
	impar <- Falso
	impares <- primerNumero
	Mientras impares > 0 Hacer
		digito <- impares % 10
		impares <- trunc(impares / 10)
		vueltas <- vueltas + 1
		si digito % 2 <> 0 Entonces
			digitoTotal <- digitoTotal + 1
		FinSi
	FinMientras
	si digitoTotal = vueltas Entonces
		impar <- Verdadero
	FinSi
FinFuncion
	