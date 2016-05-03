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
public class Venditore extends Utente
{
    private ArrayList<Articolo> prodotti;
    private int venduti;
    
    public Venditore()
    {
        super();
    }
    
    /**
     * @return the prodotti
     */
    public ArrayList<Articolo> getProdotti() {
        return prodotti;
    }

    /**
     * @param prodotti the prodotti to set
     */
    public void setProdotti() {
        for(Articolo a : ArticoloFactory.getInstance().getListaArticoli())
        {
            if(a.getVenditore().equals(this.getNickname()))
                this.prodotti.add(a);
        }
    }

    /**
     * @return the venduti
     */
    public int getVenduti() {
        return venduti;
    }

    /**
     * @param venduti the venduti to set
     */
    public void setVenduti(int venduti) {
        this.venduti = venduti;
    }
}
