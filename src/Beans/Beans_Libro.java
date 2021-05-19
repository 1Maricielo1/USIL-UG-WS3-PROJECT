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
public class Beans_Libro
{
    
    private Integer clavelibro;
    private String titulo;
    private String idioma;
    private Integer stock;
    private String formato;
    private Integer claveeditorial;
    private Integer clavecategoria;
    private Integer claveautor;
    // discutir creacion de tabla formato e idioma para llaves foraneas
    
    
    public Beans_Libro (Integer clavelibro, String titulo, String idioma, Integer stock, String formato, Integer claveeditorial, Integer clavecategoria, Integer claveautor)
    {
        this.clavelibro = clavelibro;
        this.titulo = titulo;
        this.idioma = idioma;
        this.stock = stock;
        this.formato = formato;
        this.claveeditorial = claveeditorial;
        this.clavecategoria = clavecategoria;
        this.claveautor = claveautor;
    }
    
    public Beans_Libro(){}

    public Integer getClavelibro() {
        return clavelibro;
    }

    public void setClavelibro(Integer clavelibro) {
        this.clavelibro = clavelibro;
    }

    public String getTitulo() {
        return titulo;
    }

    public void setTitulo(String titulo) {
        this.titulo = titulo;
    }

    public String getIdioma() {
        return idioma;
    }

    public void setIdioma(String idioma) {
        this.idioma = idioma;
    }

    public Integer getStock() {
        return stock;
    }

    public void setStock(Integer stock) {
        this.stock = stock;
    }

    public String getFormato() {
        return formato;
    }

    public void setFormato(String formato) {
        this.formato = formato;
    }

    public Integer getClaveeditorial() {
        return claveeditorial;
    }

    public void setClaveeditorial(Integer claveeditorial) {
        this.claveeditorial = claveeditorial;
    }

    public Integer getClavecategoria() {
        return clavecategoria;
    }

    public void setClavecategoria(Integer clavecategoria) {
        this.clavecategoria = clavecategoria;
    }

    public Integer getClaveautor() {
        return claveautor;
    }

    public void setClaveautor(Integer claveautor) {
        this.claveautor = claveautor;
    }

    
}
