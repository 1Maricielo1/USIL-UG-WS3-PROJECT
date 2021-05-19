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
public class Beans_Socio {
    
    private Integer clavesocio;
    private String nombre;
    private String direccion;
    private String telefono;
    // discutir creacion de tabla membresia para llave foranea
    
    public Beans_Socio(Integer clavesocio, String nombre, String direccion, String telefono)
    {
        this.clavesocio = clavesocio;
        this.nombre = nombre;
        this.direccion = direccion;
        this.telefono = telefono;
    }

    public Integer getClavesocio() {
        return clavesocio;
    }

    public void setClavesocio(Integer clavesocio) {
        this.clavesocio = clavesocio;
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
