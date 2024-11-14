/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package modelo.dto;

/**
 *
 * @author juand
 */
public class Locales {
    private int CodLocal;
    private String Nombre;
    private String Direccion;
    
    public Locales(){
        
    }
    
    public Locales(int CodLocal){
        this.CodLocal = CodLocal;
    }
    
    public Locales(int CodLocal, String Nombre, String Direccion){
        this.CodLocal = CodLocal;
        this.Nombre = Nombre;
        this.Direccion = Direccion;
    };
    
    public int getCodLocal() {
        return CodLocal;
    }

    public void setCodLocal(int CodLocal) {
        this.CodLocal = CodLocal;
    }

    public String getNombre() {
        return Nombre;
    }

    public void setNombre(String Nombre) {
        this.Nombre = Nombre;
    }

    public String getDireccion() {
        return Direccion;
    }

    public void setDireccion(String Direccion) {
        this.Direccion = Direccion;
    }
    
    @Override
    public String toString() {
        return getNombre();
    }
}
