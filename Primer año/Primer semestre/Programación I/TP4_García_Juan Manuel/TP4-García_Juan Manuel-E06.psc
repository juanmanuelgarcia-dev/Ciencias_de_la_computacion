Algoritmo intervalo
	Definir limiteloInferior, limiteloSuperior,numeroIngresado,sumaTotal,numerosFueraDelIntervalo Como Entero
	numerosFueraDelIntervalo <- 0
	sumaTotal <- 0
	Escribir "Ingrese un intervalor inferior entero del intervalo: "
	Leer limiteloInferior
	Escribir "Ingrese un limite superior entero del intervalo: "
	Leer limiteloSuperior
	Mientras limiteloSuperior < limiteloInferior Hacer
		Escribir "error reingrese los itervalos de manera que el inferior no sea mayor que el superior"
		Leer limiteloSuperior
		Leer limiteloInferior
	FinMientras
	Escribir "Ingrese numeros, 0 para detenerse: "
	leer numeroIngresado
	Mientras numeroIngresado <> 0 Hacer
		Si limiteloInferior < numeroIngresado y numeroIngresado < limiteloSuperior Entonces
			sumaTotal <- sumaTotal + numeroIngresado
		SiNo
			si limiteloInferior = numeroIngresado o numeroIngresado = limiteloSuperior Entonces
				Mostrar "Ingreso un número igual al limite"
			sino
				numerosFueraDelIntervalo <- numerosFueraDelIntervalo + 1
			FinSi
		FinSi
		Escribir "Ingrese numeros, 0 para detenerse: "
		leer numeroIngresado
	FinMientras
	Mostrar "La suma de los números dentro del intervalo es ",sumaTotal
	Mostrar "La cantidad de veces que estuvo fuera del intervalo fue ",numerosFueraDelIntervalo
FinAlgoritmo
