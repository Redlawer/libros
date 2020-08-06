package Modelo;

public class libro {
    public int idlibro;
    public String titulo;
    public int cantidad;
    public Double precio;
    public String estado;   
    public int idautor;   
    public int ideditorial;   
    public int idpais;   

    public libro(int idlibro, String titulo, int cantidad, Double precio, String estado, int idautor, int ideditorial, int idpais) {
        this.idlibro = idlibro;
        this.titulo = titulo;
        this.cantidad = cantidad;
        this.precio = precio;
        this.estado = estado;
        this.idautor = idautor;
        this.ideditorial = ideditorial;
        this.idpais = idpais;
    }

    public int getIdlibro() {
        return idlibro;
    }

    public void setIdlibro(int idlibro) {
        this.idlibro = idlibro;
    }

    public String getTitulo() {
        return titulo;
    }

    public void setTitulo(String titulo) {
        this.titulo = titulo;
    }

    public int getCantidad() {
        return cantidad;
    }

    public void setCantidad(int cantidad) {
        this.cantidad = cantidad;
    }

    public Double getPrecio() {
        return precio;
    }

    public void setPrecio(Double precio) {
        this.precio = precio;
    }

    public String getEstado() {
        return estado;
    }

    public void setEstado(String estado) {
        this.estado = estado;
    }

    public int getIdautor() {
        return idautor;
    }

    public void setIdautor(int idautor) {
        this.idautor = idautor;
    }

    public int getIdeditorial() {
        return ideditorial;
    }

    public void setIdeditorial(int ideditorial) {
        this.ideditorial = ideditorial;
    }

    public int getIdpais() {
        return idpais;
    }

    public void setIdpais(int idpais) {
        this.idpais = idpais;
    }
    
}
