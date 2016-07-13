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
public class ClienteFactory 
{
    private static ClienteFactory singleton;
    
    public static ClienteFactory getInstance() 
    {
        if (singleton == null) {
            singleton = new ClienteFactory();
        }
        return singleton;
    }
    
    private ArrayList<Cliente> clientiList = new ArrayList<Cliente>();
    
    private ClienteFactory()
    {
        Cliente cliente_1 = new Cliente();
        cliente_1.setNickname("Peach");
        cliente_1.setPassword("111");
        cliente_1.setAcquistati(5);
        cliente_1.setSoldi(new Saldo(102.49));
        clientiList.add(cliente_1);
        
        Cliente cliente_2 = new Cliente();
        cliente_2.setNickname("Wario");
        cliente_2.setPassword("222");
        cliente_2.setAcquistati(4);
        cliente_2.setSoldi(new Saldo(74.03));
        clientiList.add(cliente_2);
        
        Cliente cliente_3 = new Cliente();
        cliente_3.setNickname("Bowser");
        cliente_3.setPassword("333");
        cliente_3.setAcquistati(3);
        cliente_3.setSoldi(new Saldo(0.05));
        clientiList.add(cliente_3);
        
        Cliente cliente_4 = new Cliente();
        cliente_4.setNickname("Luigi");
        cliente_4.setPassword("444");
        cliente_4.setAcquistati(15);
        cliente_4.setSoldi(new Saldo(36.00));
        clientiList.add(cliente_4);
        
        Cliente cliente_5 = new Cliente();
        cliente_5.setNickname("Toad");
        cliente_5.setPassword("555");
        cliente_5.setAcquistati(1);
        cliente_5.setSoldi(new Saldo(91.89));
        clientiList.add(cliente_5);       
    }
    
    public ArrayList<Cliente> getListaClienti()
    {
        return clientiList;
    }
    
    public Cliente getCliente(String nickname, String psw)
    {
        for(Cliente c : clientiList)
        {
            if(c.getNickname().equals(nickname) && c.getPassword().equals(psw))
                return c;
        }
        return null;
    }     
}
