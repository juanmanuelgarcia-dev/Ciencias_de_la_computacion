/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.mycompany.tp2;

/**
 *
 * @author danie
 */

//Clase vendedor
public class Vendedor {
    //Atributos
    private String nombre;
    private String oficio;
    private int edad;
    //Asociaciones
    private Local Local;
    private Producto Producto;
    private Cliente Cliente;
    private MetodoPago MetodoPago;
    
    //Getters y Setters

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getOficio() {
        return oficio;
    }

    public void setOficio(String oficio) {
        this.oficio = oficio;
    }

    public int getEdad() {
        return edad;
    }

    public void setEdad(int edad) {
        this.edad = edad;
    }

    public Local getLocal() {
        return Local;
    }

    public void setLocal(Local Local) {
        this.Local = Local;
    }

    public Producto getProducto() {
        return Producto;
    }

    public void setProducto(Producto Producto) {
        this.Producto = Producto;
    }

    public Cliente getCliente() {
        return Cliente;
    }

    public void setCliente(Cliente Cliente) {
        this.Cliente = Cliente;
    }

    public MetodoPago getMetodoPago() {
        return MetodoPago;
    }

    public void setMetodoPago(MetodoPago MetodoPago) {
        this.MetodoPago = MetodoPago;
    }
    

    //Constructores

    public Vendedor(String nombre, String oficio, Local Local, Producto Producto, Cliente Cliente, MetodoPago MetodoPago) {
        this.nombre = nombre;
        this.oficio = oficio;
        this.Local = Local;
        this.Producto = Producto;
        this.Cliente = Cliente;
        this.MetodoPago = MetodoPago;
    }
    
    
    
    //Métodos
    
    //Método original
    public void calcularPrecio(int a,int b){
        System.out.println("El precio total fue de " + a + b);
    }
    
    //Sobrecarga
    public void calcularPrecio(int a,int b,int IVA){
        System.out.println("El precio total más el impuesto IVA es " + (a + b) * IVA);
    }
    
    
    public void ofrecerProducto(String nombreProducto){
        System.out.println("Hola soy " + nombre + " ,quiero ofrecerle el producto " + nombreProducto);
    }
    
    public void cobrarProductos(float precioProductos) {
        System.out.println("Debe abonar la cantidad " + precioProductos + " y si desea pagar con " + this.MetodoPago);
    }
    
    public void finalizarCobro(){
        System.out.println("El vendedor " + this.nombre + " le vendio el producto " + this.Producto + " en el local " + this.Local + " al cliente " + this.Cliente);
    }
}

