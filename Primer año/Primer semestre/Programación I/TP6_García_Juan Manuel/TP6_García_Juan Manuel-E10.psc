
Algoritmo CampeonatoDados
	
	Definir nombre, ganador Como caracter
	Definir rondas, i,cantidadJugadores,sumaTotal,mayorTotal,mejorRonda,puntajeRonda,totalJugador,dado1,dado2 Como Entero
	Definir promedio Como Real
	
	mayorTotal <- 0
	sumaTotal <- 0
	cantidadJugadores <- 0
	
	Escribir "Ingrese nombre del jugador (FIN para terminar): "
	Leer nombre
	Mientras nombre <> "FIN" Hacer
		Escribir "Ingrese cantidad de rondas: "
		Leer rondas
		totalJugador <- 0
		mejorRonda <- 0
		Para i <- 1 Hasta rondas Hacer
			Escribir "Ronda ", i
			dado1 <- Aleatorio(1,6)
			dado2 <- Aleatorio(1,6)
			puntajeRonda <- CalcularPuntaje(dado1, dado2)
			totalJugador <- totalJugador + puntajeRonda
			Si puntajeRonda > mejorRonda Entonces
				mejorRonda <- puntajeRonda
			FinSi
		FinPara
		Escribir "Jugador: ", nombre
		Escribir "Puntaje total: ", totalJugador
		Escribir "Mejor ronda: ", mejorRonda
		Si totalJugador > mayorTotal Entonces
			mayorTotal <- totalJugador
			ganador <- nombre
		FinSi
		sumaTotal <- sumaTotal + totalJugador
		cantidadJugadores <- cantidadJugadores + 1
		Escribir "Ingrese nombre del jugador (FIN para terminar): "
		Leer nombre
	FinMientras
	
	Si cantidadJugadores > 0 Entonces
		promedio <- sumaTotal / cantidadJugadores
	FinSi

		Escribir "Ganador del campeonato: ", ganador
		Escribir "Mayor puntaje total: ", mayorTotal
		Escribir "Promedio de puntos por jugador: ", promedio
		
FinAlgoritmo

//Funcion dado
Funcion puntos <- CalcularPuntaje(dado1, dado2)
	Definir puntos Como Entero
	puntos <- dado1 + dado2
	Si dado1 = dado2 Entonces
		puntos <- puntos * 2
	FinSi
FinFuncion


