package Modelo;

public class autor {
    private int idautor;
    private String nombre;
    private String f_nacimiento;
    private String estado;
    
    public autor(){
    }

    public autor(int idautor, String nombre, String f_nacimiento, String estado) {
        this.idautor = idautor;
        this.nombre = nombre;
        this.f_nacimiento = f_nacimiento;
        this.estado = estado;
    }

    public int getIdautor() {
        return idautor;
    }

    public void setIdautor(int idautor) {
        this.idautor = idautor;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getF_nacimiento() {
        return f_nacimiento;
    }

    public void setF_nacimiento(String f_nacimiento) {
        this.f_nacimiento = f_nacimiento;
    }

    public String getEstado() {
        return estado;
    }

    public void setEstado(String estado) {
        this.estado = estado;
    }
    
}
    
