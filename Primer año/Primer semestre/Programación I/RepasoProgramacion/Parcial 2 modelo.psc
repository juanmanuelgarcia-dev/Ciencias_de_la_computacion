//DATOS DE ENTRADA: Orden del tablero, cantidad máxima de turnos, selección del menú de opciones, número de fila para desplazar una posición, número de columna para rotar sus valores
//DATOS DE SALIDA: 	Tablero de cristales mágico, turno actual, máximo número de turnos, cantidad de filas poderosas y cantidad de columnas inestables

Algoritmo CristalesMagicos
	Definir cantidadMaxTurnos, turno, tableroCristales, n, fila, columna Como Entero
	Definir cantFilasPoderosas, cantColumnasInestables, seleccion Como Entero
	
	turno = 0
		
	Repetir
		Escribir "Ingrese el orden del tablero (4=< n <=8)"
		Leer n		
	Mientras Que n < 4 o n > 8
	
	Dimension tableroCristales(n, n)
	
	InicializarTableroCristales(tableroCristales, n)
	
	
	Repetir
		Escribir "Ingrese la cantidad máxima de turnos"
		Leer cantidadMaxTurnos		
	Mientras Que cantidadMaxTurnos < 1
	
	MostrarTableroCristales(tableroCristales, n, turno, cantidadMaxTurnos)
	
	cantFilasPoderosas = CalcuularFilasPoderosas(tableroCristales,n)
	cantColumnasInestables = CalcularColumnasInestables(tableroCristales,n)
	
	Escribir "Filas Poderosas (suma >= 25) = " cantFilasPoderosas
	Escribir "Columnas Inestables (al menos 2 valores >= 8) = " cantColumnasInestables
	
	Si  no(cantFilasPoderosas >= 3 y cantColumnasInestables >= 1)  Entonces
		//Realiza los turnos
		Repetir
			
			seleccion =	SeleccionarOpcionMenu()
			
			
			Segun seleccion Hacer
				1:
					//pedimos entrada al usuario (fila) y lo pasamos como parámetro al subprograma
					Repetir
						Escribir "Ingrese una fila del tablero para desplazar corredor"
						Leer fila						
					Mientras Que fila < 1 o fila > n
					
					DesplazarCorredor(tableroCristales, n, fila-1)
				2:
					Repetir
						Escribir "Ingrese una columna del tablero para reordenar la torre"	
						leer columna
					Mientras Que columna < 1 o columna > n
					
					ReordenarTorre(tableroCristales, n, columna-1)
				3:
					RitualDiagonal(tableroCristales, n)
			Fin Segun
			
			turno = turno +1
					
			cantFilasPoderosas = CalcuularFilasPoderosas(tableroCristales,n)
			cantColumnasInestables = CalcularColumnasInestables(tableroCristales,n)
			
			//Mostramos salidas desde el algoritmo principal
			MostrarTableroCristales(tableroCristales, n, turno, cantidadMaxTurnos)
			Escribir "Filas Poderosas (suma >= 25) = " cantFilasPoderosas
			Escribir "Columnas Inestables (al menos 2 valores >= 8) = " cantColumnasInestables
			
		Mientras Que turno < cantidadMaxTurnos o (cantFilasPoderosas < 3 y cantColumnasInestables < 1 )
	FinSi
	
	
FinAlgoritmo

SubProceso	InicializarTableroCristales(tableroCristales, n)
	Definir i, j Como Entero
	Para i<-0 Hasta n-1 Hacer
		para j<-0 hasta n-1 Hacer
			tableroCristales[i,j] = Aleatorio(1,9)
		FinPara
	FinPara
FinSubProceso


SubProceso MostrarTableroCristales(tableroCristales, n, turno, cantidadMaxTurnos)
	Definir i, j Como Entero
	Escribir ""
	Escribir "TURNO " turno "/" cantidadMaxTurnos 
	Para i<-0 Hasta n-1 Hacer		
		para j<-0 hasta n-1 Hacer
			escribir tableroCristales[i,j] " " Sin Saltar
		FinPara
		Escribir ""
	FinPara
FinSubProceso

Funcion seleccion <- SeleccionarOpcionMenu
	definir seleccion Como Entero
	Escribir ""
	Escribir "----------Libro de Hechizos Mágicos-----------"
	Escribir "|       1. Desplazar corredor mágico         |"
	Escribir "|       2. Reordenar torre arcana            |"
	Escribir "|       3. Activar ritual diagonal           |"	
	Escribir "----------------------------------------------"
	Repetir
		Escribir Sin Saltar "Ingrese su opción: "
		Leer seleccion				
	Mientras Que seleccion < 1 o seleccion > 3
	
FinSubProceso

SubProceso DesplazarCorredor(tableroCristales, n, fila) 
	Definir j, ultimoCristal Como Entero
		
	ultimoCristal = tableroCristales[fila, n-1]
	Para j<-n-1 hasta 1 Con Paso -1 Hacer
		tableroCristales[fila, j] = tableroCristales[fila, j-1]
	FinPara
	tableroCristales[fila, 0] = ultimoCristal
FinSubProceso


//Esto también lo podrían haber resuelto con un vector auxiliar para copiar la columna y luego invertirla (menos óptimo pero era válido sólo recorriendo la columna corespondiente)
SubProceso ReordenarTorre(tableroCristales, n, columna)
	Definir i,j, primerCristal Como Entero
	primerCristal = tableroCristales[n-1, columna]
	
	Para i <- 0 Hasta (n/2)-1 Hacer
        primerCristal <- tableroCristales[i,columna]
        tableroCristales[i,columna] <- tableroCristales[n-1-i,columna]
        tableroCristales[n-1-i,columna] <- primerCristal
    FinPara	

FinSubProceso

SubProceso RitualDiagonal(tableroCristales, n)
	Definir i, j, sumaDiagonalPrincipal, mayoresCuatro Como Entero
	
	sumaDiagonalPrincipal = 0
	mayoresCuatro = 0
	Para i<-0 Hasta n-1 Hacer
		//acumulamos la suma de la diagonal principal
		sumaDiagonalPrincipal = sumaDiagonalPrincipal + tableroCristales[i,i]
		
		//contabilizamos los valores mayores o iguales a 4
		Si tableroCristales[i, n-1-i] >= 4 Entonces
			mayoresCuatro = mayoresCuatro + 1		
		FinSi
	FinPara
	
	
	Si sumaDiagonalPrincipal > 20 Entonces
		ModificarDiagonalPrincipal(tableroCristales, n)
	FinSi
	
	si mayoresCuatro > n - mayoresCuatro Entonces
		ModificarDiagonalSecundaria(tableroCristales, n)
	FinSi

FinSubProceso

SubProceso ModificarDiagonalPrincipal(tableroCristales, n)
	Definir i Como Entero
	Para i<-0 Hasta n-1 Hacer
		Si tableroCristales[i,i] mod 2 = 0 Entonces
			tableroCristales[i,i] = 3		
		FinSi
	FinPara
FinSubProceso

SubProceso ModificarDiagonalSecundaria(tableroCristales, n)
	definir i Como Entero
	Para i<-0 Hasta n-1 Hacer
		Si tableroCristales[i, n-1-i] = 9 Entonces
			tableroCristales[i, n-1-i] = 1
		SiNo
			tableroCristales[i, n-1-i] = tableroCristales[i, n-1-i] + 1
		FinSi
	FinPara
FinSubProceso


Funcion cantFilasPoderosas <- CalcuularFilasPoderosas(tableroCristales, n)
	Definir i, j, sumaFilasPoderosas, cantFilasPoderosas Como Entero
	cantFilasPoderosas = 0
	Para i<-0 Hasta n-1 Hacer
		sumaFilasPoderosas = 0
		Para j<-0 Hasta n-1 Hacer
			sumaFilasPoderosas = sumaFilasPoderosas + tableroCristales[i,j]			
		FinPara
		Si sumaFilasPoderosas >= 25
			cantFilasPoderosas = cantFilasPoderosas +1
		FinSi
	FinPara
	
Fin Funcion

Funcion cantColumnasInestables <- CalcularColumnasInestables(tableroCristales,n)
	Definir i, j, sumaValoresInestables, cantColumnasInestables Como Entero
	cantColumnasInestables = 0
	
	Para i<-0 Hasta n-1 Hacer
		sumaValoresInestables = 0
		Para j<-0 Hasta n-1 Hacer
			Si tableroCristales[j,i] >= 8 Entonces
				sumaValoresInestables = sumaValoresInestables +1
			FinSi
		FinPara
		Si sumaValoresInestables >= 2 Entonces
			cantColumnasInestables = cantColumnasInestables +1
		FinSi
	FinPara
Fin Funcion

