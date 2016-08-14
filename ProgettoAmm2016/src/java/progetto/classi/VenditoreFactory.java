package progetto.classi;

import java.sql.*;
import java.util.ArrayList;

/**
 *
 * @author Luca
 */
public class VenditoreFactory
{
    private static VenditoreFactory singleton;
    String connectionString;
    
    private VenditoreFactory() { }
    
    public static VenditoreFactory getInstance() 
    {
        if (singleton == null) {
            singleton = new VenditoreFactory();
        }
        return singleton;
    }
    
    private ArrayList<Venditore> venditoriList = new ArrayList<Venditore>();
    
    public ArrayList<Venditore> getListaVenditori()
    {
        return venditoriList;
    }
    
    public Venditore getVenditore(String nickname, String psw)
    {
        try 
        {
            // path, username, password
            Connection conn = DriverManager.getConnection(connectionString, "fringedc", "1234");
            // Query
            String query = "select * from venditori where nickname = ? and password = ?";
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
                Venditore current = new Venditore();
                current.setId(res.getInt("id"));
                current.setNickname(res.getString("nickname"));
                current.setPassword(res.getString("password"));
                current.setVenduti(res.getInt("venduti"));
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
    
    public Venditore getVenditoreById(int id)
    {
        try 
        {
            // path, username, password
            Connection conn = DriverManager.getConnection(connectionString, "fringedc", "1234");
            // Query
            String query = "select * from venditori where id = ?";
            // Prepared Statement
            PreparedStatement stmt = conn.prepareStatement(query);
            // Si associano i valori
            stmt.setInt(1, id);
            // Esecuzione query
            ResultSet res = stmt.executeQuery();
            
             // ciclo sulle righe restituite
            if(res.next()) 
            {
                Venditore current = new Venditore();
                current.setId(res.getInt("id"));
                current.setNickname(res.getString("nickname"));
                current.setPassword(res.getString("password"));
                current.setVenduti(res.getInt("venduti"));
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
    
    public void updateVenditore(int new_venduti, int new_soldi, int id)
    {
        try 
        {
            // path, username, password      
            Connection conn = DriverManager.getConnection(connectionString, "fringedc", "1234");
                    // Query
            String query1 = "update venditori set venduti = ?, soldi = ? where id = ?";
            
            conn.setAutoCommit(false);
            // Prepared Statement
            PreparedStatement stmt = conn.prepareStatement(query1);
            
            // Si associano i valori
            stmt.setInt(1, new_venduti);
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
