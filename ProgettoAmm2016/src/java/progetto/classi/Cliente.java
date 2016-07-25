/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package progetto.classi;

/**
 *
 * @author Luca
 */
public class Cliente
{
    private int id;
    private String password;
    private String nickname;
    private int acquistati; 
    private Saldo soldi = new Saldo();
    
    public Cliente() {}

    /**
     * @return the soldi
     */
    public int getSoldi() {
        return soldi.getSoldi();
    }

    /**
     * @param soldi the soldi to set
     */
    public void setSoldi(int soldi) {
        this.soldi.setSoldi(soldi);
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

    /**
     * @return the id
     */
    public int getId() {
        return id;
    }

    /**
     * @param id the id to set
     */
    public void setId(int id) {
        this.id = id;
    }
}
