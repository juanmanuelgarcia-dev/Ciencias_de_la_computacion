Algoritmo correccion Ponzior
	//La variable lleno se define en el programa principal y también dentro del subproceso, pero el cambio que se hace adentro del subproceso no afecta al programa principal, entonces el bucle nunca termina correctamente.
	
	//Los contadores y el bucle interno están dentro de dos Para anidados donde la variable i nunca se usa, es código que no hace nada.
	
	//El enunciado dice que los contenedores se ubican horizontalmente ocupando posiciones consecutivas, pero el código los coloca de a una celda sin verificar que las celdas sean contiguas
	
	//El barco debería detectar solo que está lleno sin que el operador ingrese un nuevo contenedor, pero el código solo se da cuenta cuando intenta colocar uno y no puede.
	
FinAlgoritmo
