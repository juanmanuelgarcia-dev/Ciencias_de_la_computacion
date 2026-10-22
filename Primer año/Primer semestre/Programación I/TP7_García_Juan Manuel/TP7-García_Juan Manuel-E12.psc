Algoritmo sillas
	definir procesos Como Entero
	Dimension procesos(6,5)
	
	cargarValores(procesos)
	
	costoMaximo(procesos)
	
	costoMinimo(procesos)
	
FinAlgoritmo

SubProceso cargarValores(procesos Por Referencia)
	procesos(0,0) <- 6
	procesos(0,1) <- 5
	procesos(0,2) <- 9
	procesos(0,3) <- 19
	procesos(0,4) <- 11
	
	procesos(1,0) <- 45
	procesos(1,1) <- 23
	procesos(1,2) <- 21
	procesos(1,3) <- 17
	procesos(1,4) <- 30
	
	procesos(2,0) <- 15
	procesos(2,1) <- 7
	procesos(2,2) <- 23
	procesos(2,3) <- 25
	procesos(2,4) <- 2
	
	procesos(3,0) <- 75
	procesos(3,1) <- 26
	procesos(3,2) <- 38
	procesos(3,3) <- 49
	procesos(3,4) <- 19
	
	procesos(4,0) <- 2
	procesos(4,1) <- 15
	procesos(4,2) <- 76
	procesos(4,3) <- 1
	procesos(4,4) <- 45
	
	procesos(5,0) <- 92
	procesos(5,1) <- 82
	procesos(5,2) <- 4
	procesos(5,3) <- 20
	procesos(5,4) <- 13
	
FinSubProceso

SubProceso costoMaximo(procesos)
	definir i,j,costoMax,NumMaquina Como Entero
	NumMaquina <- 0
	para i <- 0 Hasta 5 Hacer
		costoMax <- 0
		NumMaquina <- NumMaquina + 1
		para j <- 0 Hasta 4 Hacer
			si costoMax <= procesos(i,j) Entonces
				costoMax <- procesos(i,j)
			FinSi
		FinPara
		Mostrar "Para la máquina ",NumMaquina," el mayor costo es: ",costoMax
	FinPara
FinSubProceso

SubProceso costoMinimo(procesos)
	definir i,j,costoMin,NumMaquina Como Entero
	NumMaquina <- 0
	para i <- 0 Hasta 4 Hacer
		costoMin <- 10000000
		NumMaquina <- NumMaquina + 1
		para j <- 0 Hasta 4 Hacer
			si costoMin >= procesos(i,j)
				costoMin <- procesos(i,j)
			FinSi
		FinPara
		Mostrar ""
		Mostrar "Para la máquina ",NumMaquina," el menor costo es: ",costoMin
	FinPara
FinSubProceso
	