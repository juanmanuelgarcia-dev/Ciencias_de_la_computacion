Algoritmo Base_de_datos
	definir contraseñaIngresada, contraseñaCorrecta, intentos Como Entero
	Escribir "Ingrese su contraseña para acceder al servidor: "
	leer contraseñaIngresada
	contraseñaCorrecta <- 4321
	intentos <- 0
	si contraseñaIngresada = contraseñaCorrecta Entonces
		Mostrar "Su contraseña es correcta, puede ingresar"
	SiNo
	repetir
		intentos <- intentos + 1
		Mostrar "La contraseña es incorrecta"
		Mostrar "Usted lleva ",intentos," intentos"
		Escribir "Ingrese su contraseña para acceder al servidor: "
		leer contraseñaIngresada
	Mientras Que contraseñaIngresada <> contraseñaCorrecta
	FinSi
FinAlgoritmo