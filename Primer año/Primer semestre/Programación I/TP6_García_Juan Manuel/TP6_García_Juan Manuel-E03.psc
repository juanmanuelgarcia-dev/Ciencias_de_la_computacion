Algoritmo factorial
	definir primerNumero, segundoNumero,combinatoria como entero
	escribir "Ingrese el primer Número: "
	leer primerNumero
	escribir "Ingrese el segundo Número: "
	leer segundoNumero
	Mostrar "El primer factorial es: ",primerFactorial(primerNumero)
	Mostrar "El segundo factorial es: ",segundoFactorial(segundoNumero)
	Mostrar "La diferencia de factorial es: ",Diferencia(primerNumero,segundoNumero)
	combinatoria <- primerFactorial(primerNumero) / (segundoFactorial(segundoNumero) * Diferencia(primerNumero,segundoNumero))
	Mostrar "La combinatoria es: ",combinatoria
FinAlgoritmo

//Funcion para el primer número
Funcion FactorialNum <- primerFactorial(primerNumero)
	Definir FactorialNum,i Como Entero
	si primerNumero = 0 Entonces
		FactorialNum <- 1
	SiNo
		FactorialNum <- 1
		para i<- 1 Hasta primerNumero Hacer
			FactorialNum <- FactorialNum * i
		FinPara
	FinSi
FinFuncion

//Funcion para el segundo número
Funcion FactorialNum2 <- segundoFactorial(segundoNumero)
	Definir FactorialNum2,j Como Entero
	si segundoNumero = 0 Entonces
		FactorialNum2 <- 1
	SiNo
		FactorialNum2 <- 1
		para j <- 1 Hasta segundoNumero Hacer
			FactorialNum2 <- j * FactorialNum2
		FinPara
	FinSi
FinFuncion

//Funcion para la resta de ambos
funcion factorialDiferencia <- Diferencia(primerNumero,segundoNumero)
	Definir factorialDiferencia, k,diferenciaEntreAmbos Como Entero
	si primerNumero > segundoNumero Entonces
		diferenciaEntreAmbos <- primerNumero - segundoNumero
		factorialDiferencia <- 1
		para k <- 1 Hasta diferenciaEntreAmbos Hacer
			factorialDiferencia <- factorialDiferencia * k
		FinPara
	SiNo
		si primerNumero < segundoNumero
			diferenciaEntreAmbos <- segundoNumero - primerNumero
			factorialDiferencia <- 1
			para k <- 1 Hasta diferenciaEntreAmbos Hacer
				factorialDiferencia <- factorialDiferencia * k
			FinPara
		SiNo
			factorialDiferencia <- 1
		FinSi
	FinSi
FinFuncion
	