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
public class Cliente extends Utente
{
    private Saldo soldi;
    private int acquistati; 
    
    public Cliente()
    {
        super();
    };

    /**
     * @return the soldi
     */
    public Saldo getSoldi() {
        return soldi;
    }

    /**
     * @param soldi the soldi to set
     */
    public void setSoldi(Saldo soldi) {
        this.soldi = soldi;
    }

    /**
     * @return the acquistati
     */
    public int getAcquistati() {
        return acquistati;
    }

    /**
     * @param acquistati the acquistati to set
     */
    public void setAcquistati(int acquistati) {
        this.acquistati = acquistati;
    }
}
