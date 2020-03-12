/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controladores;

import dao.conductorDAO;
import dao.vehiculoDAO;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import modelos.Conductor;
import modelos.Vehiculo;

/**
 *
 * @author yohan.puerta
 */
public class conductorControlador extends HttpServlet {

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
        String nombre = request.getParameter("txtNombreCond");
        String tipo_licencia = request.getParameter("txtTipoLicenciaCond");
        String id_vehiculo  = request.getParameter("txtIdVehiculoCond");
        int id_tipo_conductor = Integer.parseInt(request.getParameter("txtTipoConductorCond"));
        
        //Instanciar modelo
        Conductor conductor = new Conductor();
        conductor.setNombre(nombre);
        conductor.setTipo_licencia(tipo_licencia);
        conductor.setId_vehiculo(id_vehiculo);
        conductor.setId_conductor(id_tipo_conductor);
        
        if(conductorDAO.insertConductor(conductor)){
            request.setAttribute("mensaje", "El conductor se registro correctamente.");
        }else{
            request.setAttribute("mensaje", "El conductor no pudo ser registrado.");
        }
        
        request.getRequestDispatcher("registrarConductor.jsp").forward(request, response);
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
