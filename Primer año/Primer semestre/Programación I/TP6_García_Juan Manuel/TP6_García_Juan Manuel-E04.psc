Algoritmo MENU
	Definir opciones, primerNumero,segundoNumero Como Entero
	Definir respuesta Como Caracter
	mostrar "MENÚ"
	Mostrar "1. Ingrese los operandos"
	Mostrar "2. Suma"
	Mostrar "3. Resta"
	Mostrar "4. Multiplicación"
	Mostrar "5. División"
	Mostrar "6. Salir"
	Repetir
		Escribir "Elija una opción: "
		leer opciones
		si opciones = 1 Entonces
			Escribir "Ingrese el primer Número: "
			leer primerNumero
			escribir "Ingrese el segundo Número: "
			leer segundoNumero
			Mientras primerNumero >= 0 y segundoNumero >= 0 Hacer
				Escribir "Elija una opción: "
				leer opciones
				si opciones = 2 Entonces
					Mostrar "La suma entre ambos es: ",sumaValores(primerNumero, segundoNumero)
				SiNo
					si opciones = 3 Entonces
						Mostrar "La resta entre ambos es: ",restaValores(primerNumero,segundoNumero)
					SiNo
						si opciones = 4 Entonces
							Mostrar "El producto entre ambos es: ",productoValores(primerNumero,segundoNumero)
						sino
							si opciones = 5 Entonces
								Mostrar "El cociente entre ambos es: ",divisionValores(primerNumero,segundoNumero)
							FinSi
						FinSi
					FinSi
				FinSi
			FinMientras
		FinSi
		Mientras opciones = 6 Hacer
			Escribir "Elija S/N para continuar: "
			leer respuesta
			si respuesta = "S" o respuesta = "s" Entonces
				Escribir "Elija opcion(siempre 1 primero para inicializar) o 6 (para finalizar): "
				leer opciones
			SiNo
				si respuesta = "N" o respuesta = "n" Entonces
					Mostrar "Se finaliza el programa"
					opciones <- 0
				sino
					Mostrar "Ingrese solo S/N"
				FinSi
			FinSi
		FinMientras
	Mientras Que opciones = 1
FinAlgoritmo

//Función de suma
Funcion suma <- sumaValores(primerNumero, segundoNumero)
	Definir suma Como Entero
	suma <- primerNumero + segundoNumero
FinFuncion

//Funcion de resta
Funcion resta <- restaValores(primerNumero,segundoNumero)
	Definir resta Como real
	resta <- primerNumero - segundoNumero
FinFuncion

//Funcion del producto
Funcion producto <- productoValores(primerNumero,segundoNumero)
	Definir producto Como Entero
	producto <- primerNumero * segundoNumero
FinFuncion

//Funcion de la division
funcion division <- divisionValores(primerNumero,segundoNumero)
	Definir division como real
	division <- primerNumero / segundoNumero
FinFuncion
	