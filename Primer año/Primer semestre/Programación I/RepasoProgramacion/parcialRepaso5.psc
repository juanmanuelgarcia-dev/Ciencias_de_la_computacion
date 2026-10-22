//Datos entrada: orden Matriz, fila a desplazar, columna a desplazar
//Datos salida: mostrar matriz, columnas inestables, filas poderosas,turnos
Algoritmo segundoparcial
	Definir maxturnos,turno,castillo,ordenCastillo,FilaPoderosa,columnaInestable,fila,columna,seleccion Como Entero
	turno <- 0
	Repetir
		Escribir "Ingrese el orden del castillo: "
		leer ordenCastillo
	Mientras Que ordenCastillo < 4 o ordenCastillo > 8
	Repetir
		Mostrar "Ingrese la cantidad maxima de turnos: "
		leer maxturnos
	Mientras Que maxturnos < 1
	
	Dimension castillo(ordenCastillo,ordenCastillo)
	
	cargarValoresCastillo(castillo,ordenCastillo)
	mostrarCastillo(castillo,ordenCastillo)
	
	FilaPoderosa = FilasPoderosas(castillo,ordenCastillo)
	columnaInestable = columnasInestables(castillo,ordenCastillo)
	Mostrar "La cantidad de filas poderosas es ",FilaPoderosa
	Mostrar "La cantidad de columnas inestables es ",columnaInestable
	Mostrar "Esta en el turno 0/",maxturnos
	
	si no (FilaPoderosa >= 3 y columnaInestable >= 1) Entonces
		Repetir
			
			seleccion = seleccionarOpcion()
			Segun seleccion Hacer
				1:
					Repetir
						Escribir "Ingrese la fila que desea desplazar: "
						leer fila
					Mientras Que fila < 1 o fila > ordenCastillo
					DesplazarFilaPoderosa(castillo,ordenCastillo,fila - 1)
					
				2:
					Repetir
						Escribir "Ingrese la columna que desea desplazar: "
						leer columna
					Mientras Que columna < 1 o columna > ordenCastillo
					reordenarTorreArcana(castillo,ordenCastillo,columna - 1)
				3:
					Diagonales(castillo,ordenCastillo)
			FinSegun
			turno <- turno + 1
			mostrarCastillo(castillo,ordenCastillo)
			Mostrar "La cantidad de filas poderosas es "
			Mostrar "La columna de columnas inestables es "
			Mostrar turno,"/",maxturnos
			
		Mientras Que (FilaPoderosa < 3 o columnaInestable < 1) o turno < maxturnos
	FinSi
FinAlgoritmo

SubProceso cargarValoresCastillo(castillo,ordenCastillo)
	Definir i,j Como Entero
	para i <- 0 Hasta ordenCastillo - 1 Hacer
		para j <- 0 Hasta ordenCastillo -1 Hacer
			castillo(i,j) <- Aleatorio(1,9)
		FinPara
	FinPara
FinSubProceso

SubProceso mostrarCastillo(castillo,ordenCastillo)
	definir i,j Como Entero
	para i <- 0 Hasta ordenCastillo-1 Hacer
		para j <- 0 Hasta ordenCastillo-1 Hacer
			Escribir Sin Saltar castillo(i,j)
			Escribir Sin Saltar " "
		FinPara
		Escribir ""
	FinPara
FinSubProceso

Funcion cantidadFilasPoderosas <- FilasPoderosas(castillo,ordenCastillo)
	definir i,j,sumaFila,cantidadFilasPoderosas Como Entero
	cantidadFilasPoderosas <- 0
	para i <- 0 Hasta ordenCastillo - 1 Hacer
		sumaFila <- 0
		para j <- 0 Hasta ordenCastillo - 1 Hacer
			sumaFila <- sumaFila + castillo(i,j)
		FinPara
		si sumaFila >= 25 Entonces
			cantidadFilasPoderosas <- cantidadFilasPoderosas + 1
		FinSi
	FinPara
FinFuncion

Funcion CantidadcolumnasInestables = columnasInestables(castillo,ordenCastillo)
	definir i,j,CantidadcolumnasInestables,contadorMayora8 Como Entero
	CantidadcolumnasInestables <- 0
	para j <- 0 Hasta ordenCastillo - 1 Hacer
		contadorMayora8 <- 0
		para i <- 0 Hasta ordenCastillo - 1 Hacer
			si castillo(i,j) >= 8 Entonces
				contadorMayora8 <- contadorMayora8 + 1
			FinSi
		FinPara
		si contadorMayora8 >= 2 Entonces
			CantidadcolumnasInestables <- CantidadcolumnasInestables + 1
		FinSi
	FinPara
FinFuncion

Funcion seleccion <- seleccionarOpcion
	Definir seleccion Como Entero
	Repetir
		Escribir "1.Desplazar fila poderosa"
		Escribir "2. Reordenar torre arcana"
		Escribir "3. Activar ritual diagonal"
		Escribir "Ingrese una opcion: "
		leer seleccion
	Mientras Que seleccion < 1 o seleccion > 3
FinFuncion

SubProceso DesplazarFilaPoderosa(castillo,ordenCastillo,fila)
	Definir j,auxiliar Como Entero
	auxiliar <- castillo(fila,ordenCastillo - 1)
	para j <- ordenCastillo - 1 Hasta 1 Con Paso -1 Hacer
		castillo(fila,j) <- castillo(fila,j-1)
	FinPara
	castillo(fila,0) <- auxiliar
FinSubProceso

SubProceso reordenarTorreArcana(castillo,ordenCastillo,columna)
	definir i,auxiliar Como Entero
	Dimension auxiliar(ordenCastillo)
	
	para i <- 0 Hasta ordenCastillo - 1 Hacer
		auxiliar(i) <- castillo(i,columna)
	FinPara
	
	para i <- 0 Hasta ordenCastillo - 1 Hacer
		castillo(i,columna) <- auxiliar(ordenCastillo - 1 - i)
	FinPara
FinSubProceso

SubProceso Diagonales(castillo,ordenCastillo)
	definir i,sumaDiagonal,contadorContraDiagonal Como Entero
	sumaDiagonal <- 0
	contadorContraDiagonal <- 0
	para i <- 0 Hasta ordenCastillo - 1 Hacer
		sumaDiagonal <- sumaDiagonal + castillo(i,i)
	FinPara
	
	para i <- 0 Hasta ordenCastillo - 1 Hacer
		si castillo(i,ordenCastillo-1-i) >= 4 Entonces
			contadorContraDiagonal <- contadorContraDiagonal + 1
		FinSi
	FinPara
	
	si sumaDiagonal >= 20 Entonces
		modificarValoresDiagonal(castillo,ordenCastillo)
	FinSi
	
	si contadorContraDiagonal >= (ordencastillo / 2) Entonces
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
		si castillo(i,ordencastillo-1-i) = 9 Entonces
			castillo(i,ordencastillo-i-1) <- 1
		SiNo
			castillo(i,ordencastillo-1-i) <- castillo(i,ordencastillo-1-i) + 1
		FinSi
	FinPara
FinSubProceso

	