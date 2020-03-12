
package modelos;

/**
 *
 * @author yohan.puerta
 */
public class Vehiculo {
    private String placa; 
    private String marca;
    private String modelo;
    private String matricula;
    private int ano;
    private int id_tv;

    public Vehiculo() {
    }

    public Vehiculo(String placa, String marca, String modelo, String matricula, int ano, int id_tv) {
        this.placa = placa;
        this.marca = marca;
        this.modelo = modelo;
        this.matricula = matricula;
        this.ano = ano;
        this.id_tv = id_tv;
    }

    public String getPlaca() {
        return placa;
    }

    public void setPlaca(String placa) {
        this.placa = placa;
    }

    public String getMarca() {
        return marca;
    }

    public void setMarca(String marca) {
        this.marca = marca;
    }

    public String getModelo() {
        return modelo;
    }

    public void setModelo(String modelo) {
        this.modelo = modelo;
    }

    public String getMatricula() {
        return matricula;
    }

    public void setMatricula(String matricula) {
        this.matricula = matricula;
    }

    public int getAno() {
        return ano;
    }

    public void setAno(int ano) {
        this.ano = ano;
    }

    public int getId_tv() {
        return id_tv;
    }

    public void setId_tv(int id_tv) {
        this.id_tv = id_tv;
    }
}
