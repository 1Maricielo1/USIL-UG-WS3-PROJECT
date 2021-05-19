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
public class Beans_Prestamo
{
    
    private Integer claveprestamo;
    private String fecha_prestamo;
    private String fecha_devolucion;
    private Integer clavesocio;
    private Integer clavelibro;
    
    public Beans_Prestamo(Integer claveprestamo, String fecha_prestamo, String fecha_devolucion, Integer clavesocio, Integer clavelibro)
    {
        this.claveprestamo = claveprestamo;
        this.fecha_prestamo = fecha_prestamo;
        this.fecha_devolucion = fecha_devolucion;
        this.clavesocio = clavesocio;
        this.clavelibro = clavelibro;
    }
    
    public Beans_Prestamo(){}

    public Integer getClaveprestamo() {
        return claveprestamo;
    }

    public void setClaveprestamo(Integer claveprestamo) {
        this.claveprestamo = claveprestamo;
    }

    public String getFecha_prestamo() {
        return fecha_prestamo;
    }

    public void setFecha_prestamo(String fecha_prestamo) {
        this.fecha_prestamo = fecha_prestamo;
    }

    public String getFecha_devolucion() {
        return fecha_devolucion;
    }

    public void setFecha_devolucion(String fecha_devolucion) {
        this.fecha_devolucion = fecha_devolucion;
    }

    public Integer getClavesocio() {
        return clavesocio;
    }

    public void setClavesocio(Integer clavesocio) {
        this.clavesocio = clavesocio;
    }

    public Integer getClavelibro() {
        return clavelibro;
    }

    public void setClavelibro(Integer clavelibro) {
        this.clavelibro = clavelibro;
    }

    
}
