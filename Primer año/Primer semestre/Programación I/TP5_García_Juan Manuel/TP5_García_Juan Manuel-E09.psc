Algoritmo comercio
	definir cantidadDiasDeTrabajo, recaudacionDiaria,cantidadVentas,totalVentas,precioVenta,i,j,ventasTotales,mayoraLoPedido Como Entero
	Escribir "Ingrese la cantidad de días de trabajo a medir: "
	leer cantidadDiasDeTrabajo
	mientras cantidadDiasDeTrabajo > 0 Hacer
		Escribir "Ingrese la recaudación diara mínima: "
		leer recaudacionDiaria
			para i <- 1 hasta cantidadDiasDeTrabajo con paso 1 Hacer
				Escribir "Ingrese el total de ventas: "
				leer cantidadVentas
				ventasTotales <- 0
				totalVentas <- 0
				mayoraLoPedido <- 0
					Repetir
						Escribir "Ingrese el precio total de la venta "
						leer precioVenta
						si precioVenta > 10000 Entonces
							mayoraLoPedido <- mayoraLoPedido + 1
						FinSi
						totalVentas <- precioVenta + totalVentas
						ventasTotales <- ventasTotales + 1
					Mientras Que totalVentas < recaudacionDiaria
					si totalVentas >= recaudacionDiaria Entonces
						Mostrar "Se requirieron ",ventasTotales," ventas para alcanzar los ",recaudacionDiaria," deseados"
					FinSi
					si mayoraLoPedido > 1 Entonces
						Mostrar "Si se llegó a los 10000 en una venta al menos"
					SiNo
						Mostrar "No se llego a los 10000 en ninguna venta"
					FinSi
			FinPara
	FinMientras
FinAlgoritmo
