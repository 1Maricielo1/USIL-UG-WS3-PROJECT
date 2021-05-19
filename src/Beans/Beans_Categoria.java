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
public class Beans_Categoria
{
    private Integer clavecategoria;
    private String nombre;
    
    public Beans_Categoria(Integer clavecategoria, String nombre)
    {
        this.clavecategoria = clavecategoria;
        this.nombre = nombre;
    }
    
    public Beans_Categoria(){}

    public Integer getClavecategoria() {
        return clavecategoria;
    }

    public void setClavecategoria(Integer clavecategoria) {
        this.clavecategoria = clavecategoria;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }
    
    
}
