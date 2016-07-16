<%-- 
    Document   : header
    Created on : 4-mag-2016, 20.48.29
    Author     : Luca
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<header>
    
    <c:set var="loggedIn" scope="session" value="false"/> 
    
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
        
        <p>${loggedIn}</p>
        
        <c:if test="${loggedIn}">

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
            
        </c:if>
        
    </div>
    

</header>
