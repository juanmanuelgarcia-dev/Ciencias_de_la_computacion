Algoritmo fracciones
	
	definir numerador, denominador,opciones,denominador2,numerador2 Como Entero
	Definir numeradorDividido,denominadorDividido como real
	Escribir "Ingrese el numerador de la fraccion: "
	leer numerador
	Escribir "Ingrese el denominador de la fraccion: "
	leer denominador
	
	//Mostramos cual es la fracción
	si denominador = 1 Entonces
		Mostrar "El número es ",numerador
	SiNo
		Mostrar "La fraccion es ",numerador," / ",denominador
	FinSi
	
	//Calculamos el MCD de la fracción principal
	Mostrar "El MCD entre ",numerador," y ",denominador," es ",calculoMCD(numerador,denominador)
	
	//Simplificamos la expresión
	numeradorDividido <- numerador / calculoMCD(numerador,denominador)
	denominadorDividido <- denominador / calculoMCD(numerador,denominador)
	si denominadorDividido = 1 Entonces
		Mostrar "La simplificación de la fracción es ",numeradorDividido
	SiNo
		Mostrar "La simplificación de la fracción es ",numeradorDividido," / ",denominadorDividido
	FinSi
	
	//Pedimos otra fracción y una operación a realizar
	Escribir "Ingrese el numerador de otra fracción: "
	leer numerador2
	Escribir "Ingrese el denominador de otra fracción: "
	leer denominador2
	Escribir "Ingrese una operación a realizar "
	Mostrar "1. Suma"
	Mostrar "2. resta"
	Mostrar "3. Producto"
	Mostrar "4. División"
	Mostrar "5. salir"
	leer opciones
	
	//Si elije suma
	si opciones = 1 Entonces
		numerador <- (numerador * denominador2) + (numerador2 * denominador)
		denominador <- denominador * denominador2
		numeradorDividido <- numerador / calculoMCD(numerador,denominador)
		denominadorDividido <- denominador / calculoMCD(numerador,denominador)
		si denominador = 1 Entonces
			Mostrar "El número es ",numeradorDividido
		SiNo
			Mostrar "La fraccion es ",numeradorDividido," / ",denominadorDividido
		FinSi
	SiNo
		//Si elije resta
		si opciones = 2 Entonces
			numerador <- (numerador * denominador2) - (numerador2 * denominador)
			denominador <- denominador * denominador2
			numeradorDividido <- numerador / calculoMCD(numerador,denominador)
			denominadorDividido <- denominador / calculoMCD(numerador,denominador)
			si denominador = 1 Entonces
				Mostrar "El número es ",numeradorDividido
			SiNo
				Mostrar "La fraccion es ",numeradorDividido," / ",denominadorDividido
			FinSi
		SiNo
			
			//Si elije producto
			si opciones = 3 Entonces
				numerador <- (numerador * numerador2)
				denominador <- (denominador * denominador2)
				numeradorDividido <- numerador / calculoMCD(numerador,denominador)
				denominadorDividido <- denominador / calculoMCD(numerador,denominador)
				si denominador = 1 Entonces
					Mostrar "El número es ",numeradorDividido
				SiNo
					Mostrar "La fraccion es ",numeradorDividido," / ",denominadorDividido
				FinSi
			SiNo
				
				//Si elije división
				si opciones = 4 Entonces
					numerador <- (numerador * denominador2)
					denominador <- (denominador * numerador2)
					numeradorDividido <- numerador / calculoMCD(numerador,denominador)
					denominadorDividido <- denominador / calculoMCD(numerador,denominador)
					si denominador = 1 Entonces
						Mostrar "El número es ",numeradorDividido
					SiNo
						Mostrar "La fraccion es ",numeradorDividido," / ",denominadorDividido
					FinSi
				SiNo
					//Si elije salir
					si opciones = 5 Entonces
						Mostrar "Gracias por calcular"
					SiNo
						//Si elije otra opción
						Mientras opciones <> 1 o opciones <> 2 o opciones <> 3 o opciones <> 4 o opciones <> 5 Hacer
							Escribir "Ingrese una operación válida a realizar "
							leer opciones
						FinMientras
					FinSi
				FinSi
			FinSi
		FinSi
	FinSi
FinAlgoritmo

//Funcion para calcular MCD
Funcion MCD <- calculoMCD(dividendo,divisor)
	Definir MCD, i, resto Como Entero
	resto = dividendo % divisor
	Repetir
		resto <- dividendo % divisor
		dividendo <- divisor
		mcd <- divisor
		divisor <- resto
	Mientras Que resto <> 0
FinFuncion

