/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.mycompany.tp2;

/**
 *
 * @author danie
 */
//Clase Heladera, hija de maquinaria
public class Heladera extends Maquinaria {
    //Atributos
    private int cantidadAlmacenamiento;
    //Agregacion
    private Producto Producto;
    

    
    //Constructores
    public Heladera(int tamaño, float electricidadConsumida, String color, int cantidadAlmacenamiento) {
        super(tamaño, electricidadConsumida, color); // Se los pasa a la clase Padre
        this.cantidadAlmacenamiento = cantidadAlmacenamiento;
    }
    
    
    //Metodos
    public void enseñarProductos(String tipoProducto) {
        System.out.println("En esa heladera que puede almacenar hasta " + this.cantidadAlmacenamiento + " litros, podes ver los productos " + tipoProducto);
    }
    
    public void consumoElectrico(float electricidadConsumida){
        System.out.println("Esta heladera consume " + electricidadConsumida + " Watt");
    }
    
    public void refrigerar(float electricidadConsumida){
        System.out.println("Nuestra heladera puede refrigerar hasta " + this.cantidadAlmacenamiento + " Litros, ocupando " + electricidadConsumida + " Watts");
    }
    
    @Override
    public void enseñarInfo() {
    System.out.println("Heladera - Almacenamiento: " + cantidadAlmacenamiento + " Litros - Color: " + getColor());
}
    
    //Getters y Setters
    public int getCantidadAlmacenamiento() {
        return cantidadAlmacenamiento;
    }

    public void setCantidadAlmacenamiento(int cantidadAlmacenamiento) {
        this.cantidadAlmacenamiento = cantidadAlmacenamiento;
    }

    public Producto getProducto() {
        return Producto;
    }

    public void setProducto(Producto Producto) {
        this.Producto = Producto;
    }
    

}
