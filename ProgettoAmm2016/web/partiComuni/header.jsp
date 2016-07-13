<%-- 
    Document   : header
    Created on : 4-mag-2016, 20.48.29
    Author     : Luca
--%>

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
        
        <form id="headerloginform" method="post" action="Login">

            <label for="Username">Username</label>
            <input type="text" name ="Username" id="Username" /> <br>

            <label for="Password">Password</label>
            <input type="password" name ="Password" id="Password" /> <br> 

            <input class="cl2" type="submit" value="Log in" name="Submit">
            <input class="cl2" type="reset" value="Cancella">
        </form>

    </div>
    

</header>
