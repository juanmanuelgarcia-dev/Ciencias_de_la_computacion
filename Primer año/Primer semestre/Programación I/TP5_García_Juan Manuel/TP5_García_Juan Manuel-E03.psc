Algoritmo cartas
	definir cantidadJugadores,puntosTotales,puntos,partidas,i,j,contadorMenor10 Como Entero
	Escribir "Ingrese la cantidad de partidas jugadas: "
	leer partidas
	Escribir "Ingrese el total de jugadores: "
	leer cantidadJugadores
	i <- 0
	puntosTotales <- 0
	contadorMenor10 <- 0
	para i <- 1 hasta partidas con paso 1 Hacer
		para j <- 1 Hasta cantidadJugadores con paso 1 Hacer
			Escribir "Ingrese la cantidad de puntos en la partida ",i," del jugador ",j
			leer puntos
			puntosTotales <- puntos + puntosTotales
			si puntos > 10 Entonces
				contadorMenor10 <- contadorMenor10 + 1
			FinSi
		FinPara
		si contadorMenor10 = cantidadJugadores Entonces
			Mostrar "En esta ronda los jugadores obtuvieron todos menor cantidad a 1o puntos"
		FinSi
		contadorMenor10 <- 0
	FinPara
	Mostrar "La cantidad de puntos totales en las ",partidas," partidas fue de ",puntosTotales
FinAlgoritmo
