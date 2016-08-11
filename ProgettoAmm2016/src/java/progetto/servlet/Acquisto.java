/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package progetto.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import progetto.classi.Articolo;
import progetto.classi.Cliente;
import progetto.classi.Venditore;
import progetto.classi.VenditoreFactory;
import progetto.classi.ArticoloFactory;
import progetto.classi.ClienteFactory;

/**
 *
 * @author Luca
 */
@WebServlet(name = "Acquisto", urlPatterns = {"/Acquisto"})
public class Acquisto extends HttpServlet 
{
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        response.setContentType("text/html;charset=UTF-8");
        HttpSession session = request.getSession(true);
        
        if(request.getParameter("Acquista") != null)
        {
            int num_prodotti = (int) Integer.parseInt(request.getParameter("Quantita"));
            
            Cliente clie = (Cliente) session.getAttribute("user");
            Venditore vend = (Venditore) session.getAttribute("articoloVend");
            Articolo articolo = (Articolo) session.getAttribute("articolo");
            
            int spesa = num_prodotti*articolo.getPrezzo();
            
            if(clie.getSoldi() <= spesa)
            {
                request.getRequestDispatcher("denied.jsp").forward(request, response);
            }
            else
            {                
                ClienteFactory.getInstance().updateCliente(
                        clie.getAcquistati() + num_prodotti, clie.getSoldi() - spesa, clie.getId());

                VenditoreFactory.getInstance().updateVenditore(
                        vend.getVenduti() + num_prodotti, vend.getSoldi() + spesa, vend.getId());
                
                clie.setSoldi(clie.getSoldi() - spesa);
                clie.setAcquistati(clie.getAcquistati() + num_prodotti);
                
                int new_quantita = articolo.getQuantita() - num_prodotti;
                                    
                if(new_quantita > 0)
                {
                    ArticoloFactory.getInstance().updateArticolo(new_quantita, articolo.getId());
                }
                else
                {
                    ArticoloFactory.getInstance().deleteArticolo(articolo.getId());
                }
                
                session.setAttribute("user", clie);
                session.setAttribute("arrayarticoli", ArticoloFactory.getInstance().getListaArticoli());
                
                request.getRequestDispatcher("cliente.jsp").forward(request, response);
            }
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
        processRequest(request, response);
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
