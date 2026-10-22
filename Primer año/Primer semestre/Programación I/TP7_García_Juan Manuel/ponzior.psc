Algoritmo ponzior
	definir barco,ordenFilasBarco Como Caracter
	Dimension barco(5,5)
	Dimension ordenFilasBarco(5)
	
	RedimensionarElBarco(ordenFilasBarco)
	
	validarEspaciosVacios(barco)
	
	ingresarCarga(barco)
	
FinAlgoritmo

//Subproceso en el cual redimensiono el barco para trabajar más cómodo
SubProceso RedimensionarElBarco(ordenFilasBarco Por Referencia)
	ordenFilasBarco(0) <- 2
	ordenFilasBarco(1) <- 1
	ordenFilasBarco(2) <- 3
	ordenFilasBarco(3) <- 0
	ordenFilasBarco(4) <- 4
FinSubProceso

//Subproceso en el que paso por referencia el barco e ingreso un " " para determinar posiciones vacias
SubProceso validarEspaciosVacios(barco Por Referencia)
	definir i,j Como Entero
	para i <- 0 Hasta 4 Hacer
		para j <- 0 Hasta 4 Hacer
			barco(i,j) <- " "
		FinPara
	FinPara
FinSubProceso

//Subprocso principal para ingresar los valores del barco
SubProceso ingresarCarga(barco Por Referencia,ordenFilasBarco)
	
	definir i, j,carga,central,lugaresVacios,lugaresVaciosTotal Como Entero
	definir lleno como logico
	definir tipoCarga Como Caracter
	
	lleno <- Falso
	central <- 3
	
	Repetir
		Escribir "Ingrese la carga que desea entre Large(4),Regular(3),Small(2): "
		leer carga
		Escribir "Ingrese el tipo de carga(A,B,C,D,E,....,Z): "
		leer tipoCarga
	Mientras que carga <> 2 y carga <> 3 y carga <> 4
	
FinSubProceso
	