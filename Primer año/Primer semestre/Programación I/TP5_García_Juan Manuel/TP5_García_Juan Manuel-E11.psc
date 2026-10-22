Algoritmo juego
	definir sumaPar, sumaImpar,turnos,cantidadDados,dado1,dado2,resto1,resto2,Impar1,Par1,Par2,Impar2,diferencia Como Entero
	definir gano Como Logico
	gano <- Falso
	turnos <- 1
	Par1 <- 0
	Par2 <- 0
	Impar1 <- 0
	Impar2 <- 0
	diferencia <- 0
	//Damos la bienvenida a nuestro juegos
	Mostrar ""
	Mostrar ""
	Mostrar "Bienvenido al juego de dados a continuación le explicaremos las reglas"
	Mostrar ""
	Mostrar ""
	Mostrar "REGLAS: "
	Mostrar ""
	Mostrar "1. Consta de 7 turnos"
	Mostrar ""
	Mostrar "2. No se puede ganar ni en el primero, ni en el segundo turno"
	Mostrar ""
	Mostrar "3. Se puede elegir si tirar uno o dos dados"
	Mostrar ""
	Mostrar "4. En el primer turno siempre se tirarán dos dados"
	Mostrar ""
	Mostrar "5. Solo se gana si la suma de los números pares de los dados es igual a la de los impares"
	Mostrar ""
	Mostrar "6. Perdés si no conseguis esto en los 7 turnos"
	Mostrar ""
	//Usamos un bucle mientras para que siempre se ejecute el primer turno igual
	mientras turnos = 1 Hacer
		mostrar "Es el primer turno, solo en este turno se tirarán dos dados"
		Mostrar ""
		dado1 = azar(6) + 1
		dado2 = azar(6) + 1
		mostrar "Se lanzaron dos dados, y el valor de el primero fue de ",dado1," el valor del segundo fue de ",dado2
		Mostrar ""
		turnos <- turnos + 1
		resto1 <- dado1 % 2
		resto2 <- dado2 % 2
		//Calculamos la paridad de el número en los dados
		si resto1 = 0 Entonces
			Par1 <- dado1
		SiNo
			Impar1 <- dado1
		FinSi
		si resto2 = 0 Entonces
			Par2 <- dado2
		SiNo
			Impar2 <- dado2
		FinSi
		//Sumamos los valores
		sumaPar <- Par1 + Par2
		sumaImpar <- Impar1 + Impar2
		Mostrar "La suma de los pares es de ",sumaPar
		Mostrar ""
		Mostrar "La suma de los impares es de ",sumaImpar
		Mostrar ""
		//Calculamos la diferencia
		Si sumaImpar > sumaPar Entonces
			diferencia <- sumaImpar - sumaPar
			Mostrar "Te faltan ",diferencia," para igualar a los impares"
			Mostrar ""
		SiNo
			si sumaImpar < sumaPar Entonces
				diferencia <- sumaPar - sumaImpar
				Mostrar "Te faltan ",diferencia," para igualar a los pares"
				Mostrar ""
			SiNo
				Mostrar "Son iguales pero no se puede ganar ni en el primero ni en el segundo turno"
				Mostrar ""
			FinSi
		FinSi
	FinMientras
	mientras turnos >= 2 y turnos <= 7 y gano = Falso Hacer
		Impar1 <- 0
		Par1 <- 0
		Impar2 <- 0
		Par2 <- 0
		Mostrar "Usted está en el turno ",turnos
		Mostrar ""
		Mostrar "Elija la cantidad de dados a tirar (Solo 1 o 2): "
		Mostrar ""
		leer cantidadDados
		//Si decide tirar un dado
		si cantidadDados = 1 Entonces
			dado1 = azar(6) + 1
			Mostrar "Usted decidió tirar un solo dado y su valor fue ",dado1
			Mostrar ""
		//Calculamos paridad en un dado
			resto1 <- dado1 % 2
			si resto1 = 0
				Par1 <- dado1
				sumaPar <- sumaPar + Par1
				Mostrar "La suma de los pares es: ",sumaPar
				Mostrar ""
				Mostrar "La suma de los impares es: ",sumaImpar
				Mostrar ""
			SiNo
				Impar1 <- dado1
				sumaImpar <- sumaImpar + Impar1
				Mostrar "La suma de los impares es: ",sumaImpar
				Mostrar ""
				Mostrar "La suma de los pares es: ",sumaPar
				Mostrar ""
			FinSi
			//Calculamos la diferencia un dado
			Si sumaImpar > sumaPar Entonces
				diferencia <- sumaImpar - sumaPar
				Mostrar "Te faltan ",diferencia," para igualar a los impares"
				Mostrar ""
			SiNo
				si sumaImpar < sumaPar Entonces
					diferencia <- sumaPar - sumaImpar
					Mostrar "Te faltan ",diferencia," para igualar a los pares"
					Mostrar ""
				SiNo
					si sumaImpar = sumaPar y turnos = 2 Entonces
						Mostrar "Son iguales pero no se puede ganar ni en el primero ni en el segundo turno"
						Mostrar ""
					SiNo
						si sumaImpar = sumaPar y turnos > 2 Entonces
							Mostrar ""
							Mostrar "¡FELICITACIONES! Usted ganó el juego"
							Mostrar ""
							gano <- Verdadero
						FinSi
					FinSi
				FinSi
			FinSi
		//Si elije dos dados
		SiNo
			si cantidadDados = 2 Entonces
				dado1 = azar(6) + 1
				dado2 = azar(6) + 1
				Mostrar "Usted decidió tirar dos dados y sus valores fueron de ",dado1," y de ",dado2
				Mostrar ""
				resto1 <- dado1 % 2
				resto2 <- dado2 % 2
				//Calculamos la paridad de el número en dos dados
				si resto1 = 0 Entonces
					Par1 <- dado1
				SiNo
					Impar1 <- dado1
				FinSi
				si resto2 = 0 Entonces
					Par2 <- dado2
				SiNo
					Impar2 <- dado2
				FinSi
				//Sumamos los valores de dos dados
				sumaPar <- Par1 + Par2 + sumaPar
				sumaImpar <- Impar1 + Impar2 + sumaImpar
				Mostrar "La suma de los pares es de ",sumaPar
				Mostrar ""
				Mostrar "La suma de los impares es de ",sumaImpar
				Mostrar ""
				//Calculamos la diferencia de dos dados
				Si sumaImpar > sumaPar Entonces
					diferencia <- sumaImpar - sumaPar
					Mostrar "Te faltan ",diferencia," para igualar a los impares"
					Mostrar ""
				SiNo
					si sumaImpar < sumaPar Entonces
						diferencia <- sumaPar - sumaImpar
						Mostrar "Te faltan ",diferencia," para igualar a los pares"
						Mostrar ""
					SiNo
						si sumaImpar = sumaPar y turnos = 2 Entonces
						Mostrar "Son iguales pero no se puede ganar ni en el primero ni en el segundo turno"
						Mostrar ""
						SiNo
							si sumaImpar = sumaPar y turnos > 2 Entonces
								Mostrar ""
								Mostrar "¡FELICITACIONES! Usted ganó el juego"
								Mostrar ""
								gano <- Verdadero
							FinSi
						FinSi
					FinSi
				FinSi
			FinSi
		FinSi
		turnos <- turnos + 1
	FinMientras
	si sumaImpar <> sumaPar Entonces
		Mostrar ""
		Mostrar "Se terminaron las rondas.¡Lo siento! usted perdió el juego"
		Mostrar ""
	FinSi
FinAlgoritmo
