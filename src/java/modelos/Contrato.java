package modelos;

import java.io.Serializable;

/**
 *
 * @author Yohan Puerta
 */
public class Contrato implements Serializable{
    private int id_contrato;
    private int id_conductor;
    private String id_vehiculo;

    public Contrato() {
    }

    public Contrato(int id_contrato, int id_conductor, String id_vehiculo) {
        this.id_contrato = id_contrato;
        this.id_conductor = id_conductor;
        this.id_vehiculo = id_vehiculo;
    }

    public int getId_contrato() {
        return id_contrato;
    }

    public void setId_contrato(int id_contrato) {
        this.id_contrato = id_contrato;
    }

    public int getId_conductor() {
        return id_conductor;
    }

    public void setId_conductor(int id_conductor) {
        this.id_conductor = id_conductor;
    }

    public String getId_vehiculo() {
        return id_vehiculo;
    }

    public void setId_vehiculo(String id_vehiculo) {
        this.id_vehiculo = id_vehiculo;
    }
}
