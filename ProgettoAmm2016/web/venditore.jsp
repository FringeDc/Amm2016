<%-- 
    Document   : venditore
    Created on : 3-mag-2016, 17.51.04
    Author     : Luca
--%>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Venditore</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        
        <meta name="keywords" content="HTML, CSS, PHP, MySQL, AMM">
        <meta name="description" content="Progetto">
        <meta name="author" content="Luca Stochino">
        <link href="css/style.css" rel="stylesheet" type="text/css" media="screen" />
    </head>
    
    <body>
        <div id="body2">
            
            <jsp:include page="partiComuni/header.jsp" />

            <div id="menu">
                <ul>
                    <li><a href="descrizione.jsp">Home</a></li>
                    <li><p>Compra</p></li>
                    <li><p class="current">Vendi</p></li>
                    
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

            <div id="corpo">
                
                <h1>Vendi un nuovo articolo</h1>
                
                <p>Inserisci le caratteristiche dell'articolo che vuoi mettere in vendita.</p>
                
                <c:if test="${param.Nome == ''}">
                    <p class="err"><b>Non hai inserito alcun nome!</b></p>
                </c:if>  
                    
                <c:if test="${param.Url == ''}">
                    <p class="err"><b>Non hai inserito alcun url!</b></p>
                </c:if>     
                    
                <c:if test="${param.Prezzo == ''}">
                    <p class="err"><b>Non hai inserito alcun prezzo!</b></p>
                </c:if>   
                    
                <c:if test="${param.Prezzo == '0'}">
                    <p class="err"><b>Il prezzo che hai inserito non è valido!</b></p>
                </c:if>   
                    
                <c:if test="${param.Pezzi == ''}">
                    <p class="err"><b>Non hai inserito il numero di pezzi!</b></p>
                </c:if>   
                    
                <c:if test="${param.Pezzi == '0'}">
                    <p class="err"><b>Il numero di pezzi che hai inserito non è valido!</b></p>
                </c:if> 

                <form id="newarticolo" action="Vendita">

                    <p>

                    <label for="Nome">Nome dell'oggetto</label>
                    <input class="featarticolo" type="text" name="Nome"/> <br> <br>

                    </p>
                    <p>

                    <label for="Url">Nome del file immagine</label>
                    <p>(Salvare l'immagine nella cartella <i>"ProgettoAmm2016/objects/sells/"</i>)</p>
                    <input class="featarticolo" type="text" name ="Url" value="immagine.png">  <br> <br>

                    </p>
                    <p>

                    <label for="Prezzo">Prezzo dell'oggetto</label>
                    <input class="featarticolo" type="number" name ="Prezzo" value="1"/> <br> <br>

                    </p>
                    <p>

                    <label for="Pezzi">Pezzi disponibili</label> 
                    <input class="featarticolo" type="number" name ="Pezzi" value="1"/> <br> <br>

                    </p>
                    <p>

                    <label for="Descrizione">Descrizione dell'oggetto</label>
                    <p>(facoltativa)</p>
                    <textarea name="Descrizione" class="featarticolo" 
                          cols="39"  rows="5"></textarea>
                    </p>

                    <input class="cl1" type="submit" value="Vendi" name="Vendi"> 

                </form>
            </div>

            <br><br>

            <jsp:include page="partiComuni/footer.jsp" />
            
        </div>
    </body>
</html>
