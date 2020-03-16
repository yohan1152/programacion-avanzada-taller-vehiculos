package modelos;

import java.io.Serializable;

/**
 *
 * @author Yohan Puerta
 */
public class TipoConductor implements Serializable{
    
    private int id_tc;
    private String nombre;

    public TipoConductor() {
    }

    public TipoConductor(int id_tc, String nombre) {
        this.id_tc = id_tc;
        this.nombre = nombre;
    }

    public int getId_tc() {
        return id_tc;
    }

    public void setId_tc(int id_tc) {
        this.id_tc = id_tc;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }
}
