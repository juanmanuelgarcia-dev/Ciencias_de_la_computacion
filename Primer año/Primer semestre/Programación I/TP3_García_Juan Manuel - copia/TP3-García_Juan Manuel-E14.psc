Algoritmo polinomio
	definir a,b,c,x1,x2,discriminante Como Real
	Escribir "Ingrese el coeficiente de x2: "
	Leer a
	escribir "Ingrese el coeficiente de x: "
	leer b
	escribir "Ingrese el término independiente: "
	leer c
	discriminante <- b ^ 2 - 4 * a * c
	si discriminante > 0 Entonces
		x1 <- -b + rc((b ^ 2) - 4 * a * c) / 2 * a
		x2 <- -b - rc((b ^ 2) - 4 * a * c) / 2 * a
		Mostrar "Tenemos dos soluciones reales"
		Mostrar "x1 = ",x1
		Mostrar "x2 = ",x2
	SiNo
		si discriminante = 0 Entonces
			x1 <- -b / (2 * a)
            Mostrar  "Hay una sola solucion:"
            Mostrar  "x = ",x1
		SiNo
			Mostrar "Las soluciones son números imaginarios"
		FinSi
	FinSi
FinAlgoritmo

