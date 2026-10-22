Algoritmo ligaOnline
	Definir nombreLiga,nombreEquipos Como Caracter
	definir cantidadEquipos,tabla Como Entero
	Escribir "Ingrese el nombre de la liga: "
	leer nombreLiga
	
	Repetir
		Escribir "Ingrese la cantidad de equipos: "
		leer cantidadEquipos
	Mientras Que cantidadEquipos <= 1
	
	Dimension nombreEquipos(cantidadEquipos)
	Dimension tabla(cantidadEquipos,4)
	
	cargarEquipos(cantidadEquipos,nombreEquipos)
	inicializarTabla(tabla,cantidadEquipos)
	cargarPartidos(tabla,nombreEquipos,cantidadEquipos,nombreLiga)
FinAlgoritmo

SubProceso cargarEquipos(cantidadEquipos,nombreEquipos)
	definir i Como Entero
	para i <- 0 Hasta cantidadEquipos - 1 Hacer
		Escribir "Ingrese el nombre del equipo: ",i+1
		leer nombreEquipos(i)
	FinPara
FinSubProceso

SubProceso inicializarTabla(tabla,cantidadEquipos)
	definir i,j Como Entero
	para i <- 0 Hasta cantidadEquipos - 1 Hacer
		para j <- 0 Hasta 3 Hacer
			tabla(i,j) <- 0
		FinPara
	FinPara
FinSubProceso

SubProceso cargarPartidos(tabla,nombreEquipos,cantidadEquipos,nombreLiga)
	definir i,j,goles1,goles2 Como Entero
	para i <- 0 Hasta cantidadEquipos - 2 Hacer
		para j <- i + 1 Hasta cantidadEquipos - 1 Hacer
			Escribir "Partido entre ",nombreEquipos(i)," - ",nombreEquipos(j)
			Repetir
				Escribir "Ingrese la cantidad de goles de equipo ",nombreEquipos(i)
				leer goles1
				Escribir "Ingrese la cantidad de goles de equipo ",nombreEquipos(j)
				leer goles2
			Mientras Que goles1 < 0 o goles2 < 0
			
			cargarResultado(tabla,i,goles1,goles2)
			cargarResultado(tabla,j,goles2,goles1)
		FinPara
	FinPara
	MostrarResultado(tabla,nombreEquipos,cantidadEquipos,nombreLiga)
FinSubProceso

SubProceso cargarResultado(tabla,equipo,golesAfavor,golesEncontra)
	si golesAfavor > golesEncontra Entonces
		tabla(equipo,0) <- tabla(equipo,0) + 3
	SiNo
		si golesAfavor = golesEncontra Entonces
			tabla(equipo,0) <- tabla(equipo,0) + 1
		FinSi
	FinSi
	tabla(equipo,1) <- tabla(equipo,1) + golesAfavor
	tabla(equipo,2) <- tabla(equipo,2) + golesEncontra
	tabla(equipo,3) <- tabla(equipo,3) + (golesAfavor - golesEncontra)
FinSubProceso

SubProceso MostrarResultado(tabla,nombreEquipos,cantidadEquipos,nombreLiga)
	Escribir "LIGA ",nombreLiga
	definir i,j Como Entero
	para i <- 0 Hasta cantidadEquipos - 1 Hacer
		Escribir Sin Saltar nombreEquipos(i),"   "
		para j <- 0 Hasta 3 Hacer
			si j = 3 y tabla(i,j) > 0 Entonces
				Escribir Sin Saltar "+",tabla(i,j),"    "
			SiNo
				Escribir Sin Saltar tabla(i,j),"    "
			FinSi
		FinPara
		Escribir ""
	FinPara
FinSubProceso
	