
package modelo.dto;

public class CategoriaItem {

    private int codigo;
    private String nombre;

    public CategoriaItem(int codigo, String nombre) {
        this.codigo = codigo;
        this.nombre = nombre;
    }
    
    public int getCodigo() {
        return codigo;
    }

    public void setCodigo(int codigo) {
        this.codigo = codigo;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    @Override
    public String toString() {
        return "CategoriaItem{" + "codigo=" + codigo + ", nombre=" + nombre + '}';
    }
    
    
    
}
