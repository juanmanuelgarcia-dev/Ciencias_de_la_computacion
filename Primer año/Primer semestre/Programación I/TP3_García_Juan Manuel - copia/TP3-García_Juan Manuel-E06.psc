Algoritmo verduleria
	definir importe,kilos,total Como Real
	Escribir "Ingrese la cantidad de kilos comprados: "
	Leer kilos
	Escribir "Ingrese el importe a pagar: "
	leer importe
	si kilos <= 2 Entonces
		total <- importe
		Mostrar "Tiene que pagar ",total
	SiNo
		si kilos > 2 y kilos <= 5 Entonces
			total <- importe - (importe * 10 / 100)
			Mostrar "Tiene que pagar ",total
		SiNo
			si kilos > 5 y kilos <= 10 Entonces
				total <- importe - (importe * 15 / 100)
				Mostrar "Tiene que pagar ",total
			SiNo
				si kilos > 10 Entonces
					total <- importe - (importe * 20 / 100)
					Mostrar "Tiene que pagar ",total
				SiNo
					Mostrar "Ingrese una compra válida"
				FinSi
			FinSi
		FinSi
	FinSi
FinAlgoritmo
