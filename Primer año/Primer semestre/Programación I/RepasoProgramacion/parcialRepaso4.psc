Algoritmo juego21
	Definir juego,cantidadJugadores, Como Entero
	
	Repetir
		Escribir "Ingrese la cantidad de jugadores: "
		leer cantidadJugadores
	Mientras Que cantidadJugadores < 2 o cantidadJugadores > 5
	
	cargarValoresAleatorios(juego,cantidadJugadores)
	
	Repetir
		
		
		
		
	Mientras Que 
FinAlgoritmo

SubProceso cargarValoresAleatorios(juego,cantidadJugadores)
	definir i Como Entero
	para i <- 0 Hasta cantidadJugadores - 1 Hacer
		juego(i,0) <- Aleatorio(1,12)
	FinPara
FinSubProceso
	