<%-- 
    Document   : venditore
    Created on : 3-mag-2016, 17.51.04
    Author     : Luca
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Venditore</title>
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
                    <li><a href="descrizione.jsp">Home</a></li>
                    <li><p>Cliente</p></li>
                    <li><p class="current">Venditore</p></li>
                    <li><a href="Login">Login</a></li>
                </ul>
            </div> 


            <jsp:include page="partiComuni/sidebar.jsp" />

            <div id="corpo">
                <h1>Inserisci le caratteristiche di un nuovo oggetto</h1>

                <form>

                    <p>

                    <label for="Nome">Nome dell'oggetto</label>
                    <input type="text" name="Nome" id="Nome" /> <br> <br>

                    </p>
                    <p>

                    <label for="Url">URL dell'oggetto</label>
                    <input type="url" name ="Url" id="Url" /> <br> <br>

                    </p>
                    <p>

                    <label for="Prezzo">Prezzo dell'oggetto</label>
                    <input type="number" name ="Prezzo" id="Prezzo" /> <br> <br>

                    </p>
                    <p>

                    <label for="Pezzo">Pezzi disponibili</label> 
                    <input type="number" name ="Pezzi" id="Pezzo" /> <br> <br>

                    </p>
                    <p>

                    <label for="Descrizione">Descrizione dell'oggetto</label>
                    <textarea name="Descrizione" id="Descrizione" 
                          cols="40"  rows="10"> Inserisci una descrizione </textarea>
                    </p>

                    <input class="cl1" type="submit" value="Vendi" name="Vendi"> 

                </form>
            </div>

            <br><br>

            <jsp:include page="partiComuni/footer.jsp" />
            
        </div>
    </body>
</html>
