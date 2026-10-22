Algoritmo casa
	definir ancho,largo,alto,cantidadVentanas,cantidadPuertas,cantidadDeManos como entero
	definir finalizarMedicion Como Caracter
	Definir areaTotal,areaTotalConManos,areaTotalConManosTodasLasPiezas,litrosPintura como real
	areaTotalConManosTodasLasPiezas <- 0
	areaTotalConManos <- 0
	cantidadVentanas <- 0
	cantidadPuertas <- 0
	cantidadDeManos <- 0
	litrosPintura <- 0
	Repetir
		Escribir "Ingrese el ancho de la habitación: "
		leer ancho
		Escribir "Ingrese el largo de la habitación: "
		Leer largo
		Escribir "Ingrese el alto de la habitación: "
		Leer alto
		Escribir "Ingrese la cantidad de puertas: "
		leer cantidadPuertas
		Escribir "Ingrese la cantidad de Ventanas: "
		leer cantidadVentanas
		Escribir "Ingrese la cantidad de manos totales: "
		leer cantidadDeManos
		
		areaTotal <- (areaParedTotal(largo,ancho,alto) + areaTechoTotal(largo,ancho)) - (areaPuertaTotal(cantidadPuertas) + areaVentanaTotal(cantidadVentanas))
		areaTotalConManos <- areaTotal * cantidadDeManos
		areaTotalConManosTodasLasPiezas <- areaTotalConManosTodasLasPiezas + areaTotalConManos
		Escribir "¿Desea continuar agregando habitaciones S/N? "
		Leer finalizarMedicion
	Mientras que finalizarMedicion <> "N"
	Mostrar "El area total a recubrir es de: ",areaTotalConManosTodasLasPiezas
	litrosPintura <- areaTotalConManosTodasLasPiezas / 14
	Mostrar "La pintura total necesaria es de: ",litrosPintura,"L"
	
	Mostrar "La cantidad total de latas es: ",cantidadLatas(litrosPintura)
FinAlgoritmo

//Funcion para el area de la pared
Funcion areaParedes <- areaParedTotal(largo,ancho,alto)
	Definir areaParedes Como Real
	areaParedes <- 2 * (largo + ancho) * alto
FinFuncion

//Funcion para el area del techo
Funcion areaTecho <- areaTechoTotal(largo,ancho)
	definir areaTecho Como Real
	areaTecho <- largo * ancho
FinFuncion

//Funcion area puerta
funcion areaPuerta <- areaPuertaTotal(cantidadPuertas)
	definir areaPuerta como real
	areaPuerta <- (0.75 * 2 * cantidadPuertas)
FinFuncion

//Funcion area ventana
funcion areaVentana <- areaVentanaTotal(cantidadVentanas)
	definir areaVentana como real
	areaVentana <- (1.20 * 1.50) * cantidadVentanas
FinFuncion

//Funcion para latas
Funcion totalLatas <- cantidadLatas(litrosPintura)
	Definir totalLatas,latas20,latas10,latas4,latas1,litrosRestantes Como Entero
	Definir costoTotal Como Real
	si litrosPintura - trunc(litrosPintura) > 0 Entonces
		litrosRestantes <- trunc(litrosPintura) + 1
	SiNo
		litrosRestantes <- trunc(litrosPintura)
	FinSi
	latas20 <- trunc(litrosRestantes / 20)
	litrosRestantes <- litrosRestantes - (latas20 * 20)
	
	latas10 <- trunc(litrosRestantes / 10)
	litrosRestantes <- litrosRestantes - (latas10 * 10)
	
	latas4 <- trunc(litrosRestantes / 4)
	litrosRestantes <- litrosRestantes - (latas4 * 4)
	
	latas1 <- litrosRestantes
	
	costoTotal <- (latas20 * 700) + (latas10 * 400) + (latas4 * 170) + (latas1 * 50)
	
	Escribir "La cantidad de latas de 20L: ",latas20
	Escribir "La cantidad de latas de 10L: ",latas10
	Escribir "La cantidad de latas de 4L: ",latas4
	Escribir "La cantidad de latas de 1L: ",latas1
	Escribir "El costo total es: ",costoTotal
	totalLatas <- latas20 + latas10 + latas4 + latas1
FinFuncion

	