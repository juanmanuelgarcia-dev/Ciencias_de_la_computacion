Algoritmo suma
	definir calculadora,cantidadJugada,numJugador,calculoDisplay,turno,opciones Como Entero
	Definir ganador Como Logico
	cantidadJugada <- 0
	calculoDisplay <- 0
	turno <- 0
	Dimension calculadora(3,3)
	Dimension opciones(4)
	
	inicializarCalculadora(calculadora)
	MostrarCalculadora(calculadora)
	
	Repetir
		turno <- turno + 1
		cantidadJugada <- cantidadJugada + 1
		si cantidadJugada % 2 <> 0 Entonces
			numJugador <- 1
		SiNo
			numJugador <- 2
		FinSi
		
		Mostrar "Turno del jugador ",numJugador
		Mostrar "Display: ",calculoDisplay
		si turno = 1 Entonces
			MostrarNumeroTurno1(calculadora)
		SiNo
			mostrarNumerosPosibles(calculadora,opciones,calculoDisplay)
		FinSi
		calculoDisplay <- calculoDisplay + elegirNumero(calculadora,opciones)
	Mientras Que calculoDisplay < 31
	
	si numJugador = 1 Entonces
		Mostrar "Perdedor jugador N° ",numJugador
		numJugador <- numJugador + 1
		Mostrar "Ganador jugador N° ",numJugador
	SiNo
		Mostrar "Perdedor jugador N° ",numJugador
		numJugador <- numJugador - 1
		Mostrar "Ganador jugador N° ",numJugador
	FinSi
	
FinAlgoritmo

SubProceso inicializarCalculadora(calculadora)
	definir i,j,numInicial Como Entero
	numInicial <- 0
	para i <- 2 Hasta 0 Con Paso -1 Hacer
		para j <- 0 Hasta 2 Hacer
			numInicial <- numInicial + 1
			calculadora(i,j) <- numInicial
		FinPara
	FinPara
FinSubProceso

SubProceso MostrarCalculadora(calculadora)
	definir i,j Como Entero
	para i <- 0 Hasta 2 Hacer
		para j <- 0 Hasta 2 Hacer
			Escribir Sin Saltar "[ ",calculadora(i,j)," ]"
			Escribir Sin Saltar " "
		FinPara
		Escribir ""
	FinPara
FinSubProceso

Funcion elegirNum <- elegirNumero(calculadora,opciones)
	Definir elegirNum,i Como Entero
	Definir repetirSolicitud Como Logico
	Repetir
		repetirSolicitud <- Falso
		Escribir "Ingrese el numero: "
		leer elegirNum
		si elegirNum < 1 o elegirNum > 9 Entonces
			Escribir "Numero incorrecto"
			repetirSolicitud <- Verdadero
		SiNo
				Escribir "Ese número no se puede elegir"
				repetirSolicitud <- Verdadero
		FinSi
	Mientras Que repetirSolicitud = Verdadero
	para i <- 0 Hasta 2 Hacer
		para j <- 0 Hasta 2 Hacer
			si calculadora(i,j) = elegirNum Entonces
				calculadora(i,j) <- 0
			FinSi
		FinPara
	FinPara
FinFuncion

Funcion opcionesPosibles <- opcionesAelegir(calculadora)
	Definir opcionesPosibles Como Entero
FinFuncion

SubProceso MostrarNumeroTurno1(calculadora)
	Definir i,sumar Como Entero
	sumar <- 1
	para i <- 0 Hasta 8 Hacer
		Escribir Sin Saltar "Números posibles = " 
		Escribir Sin Saltar sumar,","
		sumar <- sumar + 1
	FinPara
FinSubProceso

//Mostrar los números elegidos
SubProceso mostrarNumerosPosibles(calculadora,opciones,calculoDisplay)
FinSubProceso
	