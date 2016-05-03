<%-- 
    Document   : login_form
    Created on : 3-mag-2016, 17.30.03
    Author     : Luca
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <form method="post" action="Login">
        <p>

        <label for="Username">Username</label>
        <input type="text" name ="Username" id="Username" /> <br> <br>

        </p>
        <p>

        <label for="Password">Password</label>
        <input type="password" name ="Password" id="Password" /> <br> <br>

        </p>

        <br>

        <input class="cl1" type="submit" value="Invia" name="Submit">
        <input class="cl1" type="reset" value="Cancella">  
    </form>
</html>
