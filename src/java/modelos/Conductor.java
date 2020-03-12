
package modelos;

/**
 *
 * @author yohan.puerta
 */
public class Conductor {
    private int id_conductor;
    private String nombre;
    private String tipo_licencia;
    private String id_vehiculo;
    private int tipo_conductor;

    public Conductor() {
    }

    public Conductor(int id_conductor, String nombre, String tipo_licencia, String id_vehiculo, int tipo_conductor) {
        this.id_conductor = id_conductor;
        this.nombre = nombre;
        this.tipo_licencia = tipo_licencia;
        this.id_vehiculo = id_vehiculo;
        this.tipo_conductor = tipo_conductor;
    }

    public int getId_conductor() {
        return id_conductor;
    }

    public void setId_conductor(int id_conductor) {
        this.id_conductor = id_conductor;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getTipo_licencia() {
        return tipo_licencia;
    }

    public void setTipo_licencia(String tipo_licencia) {
        this.tipo_licencia = tipo_licencia;
    }

    public String getId_vehiculo() {
        return id_vehiculo;
    }

    public void setId_vehiculo(String id_vehiculo) {
        this.id_vehiculo = id_vehiculo;
    }

    public int getTipo_conductor() {
        return tipo_conductor;
    }

    public void setTipo_conductor(int tipo_conductor) {
        this.tipo_conductor = tipo_conductor;
    }
}
