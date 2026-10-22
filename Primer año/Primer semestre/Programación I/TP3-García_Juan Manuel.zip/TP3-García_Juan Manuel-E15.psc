Algoritmo rectangulo
	definir X0,Y0,X_min,Y_min,X_max,Y_max Como Real
	Escribir "Ingrese la coordenada X a representar: "
	leer X0
	Escribir "Ingrese la coordenada Y a representar: "
	leer Y0
	Escribir "Ingrese la coordenada X1 del rectángulo: "
	leer X_min
	Escribir "Ingrese la coordenada Y1 del rectángulo: "
	leer Y_min
	Escribir "Ingrese la coordenada X2 del rectángulo: "
	leer X_max
	Escribir "Ingrese la coordenada Y2 del rectángulo: "
	leer Y_max
	si X_min <= X0 y X0 <= X_max y Y_min <= Y0 y Y0 <= Y_max Entonces
		Mostrar "Su coordenada se encuentra dentro del rectángulos"
	SiNo
		Mostrar "Su coordenada se encuentra fuera del rectángulo"
	FinSi
FinAlgoritmo
