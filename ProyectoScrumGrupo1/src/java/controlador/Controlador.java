/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controlador;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import modelo.Persona;
import modeloDAO.PersonaDAO;

/**
 *
 * @author Asus
 */
public class Controlador extends HttpServlet {

    private final String PATH_LISTAR = "view/listar.jsp";
    private final String PATH_EDITAR = "view/editar.jsp";
    private final String PATH_AGREGAR = "view/add.jsp";
    private Persona nuevaPersona = new Persona();
    private PersonaDAO nuevaPersonaDAO = new PersonaDAO();
    int codigoPersona;
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
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet Controlador</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet Controlador at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
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
        
        String acceso = "";
        String action = request.getParameter("accion");
        
        if(action.equalsIgnoreCase("listar")){
            acceso = PATH_LISTAR;
        } else if (action.equalsIgnoreCase("add")){
            acceso = PATH_AGREGAR;
        } else if (action.equalsIgnoreCase("Agregar")){
            String DPI = request.getParameter("txtDPI");
            String nombrePersona = request.getParameter("txtNombre");
            
            nuevaPersona.setDPI(DPI);
            nuevaPersona.setNombrePersona(nombrePersona);
            
            nuevaPersonaDAO.add(nuevaPersona);
            acceso = PATH_LISTAR;
        } else if (action.equalsIgnoreCase("editar")){
            request.setAttribute("codPer",request.getParameter("codigoPersona"));
            acceso = PATH_EDITAR;
        } else if (action.equalsIgnoreCase("Actualizar")){
            codigoPersona = Integer.parseInt(request.getParameter("txtCodigoPersona"));
            String dpi = request.getParameter("txtDPI");
            String nombres = request.getParameter("txtNombre");
            nuevaPersona.setCodigoPersona(codigoPersona);
            nuevaPersona.setDPI(dpi);
            nuevaPersona.setNombrePersona(nombres);
            nuevaPersonaDAO.edit(nuevaPersona);
            acceso = PATH_LISTAR;
        } else if (action.equalsIgnoreCase("eliminar")){
            codigoPersona = Integer.parseInt(request.getParameter("codigoPersona"));
            nuevaPersona.setCodigoPersona(codigoPersona);
            nuevaPersonaDAO.eliminar(codigoPersona);
            acceso = PATH_LISTAR;
        }
        
        RequestDispatcher vista = request.getRequestDispatcher(acceso);
        vista.forward(request, response);
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
        processRequest(request, response);
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
