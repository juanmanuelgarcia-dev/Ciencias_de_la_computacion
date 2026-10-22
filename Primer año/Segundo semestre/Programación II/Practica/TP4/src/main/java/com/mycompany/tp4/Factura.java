/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.mycompany.tp4;

/**
 *
 * @author danie
 */
public class Factura {
    private double total;
    private Venta tipoVenta;

    public Factura(double total, Venta tipoVenta) {
        this.total = total;
        this.tipoVenta = tipoVenta;
    }
    
    public double getTotal() {
        return total;
    }

    public void setTotal(float total) {
        this.total = total;
    }

    public Venta getVenta() {
        return tipoVenta;
    }

    public void setVenta(Venta tipoVenta) {
        this.tipoVenta = tipoVenta;
    }
    
    public void calcularFactura(){
        System.out.println("El total de la facura es " + this.total);
    }
    
    public void calcularTotal(double ingreso){
        this.total = total + ingreso;
        System.out.println("El nuevo total es " + this.total);
    }
    
    //Sobrecarga
    public double calcularTotal(double ingreso, int descuento){
        double totalConDescuento = ingreso - (ingreso * (descuento / 100));
        this.total = totalConDescuento;
        
        return totalConDescuento;
    }
    
    public void imprimirFactura(){
        System.out.println("En el dia " + this.tipoVenta.getFecha() + 
                " el cliente " + this.tipoVenta.getCliente().getNombre() + 
                " realizo la compra de " + this.tipoVenta.getProducto().getMarca() + 
                " por el total de " + this.total);
    }
}
