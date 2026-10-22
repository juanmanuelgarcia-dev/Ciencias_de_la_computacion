Algoritmo comisiones
	definir cantidadEmpleados,i Como Entero
	definir sueldoBase,sueldoTotal,dineroGeneradoPorVentas,comision,porcentajeComision Como Real
	cantidadEmpleados <- 0
	sueldoTotal <- 0
	sueldoBase <- 0
	dineroGeneradoPorVentas <- 0
	comision <- 0
	Escribir "Ingrese el sueldo base: "
	leer sueldoBase
	Repetir
		Escribir "Ingrese la cantidadEmpleados: "
		leer cantidadEmpleados
		para i <- 1 Hasta cantidadEmpleados Con Paso 1 Hacer
			Escribir "Ingrese el dinero generado por ventas: "
			leer dineroGeneradoPorVentas
			comision <- (dineroGeneradoPorVentas * 10) / 100
			sueldoTotal <- sueldoBase + comision
			porcentajeComision <- (comision * 100) / sueldoTotal
			Mostrar "Al empleado ",i," habrá que pagarle ",sueldoTotal
			Mostrar "El porcentaje de comisión al empleado ",i," es de ",porcentajeComision
		FinPara
	Mientras Que cantidadEmpleados > 0
FinAlgoritmo
