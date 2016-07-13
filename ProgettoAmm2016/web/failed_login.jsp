<%-- 
    Document   : login.jsp
    Created on : 3-mag-2016, 17.46.49
    Author     : Luca
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        
        <title>Login</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta name="keywords" content="HTML, CSS, PHP, MySQL, AMM">
        <meta name="description" content="Milestone3">
        <meta name="author" content="Luca Stochino">
        <link href="css/style.css" rel="stylesheet" type="text/css" media="screen" />
    </head>
    
    <body>
        <div id="white">
        
            <jsp:include page="partiComuni/header.jsp" />

            <div id="menu">
                <ul>
                    <li><a href="descrizione.jsp">Descrizione</a></li>
                    <li><a href="cliente.jsp">Cliente</a></li>
                    <li><a href="VenditoreServlet">Venditore</a></li>
                </ul>
            </div> 


            <jsp:include page="partiComuni/sidebar.jsp" />

            <div id="corpo">

                <p> Username e/o password errati. Riprova. </p>

                <h1>Accedi</h1>

                <form id="loginform" method="post" action="Login">
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

                <br><br>

            </div>

            <jsp:include page="partiComuni/footer.jsp" />
        </div>
    </body>
</html>
