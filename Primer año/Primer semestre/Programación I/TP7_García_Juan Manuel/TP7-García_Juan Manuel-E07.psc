Algoritmo Ejercicio7
    Definir arreglo Como Caracter
    Dimension arreglo(20)
    Definir frase Como Cadena
    Definir caracter Como Caracter
    Definir posicion, i, largo Como Entero
    
    //Inicializar todo el arreglo en blanco
    Para i <- 0 Hasta 19 Con Paso 1 Hacer
        arreglo(i) <- " "
    FinPara
    
    //pedir frase y copiar carácter a carácter
    Escribir "Ingrese una frase (máximo 20 caracteres):"
    Leer frase
    
    largo <- Longitud(frase)
    Si largo > 20 Entonces
        largo <- 20
    FinSi
    
    Para i <- 1 Hasta largo Con Paso 1 Hacer
        arreglo[i] <- Subcadena(frase, i, i)
    FinPara
    
    
    //insertar un carácter en una posición
    Escribir "Ingrese un carácter para insertar:"
    Leer caracter
    Escribir "Ingrese la posición donde desea insertarlo (1-20):"
    Leer posicion
    
    Si posicion < 1 O posicion > 20 Entonces
        Escribir "Posición inválida."
    SiNo
        Si arreglo[posicion] = ' ' Entonces
            arreglo[posicion] <- caracter
            Escribir "Carácter insertado. Contenido del arreglo:"
            Para i <- 0 Hasta 19 Con Paso 1 Hacer
                Escribir Sin Saltar arreglo(i)
            FinPara
            Escribir ""
        SiNo
            Escribir "No hay lugar en esa posición, está ocupada."
        FinSi
    FinSi
    
FinAlgoritmo