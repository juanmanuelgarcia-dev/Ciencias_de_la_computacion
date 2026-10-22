/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.mycompany.tp2;

/**
 *
 * @author danie
 */
//Clase Balanza, hija de maquinaria
public class Balanza extends Maquinaria {
    //Atributos
    private float cantidadPesada;
    private float precioPorKg;
    //Agregacion
    private Producto Producto;
    
    //Getters y Setters
    public float getCantidadPesada() {
        return cantidadPesada;
    }

    public void setCantidadPesada(float cantidadPesada) {    
        this.cantidadPesada = cantidadPesada;
    }

    public float getPrecioPorKg() {
        return precioPorKg;
    }

    public void setPrecioPorKg(float precioPorKg) {    
        this.precioPorKg = precioPorKg;
    }

    public Producto getProducto() {
        return Producto;
    }

    public void setProducto(Producto Producto) {
        this.Producto = Producto;
    }
    
    

    //Constructores
    public Balanza(float cantidadPesada, float precioPorKg, int tamaño, float electricidadConsumida, String color) {
        super(tamaño, electricidadConsumida, color);
        this.cantidadPesada = cantidadPesada;
        this.precioPorKg = precioPorKg;
    }
    

    //Metodos
    public void medir(String tipoProducto){
        System.out.println("El producto " + tipoProducto + " vale " + this.precioPorKg + " por kilo");
    }
    public void pesar(){
        System.out.println("La cantidad del producto pesada fue de " + this.cantidadPesada);
    }
    public void calcularPrecio(){
        System.out.println("La cantidad pesada fue de " + this.cantidadPesada + " y el precio por kg es de " + this.precioPorKg + " del producto " + this.Producto);
    }
    
    //Sobreescritura
    @Override
    public void enseñarInfo(){
        System.out.println("Balanza - Pesado: " + this.cantidadPesada + " Kilogramos - Color: " + getColor());
    }
}
