package progetto.servlet;

import progetto.classi.VenditoreFactory;
import progetto.classi.ClienteFactory;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import progetto.classi.ArticoloFactory;

@WebServlet(name = "Login", urlPatterns = {"/Login"},  loadOnStartup = 0)

public class Login extends HttpServlet 
{
    private static final String JDBC_DRIVER = "org.apache.derby.jdbc.EmbeddedDriver";
    private static final String DB_CLEAN_PATH = "../../web/WEB-INF/db/ammdb";
    private static final String DB_BUILD_PATH = "WEB-INF/db/ammdb";
    
    @Override 
    public void init()
    {
        String dbConnection = "jdbc:derby:" + this.getServletContext().getRealPath("/").replace("\\", "/") + DB_BUILD_PATH;
        try 
        {
            Class.forName(JDBC_DRIVER);
        } catch (ClassNotFoundException ex) 
        {
            Logger.getLogger(Login.class.getName()).log(Level.SEVERE, null, ex);
        }
       
        VenditoreFactory.getInstance().setConnectionString(dbConnection);
        ClienteFactory.getInstance().setConnectionString(dbConnection);
        ArticoloFactory.getInstance().setConnectionString(dbConnection);
    }
    
    protected void processRequest(HttpServletRequest request, HttpServletResponse response) 
            throws ServletException, IOException 
    {
        HttpSession session = request.getSession(true);
        
        session.setAttribute("arrayarticoli", ArticoloFactory.getInstance().getListaArticoli());
        
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
        
        if(request.getParameter("Submit") != null)
        {        
            // Preleva i dati inviati
            String username = request.getParameter("Username");
            String password = request.getParameter("Password");
            
            
            if(VenditoreFactory.getInstance().getVenditore(username, password) != null)
            {
                session.setAttribute("user", VenditoreFactory.getInstance().getVenditore(username, password));
                session.setAttribute("loggedIn", true); 
                session.setAttribute("venditoreLoggedIn", true);
                request.getRequestDispatcher("venditore.jsp").forward(request, response);
            }
            else
            {
                if(ClienteFactory.getInstance().getCliente(username, password) != null)
                {
                    session.setAttribute("user", ClienteFactory.getInstance().getCliente(username, password));
                    session.setAttribute("loggedIn", true); 
                    session.setAttribute("clienteLoggedIn", true);  
                    request.getRequestDispatcher("cliente.jsp").forward(request, response); 
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
