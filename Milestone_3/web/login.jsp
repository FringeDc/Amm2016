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
        <meta name="description" content="Milestone1">
        <meta name="author" content="Luca Stochino">
        <link href="style.css" rel="stylesheet" type="text/css" media="screen" />
    </head>
    <body id="page">
        
        <header>
            <!--  header -->
            <div id="header">

                <div id="logo">
                    <img src= "drawable/logo.png"
                        alt = "Super Mario Bros."
                        id="logo_titolo"
                        title = "logo"
                        width = "291" height= "140">
                    <!--<h1>Pusher Mario Bros.</h1>-->
                </div>
                
                <div id="menu">
                    <ul>
                        <li class="current_page_item"><a href="#">Login</a></li>
                        <li><a href="descrizione.html">Descrizione</a></li>
                        <li><a href="cliente.html">Cliente</a></li>
                        <li><a href="venditore.html">Venditore</a></li>
                    </ul>
                </div> 
            </div>

        </header>
        
        <div id="sidebar1">
            <h2 class="icon-title">Navigazione</h2>
            <ul>
                <li><a href="descrizione.html">Descrizione</a></li>
                <li><a href="cliente.html">Cliente</a></li>
                <li><a href="venditore.html">Descrizione</a></li>
            </ul>
        </div>

        <div id="sidebar2">
            <h2 class="icon-title">Link esterni</h2>
            <ul>
                <li><a href="https://www.nintendo.it/">Nintendo</a></li>
                <li><a href="http://mario.nintendo.com/">Super Mario</a></li>
                <li><a href="http://nonciclopedia.wikia.com/wiki/Padre_Maronno_–_L'uomo_a_cui_appiopparono_la_santità">Padre Maronno</a></li>
                <li><a href="http://www.chiquita.it/">Chiquita</a></li>
            </ul>
        </div>
        
        
        
        <div id="body">
            
            <h1>Accedi</h1>
            
            <%@include file="login_form.jsp" %>
            
            <br><br>
        
        </div>
        
        <footer>
                <div id="foot" class="foot">
                <ul>
                    <li id="nintendo"><a href="https://www.nintendo.it/">nintendo</a></li>
                    <li id="superMario"><a href="http://mario.nintendo.com/">mario</a></li>
                    <li id="maronno"><a href="http://nonciclopedia.wikia.com/wiki/Padre_Maronno_–_L'uomo_a_cui_appiopparono_la_santità">maronno</a></li>
                    <li id="chiquita"><a href="http://www.chiquita.it/">chiquita</a></li>
                </ul>
            </div>
        </footer>
        
    </body>
</html>
