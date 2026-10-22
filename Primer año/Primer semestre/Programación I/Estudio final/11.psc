Algoritmo blackjack
	definir matriz,cantJugadores,valores,estado,vuelta,sumaTotal,jugadoresAfuera,juagadasHechas Como Entero
	definir numMayor,ganadores Como Entero
	vuelta <- 1
	jugadoresAfuera <- 0
	Repetir
		Escribir "Ingrese la cantidad de jugadores: "
		leer cantJugadores
	Mientras Que cantJugadores < 2 o cantJugadores > 5
	Dimension matriz(cantJugadores,21)
	Dimension estado(cantJugadores)
	Dimension sumaTotal(cantJugadores)
	Dimension juagadasHechas(cantJugadores)
	iniciarMatriz(matriz,cantJugadores)
	asignarNumerosAleatorios(matriz,cantJugadores,estado,sumaTotal,juagadasHechas)
	MostrarValores(matriz,cantJugadores,estado,sumaTotal)
	
	Repetir
		asignarNumeros(matriz,cantJugadores,estado,vuelta,jugadoresAfuera,sumaTotal,juagadasHechas)
		MostrarMatriz(matriz,cantJugadores,estado,sumaTotal)
		vuelta <- vuelta + 1
	Mientras Que jugadoresAfuera < cantJugadores
	
	para i <- 0 Hasta cantJugadores - 1 Hacer
		si estado(i) <> 3 Entonces
			numMayor <- sumaTotal(i)
			si sumaTotal(i) < numMayor Entonces
				numMayor <- sumaTotal(i)
			FinSi
		FinSi
	FinPara
	
FinAlgoritmo

SubProceso iniciarMatriz(matriz,cantJugadores)
	definir i,j Como Entero
	para i <- 0 Hasta cantJugadores - 1 Hacer
		para j <- 0 Hasta 20 Hacer
			matriz(i,j) <- 0
		FinPara
	FinPara
FinSubProceso

SubProceso asignarNumerosAleatorios(matriz,cantJugadores,estado,sumaTotal,juagadasHechas)
	definir i,j Como Entero
	para i <- 0 Hasta cantJugadores - 1 Hacer
		para j <- 0 Hasta 0 Hacer
			matriz(i,j) <- Aleatorio(1,12)
			Escribir "Jugador N° ",i + 1," su número es: ", matriz(i,j)
			sumaTotal(i) <- matriz(i,j)
			juagadasHechas(i) <- 1
			Repetir
				Escribir "Desea 1.Seguir jugando o 2. Plantarse: "
				leer estado(i)
			Mientras Que estado(i) < 1 o estado(i) > 2
		FinPara
	FinPara
FinSubProceso

SubProceso MostrarValores(matriz,cantJugadores,estado,sumaTotal)
	definir i,j Como Entero
	para i <- 0 Hasta cantJugadores - 1 Hacer
			Escribir Sin Saltar "Jugador N° ",i+1
			Escribir Sin Saltar " "
			Escribir Sin Saltar matriz(i,0)
		Escribir Sin Saltar " = "
		Escribir Sin Saltar sumaTotal(i)
		Escribir Sin Saltar " - "
		Segun estado(i) Hacer
			1:
				Escribir Sin Saltar "Sigue en juego"
			2: 
				Escribir Sin Saltar "Se plantó"
		FinSegun
		Escribir ""
FinPara
FinSubProceso

SubProceso asignarNumeros(matriz,cantJugadores,estado,vuelta,jugadoresAfuera Por Referencia,sumaTotal,juagadasHechas)
	definir i Como Entero
	para i <- 0 Hasta cantJugadores-1 Hacer
			si estado(i) <> 2 y estado(i) <> 3 Entonces
				matriz(i,vuelta) <- Aleatorio(1,12)
				Escribir "Jugador N° ",i + 1," su número es: ", matriz(i,vuelta)
				sumaTotal(i) <- sumaTotal(i) + matriz(i,vuelta)
				juagadasHechas(i) <- juagadasHechas(i) + 1
				si sumaTotal(i) <= 21 Entonces
					Repetir
						Escribir "Desea 1.Seguir jugando o 2. Plantarse: "
						leer estado(i)
					Mientras Que estado(i) < 1 o estado(i) > 2
				SiNo
					Escribir "Se paso de 21 su total es: ",sumaTotal(i)
					estado(i) <- 3
				FinSi
			SiNo
				jugadoresAfuera <- jugadoresAfuera + 1
			FinSi
	FinPara
FinSubProceso

SubProceso MostrarMatriz(matriz,cantJugadores,estado,sumaTotal)
	definir i,j Como Entero
	para i <- 0 Hasta cantJugadores - 1 Hacer
		j <- 0
		Escribir Sin Saltar "Jugador N° ",i+1
		Mientras matriz(i,j) <> 0 Hacer
			Escribir Sin Saltar " "
			Escribir Sin Saltar matriz(i,j)
			si matriz(i,j + 1) <> 0 Entonces
				Escribir Sin Saltar " + "
			FinSi
			j <- j + 1
		FinMientras
			Escribir Sin Saltar " = "
			Escribir Sin Saltar sumaTotal(i)
			Escribir Sin Saltar " - "
			Segun estado(i) Hacer
				1:
					Escribir Sin Saltar "Sigue en juego"
				2: 
					Escribir Sin Saltar "Se plantó"
				3:
					Escribir Sin Saltar "Se pasó"	
			FinSegun
			Escribir ""
	FinPara
FinSubProceso