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
                <div id="logout">
                    <a href="Home" name="logout">log-out</a>
                </div>
            </c:otherwise>
        </c:choose>
            
    </div>
    
</header>
