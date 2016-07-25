<%-- 
    Document   : header
    Created on : 4-mag-2016, 20.48.29
    Author     : Luca
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<header>
    
    <div id="header">
        
        <img src= "drawable/headimg.png"
            alt = "FUNGHI!"
            id="img_titolo"
            title = "img_titolo"
            width = "263" height= "150">
            
        <img src= "drawable/logo.png"
            alt = "Super Mario Bros."
            id="logo_titolo"
            title = "logo"
            width = "291" height= "140">
        
        <c:choose>
            <c:when test="${!loggedIn}">
                <form id="headloginform" method="post" action="Login">
                    <p>
                    <label for="Username">Username</label>
                    <input type="text" name ="Username" id="Username" />
                    </p>

                    <p>
                    <label for="Password">Password</label>
                    <input type="password" name ="Password" id="Password" />
                    </p>

                    <input class="cl1" type="submit" value="Invia" name="Submit">
                    <input class="cl1" type="reset" value="Cancella">
                </form>
            </c:when>
                
            <c:otherwise>
                <div id="headlogoutform">
                    <p><b>Benvenuto ${user.nickname}!</b></p>
                    
                    <c:if test="${user.class.name == 'progetto.classi.Venditore'}">
                        <p><b>Tipo utente: </b>Venditore</p>
                    </c:if>
                    
                    <c:if test="${user.class.name == 'progetto.classi.Cliente'}">
                        <p><b>Tipo utente: </b>Cliente</p>
                    </c:if>
                        
                    <p><b>Monete: </b>${user.getSoldi()} coin</p>
                    
                    <c:if test="${user.class.name == 'progetto.classi.Venditore'}">
                        <p><b>Venduti: </b>${user.venduti} articoli</p>
                    </c:if>
                    
                    <c:if test="${user.class.name == 'progetto.classi.Cliente'}">
                        <p><b>Acquistati: </b>${user.acquistati} articoli</p>
                    </c:if>

                    <div id="headlogoutsubdiv"> 
                        <a href="Home">
                            <img border="0" 
                                 alt="Logout" 
                                 src="drawable/logout.png" 
                                 width="24" height="29"></a>                        
                    </div>
                </div>
            </c:otherwise>
        </c:choose>
            
    </div>
    
</header>
