<%-- 
    Document   : descrizione
    Created on : 4-mag-2016, 20.47.35
    Author     : Luca
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
        <div id="body2">
            
            <jsp:include page="partiComuni/header.jsp" />
            
            <div id="menu">
                <ul>
                    <li><a href="descrizione.jsp">Home</a></li>
                    <li><p>Cliente</p></li>
                    <li><p>Venditore</p></li>
                    
                    <c:choose>
                        <c:when test="${loggedIn}">
                            <li><a href="Home">Logout</a></li>
                        </c:when>

                        <c:otherwise>
                            <li><a href="Login">Login</a></li>
                        </c:otherwise>
                    </c:choose>  
                </ul>
            </div> 
            
            <jsp:include page="partiComuni/sidebar.jsp" />

            <div id="denied">
                
                </br></br></br>
                
                <img src= "drawable/busted.gif"
                        alt = "Busted"
                        id="busted"
                        title = "busted"
                        width = "52" height= "58">
                
                </br>
                    
                <h1> Accesso negato </h1>
              
                <c:choose>
                    <c:when test="${!loggedIn}">
                        <p>Gli utenti non loggati</p>
                    </c:when>

                    <c:otherwise>
                        <c:if test="${clienteLoggedIn}">
                            <p>I clienti<p>
                        </c:if>
                                
                        <c:if test="${venditoreLoggedIn}">
                            <p>I venditori<p>
                        </c:if> 
                        
                    </c:otherwise>
                </c:choose>
                                
                <h3>NON POSSONO ACCEDERE</h3>
                
                <p>a quest'area!</p>
                
                <br>
                
                <a href="javascript:history.go(-1)"> Torna indietro </a>
                
                <br>
                <br>
                <br>
                <br>
                
            </div>

            <jsp:include page="partiComuni/footer.jsp" />
        </div>
    </body>
</html>

