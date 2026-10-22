Algoritmo global2
	definir castillo,ordenCastillo,turnos,maxTurnos,cantidadFilas,cantidadColumnas,opciones,fila,columna Como Entero
	turnos <- 0
	Repetir
		Escribir "Ingrese el orden del castillo: "
		leer ordenCastillo
	Mientras Que ordenCastillo < 4 o ordenCastillo > 8
	
	Dimension castillo(ordenCastillo,ordenCastillo)
	Repetir
		Escribir "Ingrese la cantidad máxima de turnos: "
		leer maxTurnos
	Mientras Que maxTurnos < 1
	
	cargarValores(castillo,ordenCastillo)
	
	ValoresCristal(castillo,ordenCastillo)
	
	cantidadFilas = cantidadFilasPoderosas(castillo,ordenCastillo)
	cantidadColumnas = cantidadColumnasInestables(castillo,ordenCastillo)
	
	Mostrar "La cantidad de filas poderosas es ",cantidadFilas
	Mostrar "La cantidad de columnas inestables es ",cantidadColumnas
	Mostrar turnos,"/",maxTurnos
	
	si no (cantidadFilas >= 3 y cantidadColumnas >= 1) Entonces
		Repetir
			Escribir "Ingrese la opcion que desea"
			Escribir "1. Desplazar corredor mágico"
			Escribir "2. Reordenar torre arcana"
			Escribir "3. Activar ritual diagonal"
			leer opciones
			
			Segun opciones Hacer
				1:
					Repetir
						Escribir "Ingrese la fila que desea cambiar: "
						leer fila
					Mientras Que fila < 1 o fila > ordenCastillo
					desplazarCorredorMagico(castillo,ordenCastillo,fila - 1)
				2:
					Repetir
						Escribir "Ingrese una columna a cambiar: "
						leer columna
					Mientras Que columna < 1 o columna > ordenCastillo
					reordenarTorreArcana(castillo,ordenCastillo,columna - 1)
				3:
					reordenarDiagonal(castillo,ordenCastillo)
			FinSegun
			turnos <- turnos + 1
			ValoresCristal(castillo,ordenCastillo)
			Mostrar "La cantidad de filas poderosas es ",cantidadFilas
			Mostrar "La cantidad de columnas inestables es ",cantidadColumnas
			Mostrar turnos,"/",maxTurnos
			
			
		Mientras Que turnos < maxTurnos o (cantidadFilas >= 3 y cantidadColumnas >= 1)
	FinSi
FinAlgoritmo

SubProceso cargarValores(castillo,ordenCastillo)
	definir i,j Como Entero
	para i <- 0 Hasta ordenCastillo - 1 Hacer
		para j <- 0 Hasta ordenCastillo - 1 Hacer
			castillo(i,j) <- Aleatorio(1,9)
		FinPara
	FinPara
FinSubProceso

SubProceso ValoresCristal(castillo,ordenCastillo)
	Definir i,j Como Entero
	para i <- 0 Hasta ordenCastillo - 1 Hacer
		para j <- 0 hasta ordenCastillo - 1 Hacer
			Escribir Sin Saltar castillo(i,j)
			Escribir Sin Saltar " "
		FinPara
		Escribir ""
	FinPara
FinSubProceso

SubProceso desplazarCorredorMagico(castillo,ordenCastillo,fila)
	definir j,auxiliarMatriz Como Entero
	auxiliarMatriz <- castillo(fila,ordenCastillo - 1)
	para j <- ordenCastillo - 1 Hasta 1 con paso - 1 Hacer
		castillo(fila,j) <- castillo(fila,j-1)
	FinPara
	castillo(fila,0) <- auxiliarMatriz
FinSubProceso

SubProceso reordenarTorreArcana(castillo,ordenCastillo,columna)
	definir i,j,auxiliarMatriz Como Entero
	Dimension auxiliarMatriz(ordenCastillo)
	para i <- 0 Hasta ordenCastillo - 1 Hacer
		auxiliarMatriz(i) <- castillo(i,columna)
	FinPara
	
	para i <- 0 Hasta ordenCastillo - 1 Hacer
		castillo(i,columna) <- auxiliarMatriz(ordenCastillo - 1 - i)
	FinPara
FinSubProceso

SubProceso reordenarDiagonal(castillo,ordenCastillo)
	definir i,sumaDiagonal,contadorContraDiagonal Como Entero
	sumaDiagonal <- 0
	contadorContraDiagonal <- 0
	para i <- 0 Hasta ordenCastillo - 1 Hacer
		sumaDiagonal <- sumaDiagonal + castillo(i,i)
	FinPara
	
	para i <- 0 Hasta ordenCastillo - 1 Hacer
		si castillo(i,ordenCastillo - i - 1) >= 4 Entonces
			contadorContraDiagonal <- contadorContraDiagonal + 1
		FinSi
	FinPara
	
	si sumaDiagonal >= 20 Entonces
		modificarValoresDiagonal(castillo,ordenCastillo)
	FinSi
	
	si contadorContraDiagonal >= (ordenCastillo / 2) Entonces
		modificarValoresContraDiagonal(castillo,ordenCastillo)
	FinSi
FinSubProceso

SubProceso modificarValoresDiagonal(castillo,ordenCastillo)
	definir i Como Entero
	para i <- 0 Hasta ordenCastillo - 1 Hacer
		si castillo(i,i) % 2 = 0 Entonces
			castillo(i,i) <- 3
		FinSi
	FinPara
FinSubProceso

SubProceso modificarValoresContraDiagonal(castillo,ordenCastillo)
	definir i Como Entero
	para i <- 0 Hasta ordenCastillo - 1 Hacer
		si castillo(i,ordenCastillo - i - 1) <> 9 Entonces
			castillo(i,ordenCastillo - i - 1) <- castillo(i,ordenCastillo - i - 1) + 1
		SiNo
			castillo(i,ordenCastillo - i - 1) <- 1
		FinSi
	FinPara
FinSubProceso

Funcion filaPoderosa <- cantidadFilasPoderosas(castillo,ordenCastillo)
	Definir i,j,filaPoderosa,sumaTotal Como Entero
	filaPoderosa <- 0
	para i <- 0 Hasta ordenCastillo - 1 Hacer
		sumaTotal <- 0
		para j <- 0 Hasta ordenCastillo - 1 Hacer
			sumaTotal <- sumaTotal + castillo(i,j)
		FinPara
		si sumaTotal >= 25 Entonces
			filaPoderosa <- filaPoderosa + 1
		FinSi
	FinPara
FinFuncion

Funcion columnaInestable <- cantidadColumnasInestables(castillo,ordenCastillo)
	definir i,j,contador,columnaInestable Como Entero
	columnaInestable <- 0
	para j <- 0 Hasta ordenCastillo - 1 Hacer
		contador <- 0
		para i <- 0 Hasta ordenCastillo - 1 Hacer
			si castillo(i,j) >= 8 Entonces
				contador <- contador + 1
			FinSi
		FinPara
		si contador >= 2 Entonces
			columnaInestable <- columnaInestable + 1
		FinSi
	FinPara
FinFuncion
	