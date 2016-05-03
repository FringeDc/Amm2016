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
public class VenditoreFactory
{
    private static VenditoreFactory singleton;
    
    public static VenditoreFactory getInstance() 
    {
        if (singleton == null) {
            singleton = new VenditoreFactory();
        }
        return singleton;
    }
    
    private ArrayList<Venditore> venditoriList = new ArrayList<Venditore>();
    
    private VenditoreFactory()
    {
        Venditore venditore_a = new Venditore();
        venditore_a.setNickname("Alessio");
        venditore_a.setPassword("aaa");
        venditore_a.setProdotti();
        venditore_a.setVenduti(5);
        venditoriList.add(venditore_a);
        
        Venditore venditore_b = new Venditore();
        venditore_b.setNickname("Davide");
        venditore_b.setPassword("bbb");
        venditore_b.setProdotti();
        venditore_b.setVenduti(7);
        venditoriList.add(venditore_b);
        
        Venditore venditore_c = new Venditore();
        venditore_c.setNickname("Matteo");
        venditore_c.setPassword("ccc");
        venditore_c.setProdotti();
        venditore_c.setVenduti(18);
        venditoriList.add(venditore_c);
        
        Venditore venditore_d = new Venditore();
        venditore_d.setNickname("Emanuel");
        venditore_d.setPassword("ddd");
        venditore_d.setProdotti();
        venditore_d.setVenduti(3);
        venditoriList.add(venditore_d);
        
        Venditore venditore_e = new Venditore();
        venditore_e.setNickname("Corrado");
        venditore_e.setPassword("eee");
        venditore_e.setProdotti();
        venditore_e.setVenduti(1);
        venditoriList.add(venditore_e);
    }
    
    public ArrayList<Venditore> getListaVenditori()
    {
        return venditoriList;
    }
    
    public Venditore getVenditore(String nickname, String psw)
    {
        for(Venditore v : venditoriList)
        {
            if(v.getNickname().equals(nickname) && v.getPassword().equals(psw))
                return v;
        }
        return null;
    }   
}
