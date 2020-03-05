/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package modelos;

import java.io.Serializable;

/**
 *
 * @author 503
 */
public class TipoVehiculo implements Serializable{
    
    private int idTv;
    private String nomTv;

    public TipoVehiculo(int idTv, String nomTv) {
        this.idTv = idTv;
        this.nomTv = nomTv;
    }

    public TipoVehiculo() {
    }

    public int getIdTv() {
        return idTv;
    }

    public void setIdTv(int idTv) {
        this.idTv = idTv;
    }

    public String getNomTv() {
        return nomTv;
    }

    public void setNomTv(String nomTv) {
        this.nomTv = nomTv;
    }
}
