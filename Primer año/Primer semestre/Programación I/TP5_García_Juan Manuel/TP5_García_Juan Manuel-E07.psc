Algoritmo programa
	definir numeroIngresado,divisores,opciones,i,j,k,multiplica,primerNum,esPrimo Como Entero
	definir factorial Como Real
	definir numeroPrimo Como Logico
	definir eleccion como caracter
	multiplica <- 0
	factorial <- 0
	Escribir "1. Ingresar: "
	Escribir "2. Factorial: "
	Escribir "3. Divisores: "
	Escribir "4. Es primo: "
	Escribir "5. Salir: "
		Repetir
		Escribir "Elija opción(siempre 1 primero para inicializar): "
		leer opciones
			si opciones = 1 Entonces
				Escribir "Ingrese un número entero del 1 al 100: "
				leer numeroIngresado
				Mientras numeroIngresado >= 1 y numeroIngresado <= 100 Hacer
					Escribir "Elija opción: "
					leer opciones
					si opciones = 2 Entonces
						factorial <- 1
						para i <- 1 hasta numeroIngresado Con Paso 1 Hacer
							factorial <- factorial * i
							Mostrar "El factorial de ",i," es: ",factorial
						FinPara
					SiNo
						si opciones = 3 Entonces
							para j <- 1 Hasta numeroIngresado Con Paso 1 Hacer
								divisores <- numeroIngresado % j
								si divisores = 0 Entonces
									Mostrar j," es divisor de ",numeroIngresado
								FinSi
							FinPara
						SiNo
							si opciones = 4 Entonces
								numeroPrimo <- Verdadero
								para k <- 2 Hasta numeroIngresado - 1 Con Paso 1 Hacer
									si numeroIngresado % k = 0 Entonces
										numeroPrimo <- Falso
									FinSi
								FinPara
								si numeroPrimo = Verdadero Entonces
									Mostrar "El número ",numeroIngresado," es primo"
								sino
									Mostrar "El número ",numeroIngresado," no es primo"
								FinSi
							FinSi
						FinSi
					FinSi
				FinMientras
			FinSi
			Mientras opciones = 5 Hacer
				Escribir "Elija S/N para continuar: "
				leer eleccion
				si eleccion = "S" o eleccion = "s" Entonces
					Escribir "Elija opción(siempre 1 primero para inicializar) o 5 (para finalizar=: "
					leer opciones
				SiNo
					si eleccion = "N" o eleccion = "n" Entonces
						Mostrar "Se finaliza el programa"
						opciones <- 0
					sino
						Mostrar "Ingrese solo S/N"
					FinSi
				FinSi
			FinMientras
		Mientras que opciones = 1
FinAlgoritmo
