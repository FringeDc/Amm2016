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
                        <li><a href="login.html">Login</a></li>
                        <li><a href="descrizione.html">Descrizione</a></li>
                        <li><a href="cliente.html">Cliente</a></li>
                        <li class="current_page_item"><a href="#">Venditore</a></li>
                    </ul>
                </div> 
            </div>
        </header>
        
        <div id="sidebar1">
            <h2 class="icon-title">Navigazione</h2>
            <ul>
                <li><a href="login.html">Login</a></li>
                <li><a href="descrizione.html">Descrizione</a></li>
                <li><a href="cliente.html">Cliente</a></li>
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
            <h1>Inserisci le caratteristiche di un nuovo oggetto</h1>

            <form>

                <p>

                <label for="Nome">Nome dell'oggetto</label>
                <input type="text" name ="Nome" id="Nome" /> <br> <br>

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
                <input type="number" name ="Pezzo" id="Pezzo" /> <br> <br>

                </p>
                <p>

                <label for="Descrizione">Descrizione dell'oggetto</label>
                <textarea name="Descrizione" id="Descrizione" 
                      cols="40"  rows="10"> Inserisci una descrizione </textarea>
                </p>
                
                <input class="cl1" type="submit" value="Vendi"> 
            
            </form>
        </div>
        
        <br><br>
        
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
