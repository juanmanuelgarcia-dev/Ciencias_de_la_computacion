Algoritmo supermercado
	definir stock, ventas,totalVentas Como Entero
	escribir "Ingrese el stock de el producto a analizar: "
	leer stock
	totalVentas <- 0
	ventas <- 1 //Inicializo para entrar al bucle
	Mientras stock > 0 y ventas > 0 Hacer
		ventas <- 0
		Mostrar "Ingrese la cantidad de ventas del producto: "
		leer ventas
		si ventas <= stock Entonces
			stock <- stock - ventas
			totalVentas <- totalVentas + ventas
		SiNo
			Mostrar "No hay suficiente stock"
		FinSi
	FinMientras
	si stock > 0 Entonces
		Mostrar "La cantidad de stock que quedó fue de ",stock
	SiNo
		Mostrar "La cantidad de stock que quedó fue de 0"
	FinSi
		Mostrar "La cantidad de ventas fue de: ",totalVentas
FinAlgoritmo