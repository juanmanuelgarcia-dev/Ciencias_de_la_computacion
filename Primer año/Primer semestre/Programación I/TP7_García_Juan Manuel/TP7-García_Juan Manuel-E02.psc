Algoritmo juego
	definir cantidadDeJugadas,valoresDado,i,numeroJuego,j Como Entero
	dimension valoresDado(5)
	Escribir "Ingrese la canidad de jugadas que desea hacer: "
	leer cantidadDeJugadas
	numeroJuego <- 0
	
	//Inicializa el vector
	si cantidadDeJugadas < 1 Entonces
		cantidadDeJugadas <- verificarJugadas(cantidadDeJugadas)
	FinSi
	
	para i <- 0 Hasta cantidadDeJugadas - 1 Hacer
		numeroJuego <- numeroJuego + 1
		mostrar ""
		Mostrar "Juego número ",numeroJuego
		cargarValores(valoresDado)
		Mostrar "La suma de los dos primeros dados es: ",sumaDosDados(valoresDado)
		Mostrar "La suma de los 3 últimos dados es: ",sumaTresDados(valoresDado)
		
		si sumaDosDados(valoresDado) = sumaTresDados(valoresDado) Entonces
			Mostrar "Resultado = 1"
		SiNo
			Mostrar "Resultado = 0"
		FinSi
		mostrar ""
	FinPara
FinAlgoritmo

//Funcion para inicializar el vector
Funcion NuevaCantidadJugadas <- verificarJugadas(cantidadDeJugadas)
	Definir NuevaCantidadJugadas Como Entero
	Repetir
		Escribir "Ingrese la canidad de jugadas que desea hacer, mayor a cero: "
		leer cantidadDeJugadas
	Mientras Que cantidadDeJugadas < 1
	NuevaCantidadJugadas <- cantidadDeJugadas
FinFuncion

//Subproceso para cargar los valores
SubProceso cargarValores(valoresDado Por Referencia)
	definir i Como Entero
	para i <- 0 Hasta 4 Hacer
		valoresDado(i) <- Aleatorio(1,6)
		Escribir Sin Saltar "[",valoresDado(i),"]"
	FinPara
FinSubProceso

//Sumamos los dos primeros dados
funcion sumaDosprimerosDados <- sumaDosDados(valoresDado)
	Definir sumaDosprimerosDados Como Entero
	sumaDosprimerosDados <- valoresDado(0) + valoresDado(1)
FinFuncion

//Sumamos los tres últimos dados
funcion sumaTresUltimosDados <- sumaTresDados(valoresDado)
	Definir sumaTresUltimosDados Como Entero
	sumaTresUltimosDados <- valoresDado(2) + valoresDado(3) + valoresDado(4)
FinFuncion
	