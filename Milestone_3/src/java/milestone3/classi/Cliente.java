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
public class Cliente
{
    private Saldo soldi;
    private int acquistati; 
    private String password;
    private String nickname;
    
    public Cliente() {}

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

    /**
     * @return the password
     */
    public String getPassword() {
        return password;
    }

    /**
     * @param password the password to set
     */
    public void setPassword(String password) {
        this.password = password;
    }

    /**
     * @return the nickname
     */
    public String getNickname() {
        return nickname;
    }

    /**
     * @param nickname the nickname to set
     */
    public void setNickname(String nickname) {
        this.nickname = nickname;
    }
}
