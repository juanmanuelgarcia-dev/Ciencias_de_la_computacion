Algoritmo reynolds
	Definir RE, resultado Como Real
	Escribir "Ingrese el número de Reynols: "
	leer RE
	si RE <= 0 Entonces
		resultado <- 0
		Mostrar "El coeficiente de arrastre es: ",resultado
	SiNo
		si RE > 0 y RE <= 0.1 Entonces
			resultado <- 24 / RE
			Mostrar "El coeficiente de arrastre es: ",resultado
		SiNo
			si RE > 0.1 y RE <= 1000 Entonces
				resultado <- (24 / RE) * (1 + 0.14 * RE ^ 0.7)
				Mostrar "El coeficiente de arrastre es: ",resultado
			SiNo
				si RE > 1000 y RE <= 500000 Entonces
					resultado <- 0.43
					Mostrar "El coeficiente de arrastre es: ",resultado
				SiNo
					si RE > 500000 Entonces
						resultado <- 0.19 + 80000 / RE
						Mostrar "El coeficiente de arrastre es: ",resultado
					FinSi
				FinSi
			FinSi
		FinSi
	FinSi
FinAlgoritmo
