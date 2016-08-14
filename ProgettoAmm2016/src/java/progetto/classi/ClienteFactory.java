package progetto.classi;

import java.sql.*;
import java.util.ArrayList;

/**
 *
 * @author Luca
 */
public class ClienteFactory 
{
    private static ClienteFactory singleton;
    protected String connectionString;
    
    private ClienteFactory() { }
    
    public static ClienteFactory getInstance() 
    {
        if (singleton == null) {
            singleton = new ClienteFactory();
        }
        return singleton;
    }
    
    private ArrayList<Cliente> clientiList = new ArrayList<Cliente>();
       
    public ArrayList<Cliente> getListaClienti()
    {
        return clientiList;
    }
    
    public Cliente getCliente(String nickname, String psw)
    {
        try 
        {
            // path, username, password      
            Connection conn = DriverManager.getConnection(connectionString, "fringedc", "1234");
            // Query
            String query = "select * from clienti where nickname = ? and password = ?";
            // Prepared Statement
            PreparedStatement stmt = conn.prepareStatement(query);
            // Si associano i valori
            stmt.setString(1, nickname);
            stmt.setString(2, psw);
            // Esecuzione query
            ResultSet res = stmt.executeQuery();
            
             // ciclo sulle righe restituite
            if(res.next()) 
            {
                Cliente current = new Cliente();
                current.setId(res.getInt("id"));
                current.setNickname(res.getString("nickname"));
                current.setPassword(res.getString("password"));
                current.setAcquistati(res.getInt("acquisti"));
                current.setSoldi(res.getInt("soldi"));
                
                stmt.close();
                conn.close();
                
                return current;
            }   
            stmt.close();
            conn.close();
        } 
        catch (SQLException e) { }
        
        return null;        
    }
    
    public void updateCliente(int new_acquistati, int new_soldi, int id)
    {
        try 
        {
            // path, username, password      
            Connection conn = DriverManager.getConnection(connectionString, "fringedc", "1234");
            // Query
            String query = "update clienti set acquisti = ? , soldi = ? where id = ?";
            // Prepared Statement
            conn.setAutoCommit(true);
            
            PreparedStatement stmt = conn.prepareStatement(query);
            
            // Si associano i valori
            stmt.setInt(1, new_acquistati);
            stmt.setInt(2, new_soldi);
            stmt.setInt(3, id);
            
            // Esecuzione query
            int ctrl = stmt.executeUpdate();
            
            if(ctrl != 1)
            {
                conn.rollback();
            }
            else
            {
                conn.commit();  
            }
            
            conn.setAutoCommit(true);
             
            stmt.close();
            conn.close();
        } 
        catch (SQLException e) 
        { }  
    }
    
    public void setConnectionString(String s)
    {
	this.connectionString = s;
    }
    
    public String getConnectionString()
    {
            return this.connectionString;
    } 
}
