/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.mycompany.tp2;

/**
 *
 * @author danie
 */
//Clase Lista de precios
public class ListaPrecios {
    //Atributos
    private String tipoProducto;
    private float precioProductos;
    private int cantidadPaginas;
    //Agregacion entre el producto y la lista
    private Producto Producto;
    
    //Getters y Setters
    public String getTipoProducto() {
        return tipoProducto;
    }

    public void setTipoProducto(String tipoProducto) {
        this.tipoProducto = tipoProducto;
    }

    public float getPrecioProductos() {
        return precioProductos;
    }

    public void setPrecioProductos(float precioProductos) {
        this.precioProductos = precioProductos;
    }

    public int getCantidadPaginas() {
        return cantidadPaginas;
    }

    public void setCantidadPaginas(int cantidadPaginas) {
        this.cantidadPaginas = cantidadPaginas;
    }

    public Producto getProducto() {
        return Producto;
    }

    public void setProducto(Producto Producto) {
        this.Producto = Producto;
    }
    
    
    
    //Constructores para tipo de productos y precio productos
    public ListaPrecios(String tipoProducto, float precioProductos) {
        this.tipoProducto = tipoProducto;
        this.precioProductos = precioProductos;
        this.Producto = Producto;
    }
    
    //Métodos
    public void mostrarProductos(String nombre) {
        System.out.println("Señor " + nombre + " mire el producto " + this.tipoProducto);
    }
    public void enseñarPrecios(String trabajo){
        System.out.println("Usted que es " + trabajo + " lleve el " + this.tipoProducto + " que su precio es de " + this.precioProductos);
    }
    
    public void ordenarProductos() {
        System.out.println("Puede encontrar el producto " + this.Producto + " en la revista donde estan todos los tipos de producto");
    }
}
