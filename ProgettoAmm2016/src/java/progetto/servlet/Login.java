package progetto.servlet;

import progetto.classi.VenditoreFactory;
import progetto.classi.ClienteFactory;
import progetto.classi.Venditore;
import progetto.classi.Cliente;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet(name = "Login", urlPatterns = {"/Login"})
public class Login extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response) 
            throws ServletException, IOException 
    {
        response.setContentType("text/html;charset=UTF-8");
        HttpSession session = request.getSession(true);
        
        try
        {           
            if(session.getAttribute("clienteLoggedIn").equals(true))
            {
                request.getRequestDispatcher("cliente.jsp").forward(request, response);     
                return;
            }
            if(session.getAttribute("venditoreLoggedIn").equals(true))
            {
                request.getRequestDispatcher("venditore.jsp").forward(request, response);
                return;
            }
        } catch (NullPointerException e) {}
        
        if(request.getParameter("Submit") != null)
        {
            session.setAttribute("venditoreLoggedIn", false);
            session.setAttribute("clienteLoggedIn", false);
            session.setAttribute("loggedIn", false);
        
            // Preleva i dati inviati
            String username = request.getParameter("Username");
            String password = request.getParameter("Password");
                        
            for(Cliente c : ClienteFactory.getInstance().getListaClienti())
            {
                if(c.getNickname().equals(username) && c.getPassword().equals(password))
                {
                    session.setAttribute("loggedIn", true); 
                    session.setAttribute("clienteLoggedIn", true);  
                    request.getRequestDispatcher("cliente.jsp").forward(request, response);   
                    return;
                }
            }
                        
            for(Venditore v : VenditoreFactory.getInstance().getListaVenditori())
            {
                if(v.getNickname().equals(username) && v.getPassword().equals(password))
                {
                    session.setAttribute("loggedIn", true); 
                    session.setAttribute("venditoreLoggedIn", true);
                    request.getRequestDispatcher("venditore.jsp").forward(request, response); 
                    return;
                }
            }
            request.getRequestDispatcher("failed_login.jsp").forward(request, response);
        }
        request.getRequestDispatcher("login.jsp").forward(request, response);
    } //Fine
    
    
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
