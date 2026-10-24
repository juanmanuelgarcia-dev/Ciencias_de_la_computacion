/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.mycompany.tp4;

/**
 *
 * @author danie
 */
import java.util.Iterator;
import java.util.ArrayList;

public class CasaNeumaticos {
    //Defino los atributos
    private String nombre;
    //Arraylist que representa la agregacion con empleados
    private ArrayList<Empleados> listaEmpleados = new ArrayList<Empleados>();
    //Arraylist para representar la asociación con los clientes(1 a muchis)
    private ArrayList<Cliente> listaClientes = new ArrayList<Cliente>();
    //ArrayList que representa la asociación con proveedor
    private ArrayList<Proveedor> listaProveedores = new ArrayList<Proveedor>();
    
    //Constructor
    public CasaNeumaticos(String nombre) {
        this.nombre = nombre;
    }
    
    //Getters y Setters
    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public ArrayList<Empleados> getListaEmpleados() {
        return listaEmpleados;
    }

    public void setListaEmpleados(ArrayList<Empleados> listaEmpleados) {
        this.listaEmpleados = listaEmpleados;
    }

    public ArrayList<Cliente> getListaClientes() {
        return listaClientes;
    }

    public void setListaClientes(ArrayList<Cliente> listaClientes) {
        this.listaClientes = listaClientes;
    }

    public ArrayList<Proveedor> getListaProveedores() {
        return listaProveedores;
    }

    public void setListaProveedores(ArrayList<Proveedor> listaProveedores) {
        this.listaProveedores = listaProveedores;
    }

    
    
    //Métodos
    public void agregarEmpleado(Empleados empleado){
        this.listaEmpleados.add(empleado);
        System.out.println("El empleado fue agregado con éxito");
        
    }
    
    public void eliminarEmpleado(int id) throws EmpleadoNoEncontradoException{
        //Definimos el iterator y la variable encontrado para buscar el empleado en la arraylist
        Iterator<Empleados> listaEmpleadosIterator = this.listaEmpleados.iterator();
        boolean encontrado = false;
        
        while (listaEmpleadosIterator.hasNext()){
            Empleados empleadoBuscado = listaEmpleadosIterator.next();
            
            if (empleadoBuscado.getId() == id){
                listaEmpleadosIterator.remove();
                encontrado = true;
                System.out.println("El empleado " + empleadoBuscado.getId() + " fue removido con éxito");
                break; //Salimos del bucle
            }
            if (encontrado == false){
                throw new EmpleadoNoEncontradoException("El empleado NO se encuentra en la lista de empleados");
            }
        }
        
    }
    
    //Metodos agregado por nosotros para mostrar asociación con los clientes
    public void agregarClientes(Cliente cliente){
        this.listaClientes.add(cliente);
        System.out.println("El nuevo cliente fue agregado");
    }
    
    public void eliminarCliente(int dni)throws ClienteNoEncontradoException{
        Iterator<Cliente> listaClientesIterator = this.listaClientes.iterator();
        boolean encontrado = false;
        
        while (listaClientesIterator.hasNext()){
            Cliente clienteBuscado = listaClientesIterator.next();
            
            if (clienteBuscado.getDni() == dni){
                listaClientesIterator.remove();
                encontrado = true;
                System.out.println("El cliente " + clienteBuscado.getDni() + " fue removido exitosamente");
                break;
            }
            if (encontrado == false){
                throw new ClienteNoEncontradoException("El cliente NO se encuentra en la lista");
            }
        }
    }
    
    //Metodos para representar la asociación con el proveedor
    public void agregarProveedor(Proveedor proveedor){
        this.listaProveedores.add(proveedor);
        System.out.println("El proveedor " + proveedor.getRazonSocial() + " fue agregado");
    }
    
    public void eliminarProveedor(String razonSocial) throws ProveedorNoEncontradoException{
        Iterator<Proveedor> listaProveedoresIterator = this.listaProveedores.iterator();
        boolean encontrado = false;
        
        while (listaProveedoresIterator.hasNext()){
            Proveedor proveedorBuscado = listaProveedoresIterator.next();
            
            if (proveedorBuscado.getRazonSocial().equals(razonSocial)){ //Tuve que usar equal para igualar cadenas
                listaProveedoresIterator.remove();
                encontrado = true;
                System.out.println("El proveedor " + proveedorBuscado.getRazonSocial() + " fue removido con exito");
                break;
            }
            if (encontrado == false){
                throw new ProveedorNoEncontradoException("El proveedor NO se encuentra en la lista");
            }
        }

    }
    
    //Hice este metodo para demostrar la relacion entre neumaticos y casa neumaticos
    public void registrarNeumatico(Neumatico neumatico){
        System.out.println("El neumatico marca " + neumatico.getMarca() + " cuenta con la cantidad de stock " + neumatico.getStock());
    }
}
