/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Beans;

/**
 *
 * @author Insaw
 */
public class Beans_Editorial {
    
    private Integer claveeditorial;
    private String nombre;
    private String direccion;
    private String telefono;
    
    public Beans_Editorial(Integer claveeditorial, String nombre, String direccion, String telefono)
    {
        this.claveeditorial = claveeditorial;
        this.nombre = nombre;
        this.direccion = direccion;
        this.telefono = telefono;
    }
    
    public Beans_Editorial(){}

    public Integer getClaveeditorial() {
        return claveeditorial;
    }

    public void setClaveeditorial(Integer claveeditorial) {
        this.claveeditorial = claveeditorial;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getDireccion() {
        return direccion;
    }

    public void setDireccion(String direccion) {
        this.direccion = direccion;
    }

    public String getTelefono() {
        return telefono;
    }

    public void setTelefono(String telefono) {
        this.telefono = telefono;
    }
}
