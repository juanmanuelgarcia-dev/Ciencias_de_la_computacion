/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.mycompany.tp2;

/**
 *
 * @author danie
 */
//Clase producto
public class Producto {
    //Atributos
    private String tipoProducto;
    private int tamanoProducto;
    private float precio;
    //Planteamos la asociacion
    private VehiculoTraslado VehiculoTraslado;
    
   //Getters y Setters
    public String getTipoProducto() {
        return tipoProducto;
    }

    public void setTipoProducto(String tipoProducto) {
        this.tipoProducto = tipoProducto;
    }

    public int getTamanoProducto() {
        return tamanoProducto;
    }

    public void setTamanoProducto(int tamanoProducto) {
        this.tamanoProducto = tamanoProducto;
    }

    public float getPrecio() {
        return precio;
    }

    public void setPrecio(float precio) {
        this.precio = precio;
    }

    //Constructores

    public Producto(String tipoProducto, int tamanoProducto, float precio, VehiculoTraslado VehiculoTraslado) {
        this.tipoProducto = tipoProducto;
        this.tamanoProducto = tamanoProducto;
        this.precio = precio;
        this.VehiculoTraslado = VehiculoTraslado;
    }
    
    //Metodos
    public void atraerCompradores(){
        System.out.println("Compre este producto por el bajo precio de " + this.precio);
    }
    
    public void mostrarPrecio(String nombre){
        System.out.println("Buen dia señor " + nombre + " este " + this.tipoProducto + " cuesta "+ this.precio);
    }
    
    public void enseñarCantidad(){
        System.out.println("Este " + this.tipoProducto + " tiene una capacidad de " + this.tamanoProducto + " gramos");
    }
    
    //Metodo con asociacion del vehiculo de traslado
    public void infoViaje(){
        System.out.println("El producto " + this.tipoProducto + " es llevado en el vehivulo " + this.VehiculoTraslado);
    }
}
