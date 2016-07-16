<%-- 
    Document   : cliente
    Created on : 3-mag-2016, 17.51.47
    Author     : Luca
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Cliente</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        
        <meta name="keywords" content="HTML, CSS, PHP, MySQL, AMM">
        <meta name="description" content="Milestone1">
        <meta name="author" content="Luca Stochino">
        <link href="css/style.css" rel="stylesheet" type="text/css" media="screen" />
    </head>
    
    <body>
        <div id="body2">

            <jsp:include page="partiComuni/header.jsp" />

            <div id="menu">
                <ul>
                    <li><a href="Login">Login</a></li>
                    <li><a href="descrizione.jsp">Descrizione</a></li>
                </ul>
            </div> 

            <jsp:include page="partiComuni/sidebar.jsp" />

            <div id="corpo">

            <h1>Oggetti in vendita</h1>

                <table>           
                    <tr>
                        <th>Nome dell'oggetto</th>
                        <th>Foto descrittiva</th>
                        <th>Pezzi disponibili</th>
                        <th>Prezzo</th>
                        <th>Link</th>
                    </tr>
                    <tr>
                        <td>Fungo</td>
                        <td><img src="objects/fungo1.png"
                     alt ='fungo normale'
                     title = "fungo1"
                     width = "50" height= "50" >
                    </td>
                        <td>3 pz.</td>
                        <td>9.99 €</td>
                        <td> <a href='cliente.html'> Link all'articolo </a></td>
                    </tr>
                    <tr>
                        <td>Fungo Gigante</td>
                        <td><img src="objects/fungo2.png"
                     alt ='fungo gigante'
                     title = "fungo2"
                     width = "50" height= "50" >
                    </td>
                        <td>1 pz.</td>
                        <td>8.99 €</td>
                        <td> <a href='cliente.html'> Link all'articolo </a></td>
                    </tr>
                    <tr>
                        <td>Fungo Coin</td>
                        <td><img src="objects/fungo3.png"
                     alt ='fungo coin'
                     title = "fungo3"
                     width = "50" height= "50" >
                    </td>
                        <td>3 pz.</td>
                        <td>11.99 €</td>
                        <td> <a href='cliente.html'> Link all'articolo </a></td>
                    </tr>
                    <tr>
                        <td>Fungo 1UP</td>
                        <td><img src="objects/fungo4.png"
                     alt ='fungo unoap'
                     title = "fungo4"
                     width = "50" height= "50" >
                    </td>
                        <td>10 pz.</td>
                        <td>9.99 €</td>
                        <td> <a href='cliente.html'> Link all'articolo </a></td>
                    </tr>
                    <tr>
                        <td>Fungo Ape</td>
                        <td><img src="objects/fungo5.png"
                     alt ='fungo ape'
                     title = "fungo5"
                     width = "50" height= "50" >
                    </td>
                        <td>5 pz.</td>
                        <td>19.99 €</td>
                        <td> <a href='cliente.html'> Link all'articolo </a></td>
                    </tr>
                </table>            
            </div>

            <br><br>

            <jsp:include page="partiComuni/footer.jsp" />
        
        </div>
    </body>
</html>
