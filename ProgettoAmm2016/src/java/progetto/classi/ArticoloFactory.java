/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package progetto.classi;

import java.util.ArrayList;

/**
 *
 * @author Luca
 */
public class ArticoloFactory 
{
    private static ArticoloFactory singleton;
    
    public static ArticoloFactory getInstance() 
    {
        if (singleton == null) {
            singleton = new ArticoloFactory();
        }
        return singleton;
    }
    
    private ArrayList<Articolo> articoliList = new ArrayList<Articolo>();
    
    private ArticoloFactory() 
    {
        Articolo articolo_1 = new Articolo();
        articolo_1.setNome("Fungo");
        articolo_1.setPrezzo(9.99);
        articolo_1.setQuantita(3);
        articoliList.add(articolo_1);
        
        Articolo articolo_2 = new Articolo();
        articolo_2.setNome("Fungo Gigante");
        articolo_2.setPrezzo(8.99);
        articolo_2.setQuantita(1);
        articoliList.add(articolo_2);
        
        Articolo articolo_3 = new Articolo();
        articolo_3.setNome("Fungo Coin");
        articolo_3.setPrezzo(11.99);
        articolo_3.setQuantita(3);
        articoliList.add(articolo_3);
        
        Articolo articolo_4 = new Articolo();
        articolo_4.setNome("Fungo 1UP");
        articolo_4.setPrezzo(9.99);
        articolo_4.setQuantita(10);
        articoliList.add(articolo_4);
        
        Articolo articolo_5 = new Articolo();
        articolo_5.setNome("Fungo Ape");
        articolo_5.setPrezzo(19.99);
        articolo_5.setQuantita(5);
        articoliList.add(articolo_5);        
    }
    
    public ArrayList<Articolo> getListaArticoli()
    {
        return articoliList;
    }
    
    public Articolo getArticoloById(int id)
    {
        for(Articolo a : articoliList)
        {
            if(a.getId() == id)
                return a;
        }
        return null;
    } 
    
    public Articolo getArticoloByName(String name)
    {
        for(Articolo a : articoliList)
        {
            if(a.getNome().equals(name))
                return a;
        }
        return null;
    } 
    
    public ArrayList<Articolo> getArticoloByCategoria(String categoria)
    {
        ArrayList<Articolo> cernita = new ArrayList<Articolo>();
        
        for(Articolo a : articoliList)
        {
            if(a.getCategoria().equals(categoria))
                cernita.add(a);
        }
        
        if(!cernita.isEmpty())
        {
            return cernita;
        }
        
        return null;
    } 
}
