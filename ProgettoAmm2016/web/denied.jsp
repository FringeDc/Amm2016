<%-- 
    Document   : descrizione
    Created on : 4-mag-2016, 20.47.35
    Author     : Luca
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!DOCTYPE html>
<!--
To change this license header, choose License Headers in Project Properties.
To change this template file, choose Tools | Templates
and open the template in the editor.
-->
<html>
    <head>
        <title>Descrizione</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        
        <meta name="keywords" content="HTML, CSS, PHP, MySQL, AMM">
        <meta name="description" content="Milestone1">
        <meta name="author" content="Luca Stochino">
        <link href="css/style.css" rel="stylesheet" type="text/css" media="screen" />
    </head>
    
    <body>
        <div id="white">
            
            <jsp:include page="partiComuni/header.jsp" />
            <jsp:include page="partiComuni/sidebar.jsp" />

            <div id="denied">
                
                </br>
                
                <img src= "drawable/busted.gif"
                        alt = "Busted"
                        id="busted"
                        title = "busted"
                        width = "52" height= "58">
                
                </br>
              
                <h1> Accesso negato </h1>
                
                <p> Non puoi accedere a quest'area! </p>
                
                <p> Torna indietro </p>

            </div>

            <jsp:include page="partiComuni/footer.jsp" />
        </div>
    </body>
</html>

