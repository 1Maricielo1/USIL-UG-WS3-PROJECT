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
public class Beans_Autor {
    
    private Integer claveautor;
    private String nombre;
    
    public Beans_Autor(Integer claveautor, String nombre)
    {
        this.claveautor = claveautor;
        this.nombre = nombre;
    }
    
    public Beans_Autor(){}

    public Integer getClaveautor() {
        return claveautor;
    }

    public void setClaveautor(Integer claveautor) {
        this.claveautor = claveautor;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }
}
