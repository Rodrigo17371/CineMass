/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package modelo.dto;

/**
 *
 * @author ztomz
 */
public class Suggestions {
    private int idsugerencia;
    private String Nombre;
    private String Correo;
    private String Asunto;
    private String Contenido;

    public Suggestions() {
    }

    public Suggestions(int idsugerencia, String Nombre, String Correo, String Asunto, String Contenido) {
        this.idsugerencia = idsugerencia;
        this.Nombre = Nombre;
        this.Correo = Correo;
        this.Asunto = Asunto;
        this.Contenido = Contenido;
    }


    public int getIdsugerencia() {
        return idsugerencia;
    }

    public void setIdsugerencia(int idsugerencia) {
        this.idsugerencia = idsugerencia;
    }

    public String getAsunto() {
        return Asunto;
    }

    public void setAsunto(String Asunto) {
        this.Asunto = Asunto;
    }

    public String getContenido() {
        return Contenido;
    }

    public String getNombre() {
        return Nombre;
    }

    public void setNombre(String Nombre) {
        this.Nombre = Nombre;
    }

    public String getCorreo() {
        return Correo;
    }

    public void setCorreo(String Correo) {
        this.Correo = Correo;
    }

    public void setContenido(String Contenido) {
        this.Contenido = Contenido;
    }


}
