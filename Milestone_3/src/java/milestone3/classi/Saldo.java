/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package milestone3.classi;

/**
 *
 * @author Luca
 */
public class Saldo 
{
    private double soldi;
    
    public Saldo(double prezzo)
    {
        this.soldi = prezzo;
    }

    /**
     * @return the soldi
     */
    public double getSoldi() {
        return soldi;
    }

    /**
     * @param soldi the soldi to set
     */
    public void setSoldi(double soldi) {
        this.soldi = soldi;
    }
}
