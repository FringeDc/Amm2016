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
@WebServlet(name = "Vendita", urlPatterns = {"/Vendita"})
public class Vendita extends HttpServlet 
{
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException 
    {
        
        response.setContentType("text/html;charset=UTF-8");
        HttpSession session = request.getSession(true);
        
        if(request.getParameter("Vendi") != null)
        {
            String nome = request.getParameter("Nome");
            String url = request.getParameter("Url");
            String prezzo = (request.getParameter("Prezzo"));
            String quant = request.getParameter("Pezzi");
            String descr = request.getParameter("Descrizione");
            
            if(nome.equals(""))
            {
                request.getRequestDispatcher("venditore.jsp").forward(request, response);
                return;
            }
            
            if(url.equals(""))
            {
                request.getRequestDispatcher("venditore.jsp").forward(request, response);
                return;
            }
            
            if(prezzo.equals(""))
            {
                request.getRequestDispatcher("venditore.jsp").forward(request, response);
                return;
            }
            
            if(quant.equals(""))
            {
                request.getRequestDispatcher("venditore.jsp").forward(request, response);
                return;
            }
            
            Venditore v = (Venditore) session.getAttribute("user");
            
            Articolo a = new Articolo();
            
            a.setNome(nome);
            a.setUrlImage(url);
            a.setPrezzo(Integer.parseInt(prezzo));
            a.setQuantita(Integer.parseInt(quant));
            a.setDescrizione(descr);
            a.setVenditoreId(v.getId());
            
            ArticoloFactory.getInstance().addArticolo(a);
            
            request.getRequestDispatcher("descrizione.jsp?venduto=1").forward(request, response);
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
