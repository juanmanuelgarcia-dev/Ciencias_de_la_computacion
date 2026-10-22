/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.mycompany.tp2;
import java.util.Date;
/**
 *
 * @author danie
 */

//Clase cliente
public class Cliente {
    //Atributos
    private String nombre;
    private Date fechaNacimiento;
    private String trabajo;
    //Asociaciones del cliente
    private Producto Producto;
    private ListaPrecios ListaPrecios;
    private MetodoPago MetodoPago;
    private Local Local;
    //Getters y Setters

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public Date getFechaNacimiento() {
        return fechaNacimiento;
    }

    public void setFechaNacimiento(Date fechaNacimiento) {
        this.fechaNacimiento = fechaNacimiento;
    }

    public String getTrabajo() {
        return trabajo;
    }

    public void setTrabajo(String trabajo) {
        this.trabajo = trabajo;
    }

    public Producto getPorducto() {
        return Producto;
    }

    public void setPorducto(Producto Porducto) {
        this.Producto = Porducto;
    }

    public ListaPrecios getListaPrecios() {
        return ListaPrecios;
    }

    public void setListaPrecios(ListaPrecios ListaPrecios) {
        this.ListaPrecios = ListaPrecios;
    }

    public MetodoPago getMetodoPago() {
        return MetodoPago;
    }

    public void setMetodoPago(MetodoPago MetodoPago) {
        this.MetodoPago = MetodoPago;
    }
    

    //Constructor para nombre
    public Cliente(String nombre, Producto Porducto, ListaPrecios ListaPrecios, MetodoPago MetodoPago) {    
        this.nombre = nombre;
        this.Producto = Porducto;
        this.ListaPrecios = ListaPrecios;
        this.MetodoPago = MetodoPago;
    }

    //Métodos
    public void buscarProducts() {
        System.out.println("El cliente " + this.nombre + " esta buscando el producto " + this.Producto);
        //System.out.println("El cliente nació en " + fechaNacimiento);
    }
    public void pagarProductos(float precioProductos) {
        System.out.println("El cliente " + this.nombre + " quiero abonar la totalidad de " + precioProductos);
        //System.out.println("El trabajo del cliente es " + trabajo);
    }
    public void revisarPrecios(float precioProductos) {
            System.out.println(" El cliente" + this.nombre + "esta revisando el precio del producto " + precioProductos);
    }
    
    public void completarCompra(){
        System.out.println("El cliente " + this.nombre + " quiere comprar el producto " + this.Producto + " que vio en la " + this.ListaPrecios + " con el metodo de pago " + this.MetodoPago);
    }
}
