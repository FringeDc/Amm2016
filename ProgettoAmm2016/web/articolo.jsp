<%-- 
    Document   : cliente
    Created on : 3-mag-2016, 17.51.47
    Author     : Luca
--%>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Cliente</title>
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
                    <li><p class="current">Compra</p></li>
                    <li><p>Vendi</p></li>
                    
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
                
                <h1>${articolo.nome}</h1>
            
                <div id="descarticolo">

                    <img src= "${articolo.urlImage}" 
                         alt="Immagine" width="100" height="100"
                         onerror="this.onerror=null;this.src='objects/sells/image_not_found.png';">
                    
                    <h2>Prezzo</h2>
                    
                    <c:choose>
                        <c:when test="${articolo.prezzo <= 1}">
                            <td><p>${articolo.prezzo} coin</p></td>
                        </c:when>

                        <c:otherwise>
                            <td><p>${articolo.prezzo} coins</p></td>  
                        </c:otherwise>
                    </c:choose>
                        
                    <h2>Pezzi disponibili</h2>
                    
                    <c:choose>
                        <c:when test="${articolo.quantita <= 1}">
                            <td><p>${articolo.quantita} pezzo</p></td>
                        </c:when>

                        <c:otherwise>
                            <td><p>${articolo.quantita} pezzi</p></td>  
                        </c:otherwise>
                    </c:choose>

                    <h2>Venditore</h2>
                    <p>${articoloVend.nickname}</p>

                    <h2>Descrizione</h2>
                    <p>${articolo.descrizione}</p>
                
                </div>
                                        
                <br><br>
                    
                <form method="post" action="Acquisto" id="form_acquista">
                      
                    <h1>Acquista</h1>
                    
                    <br>
                    
                    <div>
                    <label for="quanti">Numero pezzi:</label>  
                    <input class="cl3" type="number" name="Quantita" value="1" min="1" max="${articolo.quantita}" id="quanti"/> <br>
                    </div>
                    
                    <p>
                    <input class="cl1" type="submit" value="Acquista" name="Acquista">
                    <input class="cl1" type="reset" value="Cancella">
                    </p>
                </form>
            </div>
                    
            <jsp:include page="partiComuni/footer.jsp" />
        </div>
    </body>
</html>
