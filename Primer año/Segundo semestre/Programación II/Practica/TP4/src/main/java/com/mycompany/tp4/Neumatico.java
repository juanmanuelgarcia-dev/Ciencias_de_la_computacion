/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.mycompany.tp4;

/**
 *
 * @author danie
 */
public class Neumatico {
    private String marca;
    private int stock;

    // Constructor
    public Neumatico(String marca, int stock){
        this.marca = marca;
        //Constructor y validamos excepciones
        if (stock < 0) {
            throw new IllegalArgumentException("El stock no puede ser negativo.");
        }
        this.stock = stock;
    }

    // Setter Y Getters
    public String getMarca() {
        return marca;
    }
    
    public int getStock() {
        return stock;
    }

    public void setMarca(String marca) {
        this.marca = marca;
    }
    
    //Setter validando el stock
    public void setStock(int stock) {
        if (stock < 0) {
            throw new IllegalArgumentException("El stock no puede ser negativo.");
        }
        this.stock = stock;
    }

    public void actualizarStock(int cantidad){
        setStock(getStock() + cantidad);
        System.out.println("La nueva cantidad de stock de la marca " + this.marca + " es " + getStock());
    }

}