/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package progetto.classi;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

/**
 *
 * @author Luca
 */
public class ArticoloFactory 
{
    private static ArticoloFactory singleton;
    String connectionString;
    
    public static ArticoloFactory getInstance() 
    {
        if (singleton == null) {
            singleton = new ArticoloFactory();
        }
        return singleton;
    }
    
    private ArrayList<Articolo> articoliList = new ArrayList<Articolo>();
    
    private ArticoloFactory() { }
    
    public ArrayList<Articolo> getListaArticoli()
    {
        try 
        {
            // path, username, password
            Connection conn = DriverManager.getConnection(connectionString, "fringedc", "1234");
            // Query
            String query = "select id, nome, prezzo, quantita, url from articoli";
            // Prepared Statement
            PreparedStatement stmt = conn.prepareStatement(query);
            // Esecuzione query
            ResultSet res = stmt.executeQuery();
            
            ArrayList<Articolo> listaArticoli = new ArrayList<>();
            
            // ciclo sulle righe restituite
            while(res.next()) 
            {
                Articolo current = new Articolo();
                current.setId(res.getInt("id"));
                current.setNome(res.getString("nome"));
                current.setPrezzo(res.getInt("prezzo"));
                current.setQuantita(res.getInt("quantita"));
                current.setUrlImage(res.getString("url"));
                listaArticoli.add(current);
            }
            
            stmt.close();
            conn.close();
            
            return listaArticoli;
        } 
        catch (SQLException e) 
        { }
        
        return null;
    }
    
    public ArrayList<Articolo> filtraListaArticoli(String text)
    {
        if(text.equals(""))
        {
            return getListaArticoli();
        }
        
        //Metto la stringa di testo in minuscolo, così da poter effettuare una ricerca case insensitive
        text = text.toLowerCase();
        
        ArrayList<Articolo> listaArticoli = new ArrayList<>();        
        
        try 
        {
            // path, username, password
            Connection conn = DriverManager.getConnection(connectionString, "fringedc", "1234");

            //"LOWER()" serve a porre i campi trovati al minuscolo per poter effettuare una ricerca case insensitive
            String query = "select id, nome, prezzo, quantita, url, descrizione from articoli " +
                        "where LOWER(nome) LIKE ? OR LOWER(descrizione) LIKE ?";
            
            // Prepared Statement
            PreparedStatement stmt = conn.prepareStatement(query);
            
            // Esecuzione query
            text = "%"+text+"%";
            stmt.setString(1, text);
            stmt.setString(2, text);
            ResultSet res = stmt.executeQuery();
            
            // ciclo sulle righe restituite
            while(res.next()) 
            {
                Articolo current = new Articolo();
                current.setId(res.getInt("id"));
                current.setNome(res.getString("nome"));
                current.setPrezzo(res.getInt("prezzo"));
                current.setQuantita(res.getInt("quantita"));
                current.setUrlImage(res.getString("url"));
                current.setDescrizione(res.getString("descrizione"));
                
                listaArticoli.add(current);
            }
            
            stmt.close();
            conn.close();
        } 
        catch (SQLException e) 
        { }
        
        return listaArticoli;
    }
    
    public Articolo getArticoloById(int id)
    {
        try 
        {
            // path, username, password
            Connection conn = DriverManager.getConnection(connectionString, "fringedc", "1234");
            // Query
            String query = "select * from articoli where id = ?";
            // Prepared Statement
            PreparedStatement stmt = conn.prepareStatement(query);
            // Si associano i valori
            stmt.setInt(1, id);
            // Esecuzione query
            ResultSet res = stmt.executeQuery();
            
            Articolo current = new Articolo();
            
            // ciclo sulle righe restituite
            if(res.next()) 
            {
                current.setId(res.getInt("id"));
                current.setNome(res.getString("nome"));
                current.setPrezzo(res.getInt("prezzo"));
                current.setQuantita(res.getInt("quantita"));
                current.setUrlImage(res.getString("url"));
                current.setDescrizione(res.getString("descrizione"));
                current.setVenditoreId(res.getInt("venditoreid"));
            }
            
            stmt.close();
            conn.close();
            
            return current;
        } 
        catch (SQLException e) 
        { }
        
        return null;
    }
       
    public void updateArticolo(int new_quantita, int id)
    {        
        try 
        {
            // path, username, password      
            Connection conn = DriverManager.getConnection(connectionString, "fringedc", "1234");
            // Query
            String query = "update articoli set quantita = ? where id = ?";
            
            // Prepared Statement
            PreparedStatement stmt = conn.prepareStatement(query);
            // Si associano i valori
            stmt.setInt(1, new_quantita);
            stmt.setInt(2, id);

            // Esecuzione query
            stmt.executeUpdate();
            stmt.close();
            
            conn.close();
            
        } 
        catch (SQLException e) { } 
    }
    
    public void deleteArticolo(int id)
    {
        try 
        {
            // path, username, password      
            Connection conn = DriverManager.getConnection(connectionString, "fringedc", "1234");
                    // Query
            String query = "delete from articoli where id = ?";
            // Prepared Statement
            PreparedStatement stmt = conn.prepareStatement(query);
            // Si associano i valori
            stmt.setInt(1, id);
            // Esecuzione query
            stmt.executeUpdate();
            stmt.close();
        } 
        catch (SQLException e) { } 
    }
    
    public void addArticolo(Articolo a)
    {
        try 
        {
            // path, username, password      
            Connection conn = DriverManager.getConnection(connectionString, "fringedc", "1234");
                    // Query
            String query = "insert into articoli values (default, ?, ?, ?, ?, ?, ?)";
          
            // Prepared Statement
            PreparedStatement stmt = conn.prepareStatement(query);
            
            // Si associano i valori
            stmt.setString(1, a.getNome());
            stmt.setInt(2, a.getPrezzo());
            stmt.setInt(3, a.getQuantita());
            stmt.setString(4, a.getUrlImage());
            stmt.setString(5, a.getDescrizione());
            stmt.setInt(6, a.getVenditoreId());
            
            // Esecuzione query
            stmt.executeUpdate();
            stmt.close();
        } 
        catch (SQLException e) { }
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
