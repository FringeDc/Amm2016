/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package milestone3.classi;

import java.util.ArrayList;

/**
 *
 * @author Luca
 */
public class UtenteFactory {
    // Attributi
    private static UtenteFactory singleton;
    public static UtenteFactory getInstance() {
        if (singleton == null) {
            singleton = new UtenteFactory();
        }
        return singleton;
    }
    // Lista Materie
    private ArrayList<Utente> listaVenditori = new ArrayList<Utente>();
    // Lista Professori
    private ArrayList<Utente> listaClienti = new ArrayList<Utente>();
    
    /* Costruttore */
    private UtenteFactory() 
    {
        listaVenditori.addAll(VenditoreFactory.getInstance().getListaVenditori());
        listaClienti.addAll(ClienteFactory.getInstance().getListaClienti());
    }
    
    /* Metodi */
    public ArrayList<Utente> getListaVenditori()
    {
        return listaVenditori;
    }
    
    public ArrayList<Utente> getListaClienti()
    {
        return listaClienti;
    }
    
    public ArrayList<Utente> getListaUtenti() 
    {
        ArrayList<Utente> listaUtenti = new ArrayList<Utente>();
        
        listaUtenti.addAll(listaVenditori);
        listaUtenti.addAll(listaClienti);
        
        return listaUtenti;
    }
}
