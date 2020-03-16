package modelos;

import java.io.Serializable;

/**
 *
 * @author Yohan Puerta
 */
public class Ruta implements Serializable {
    private int id_ruta; 
    private String estacion;
    private String id_vehiculo;

    public Ruta() {
    }

    public Ruta(int id_ruta, String estacion, String id_vehiculo) {
        this.id_ruta = id_ruta;
        this.estacion = estacion;
        this.id_vehiculo = id_vehiculo;
    }

    public int getId_ruta() {
        return id_ruta;
    }

    public void setId_ruta(int id_ruta) {
        this.id_ruta = id_ruta;
    }

    public String getEstacion() {
        return estacion;
    }

    public void setEstacion(String estacion) {
        this.estacion = estacion;
    }

    public String getId_vehiculo() {
        return id_vehiculo;
    }

    public void setId_vehiculo(String id_vehiculo) {
        this.id_vehiculo = id_vehiculo;
    }
}
