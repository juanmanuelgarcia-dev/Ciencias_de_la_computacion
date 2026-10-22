Algoritmo minimoComunMultiplo
	definir primerNumero,segundoNumero,resultadoMCD Como Entero
	Escribir "Ingrese el primer número: "
	leer primerNumero
	Escribir "Ingrese el segundo número: "
	Leer segundoNumero
	resultadoMCD = calculoMCD (primerNumero,segundoNumero)
	Mostrar "El MCD es: ",resultadoMCD	
FinAlgoritmo

//Agregamos una función(ya que retorna valor)
Funcion mcd <- calculoMCD(dividendo,divisor)
	Definir mcd como real
	Definir resto Como Entero
	//Agregamos la condicion principal a cumplir
	si dividendo > divisor Entonces
		resto <- dividendo % divisor
		si resto <> 0 Entonces
			repetir
				resto <- dividendo % divisor
				dividendo <- divisor
				mcd <- divisor
				divisor <- resto
			Mientras Que resto <> 0
		FinSi
	SiNo
		//Si son iguales el MCD es el mismo número
		si divisor = dividendo Entonces
			mcd <- dividendo
		SiNo
			//Un bucle mientras hasta que se cumpla la acción
			Mientras dividendo < divisor Hacer
				Escribir "Ingrese un dividendo mayor al divisor por favor"
				Escribir "Ingrese el primer número: "
				leer dividendo
				Escribir "Ingrese el segundo número: "
				Leer divisor
			FinMientras
		FinSi
	FinSi
FinFuncion
	