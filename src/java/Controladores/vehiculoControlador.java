/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controladores;

import dao.tipoVehiculoDAO;
import dao.vehiculoDAO;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import modelos.TipoVehiculo;
import modelos.Vehiculo;

/**
 *
 * @author yohan.puerta
 */
public class vehiculoControlador extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        //processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        //processRequest(request, response);
        //Recibir parametros
        String placa = request.getParameter("txtPlacaVeh");
        String marca = request.getParameter("txtMarcaVeh");
        String modelo = request.getParameter("txtModeloVeh");
        String matricula = request.getParameter("txtMatriculaVeh");
        int ano = Integer.parseInt(request.getParameter("txtAnoVeh"));
        int id_tv = Integer.parseInt(request.getParameter("txtTipoVeh"));
        
        //Instanciar modelo
        Vehiculo vehiculo = new Vehiculo();
        vehiculo.setPlaca(placa);
        vehiculo.setMarca(marca);
        vehiculo.setModelo(modelo);
        vehiculo.setMatricula(matricula);
        vehiculo.setAno(ano);
        vehiculo.setId_tv(id_tv);
        
        if(vehiculoDAO.insertVehiculo(vehiculo)){
            request.setAttribute("mensaje", "El vehiculo se registro correctamente.");
        }else{
            request.setAttribute("mensaje", "El vehiculo no pudo ser registrado.");
        }
        
        request.getRequestDispatcher("registrarVehiculo.jsp").forward(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
