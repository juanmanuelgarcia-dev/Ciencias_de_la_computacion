/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.mycompany.tp4;

/**
 *
 * @author danie
 */
import java.util.Date;

public class Venta {
    private Date fecha;
    //Representa la asociacion con cliente
    private Cliente cliente;
    //Representa la asociacion con empleado
    private Empleados empleado;
    //Representa la asociacion con neumatico
    private Neumatico producto;
    private Factura factura;

    //Constructor
    public Venta(Date fecha, Cliente cliente,Empleados empleado,double totalVenta,Neumatico producto) {
        this.fecha = fecha;
        this.cliente = cliente;
        this.empleado = empleado;
        this.producto = producto;
        //Instanciamos el objeto dentro del constructor
        //Uno de los parámetros es un objeto de la instancia venta por eso le pasamos this
        this.factura = new Factura(totalVenta,this);
    }
    
    //Getters and Setters
    public Date getFecha() {
        return fecha;
    }

    public void setFecha(Date fecha) {
        this.fecha = fecha;
    }

    public Cliente getCliente() {
        return cliente;
    }

    public void setCliente(Cliente cliente) {
        this.cliente = cliente;
    }

    public Empleados getEmpleado() {
        return empleado;
    }

    public void setEmpleado(Empleados empleado) {
        this.empleado = empleado;
    }

    public Factura getFactura() {
        return factura;
    }

    public void setFactura(Factura factura) {
        this.factura = factura;
    }

    public Neumatico getProducto() {
        return producto;
    }

    public void setProducto(Neumatico producto) {
        this.producto = producto;
    }

    public void registrarVenta(){
        System.out.println("El cliente " + this.cliente.getDni() + " compró " + this.producto + " al empleado " + this.empleado.getId());
    }
    
    //Sobrecarga
    public void registrarVenta(double total){
        System.out.println("El cliente " + this.cliente.getDni() + " compró " + this.producto.getMarca() + " al empleado " + this.empleado.getId() + " por el total de " + total);
    }
}
