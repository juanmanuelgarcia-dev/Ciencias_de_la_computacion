Algoritmo ventasDiarias
	Definir tipoCliente,montoCompra,cantidadMayoristas,cantidadTotal,cantidadMinoristas como entero
	Definir jornadaFinalizada Como Caracter
	Definir impuesto,totalMin,totalMax,total,promedio,maxCompraMinorista,maxCompraMayorista como real
	total <- 0
	totalMax <- 0
	totalMin <- 0
	cantidadMayoristas <- 0
	cantidadMinoristas <- 0
	maxCompraMinorista <- 0
	maxCompraMayorista <- 0
	
	//Bucle principal
	Repetir
		
		Escribir "Ingrese el tipo de cliente (1 minorista/ 2 mayorista) : "
		leer tipoCliente
		
		//Si el cliente es minorista
			si tipoCliente = 1 Entonces
				Escribir "Ingrese el monto de la compra: "
				leer montoCompra
				Mostrar "Su total con descuento sin impuesto es: ",descuentoMin(montoCompra)
				impuesto <- descuentoMin(montoCompra) + (descuentoMin(montoCompra) * 21) / 100
				Mostrar "El total con impuesto agregado es de: ",impuesto
				totalMin <-  impuesto + totalMin
				cantidadMinoristas <- cantidadMinoristas + 1
				si impuesto > maxCompraMinorista Entonces
					maxCompraMinorista <- impuesto
				FinSi
				
			SiNo
				//Si el cliente es mayorista
				si tipoCliente = 2 Entonces
					Escribir "Ingrese el monto de la compra: "
					leer montoCompra
					Mostrar "Su total con descuento sin impuesto es: ",descuentoMay(montoCompra)
					impuesto <- descuentoMay(montoCompra) + (descuentoMay(montoCompra) * 21) / 100
					Mostrar "El total con impuesto agregado es de: ",impuesto
					totalMax <- impuesto + totalMax
					cantidadMayoristas <- cantidadMayoristas + 1
					si impuesto > maxCompraMayorista Entonces
						maxCompraMayorista <- impuesto
					FinSi
				SiNo
					
					//Si ingresa otro valor
					Mientras tipoCliente <> 1 o tipoCliente <> 2 Hacer
						Escribir "Ingrese el tipo de cliente válido (1 minorista/ 2 mayorista) : "
						leer tipoCliente
					FinMientras
					
				FinSi
			FinSi
			Escribir "Desea finalizar la jornada, responda S/N: "
			leer jornadaFinalizada
		Mientras Que jornadaFinalizada <> "S"
		
		//Muestro el total facturado del día
		total <- totalMax + totalMin
		Mostrar "El total de todo lo vendido hoy fue de ",total
		
		//Muestro la cantidad de ventas a mayoristas
		Mostrar "La venta total a mayoristas fue de: ",cantidadMayoristas
		
		//Muestro la mayor venta
		si maxCompraMayorista > maxCompraMinorista Entonces
			Mostrar "La mayor compra fue de: ",maxCompraMayorista
		SiNo
			si maxCompraMayorista < maxCompraMinorista Entonces
				Mostrar "La mayor compra fue de: ",maxCompraMinorista
			SiNo
				Mostrar "La mayor compra fue de: ",maxCompraMinorista
			FinSi
		FinSi
		
		//Calculo el promedio de compra
		cantidadTotal <- cantidadMinoristas + cantidadMayoristas
		promedio <- total / cantidadTotal
		Mostrar "El promedio de compra fue de: ",promedio
FinAlgoritmo

//Funcion descuento minorista
funcion descuentoMinorista <- descuentoMin(montoCompra)
	Definir descuentoMinorista Como real
	descuentoMinorista <- montoCompra - (montoCompra * 5) / 100
FinFuncion

//Funcion descuento minorista
funcion descuentoMayorista <- descuentoMay(montoCompra)
	Definir descuentoMayorista Como real
	descuentoMayorista <- montoCompra - (montoCompra * 15) / 100
FinFuncion


	