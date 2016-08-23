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
        <meta name="description" content="Milestone1">
        <meta name="author" content="Luca Stochino">
        <link href="css/style.css" rel="stylesheet" type="text/css" media="screen" />
        
        <script type="text/javascript" src="js/filtrocliente.js"></script>
        <script type="text/javascript" src="js/jquery-3.1.0.min.js"></script>
        
    </head>
            
    <c:if test="${param.nomoney == '1'}">
        <script> 
            alert("Non hai abbastanza coin\nper permetterti questo acquisto!")
        </script>
    </c:if>
    
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

                <h1>Oggetti in vendita</h1>
                
                <form id="filtrocliente" action="javascript:void(0);" onkeyup="filtra(event)">
                    <label for="Filtra">Ricerca: </label>
                    <input type="text" name="Filtra" id="textfiltro"/>
                </form>
                
                <p id="stampa"></p>
        
                <table id="tabella_oggetti"> 
                    
                    <thead>
                        <tr>
                            <th>Nome dell'oggetto</th>
                            <th>Foto descrittiva</th>
                            <th>Pezzi disponibili</th>
                            <th>Prezzo</th>
                            <th>Link</th>
                        </tr>
                    </thead>
                    
                    <tbody>
                        <c:forEach var="articolo" items="${arrayarticoli}">
                            <tr>
                                <td><b>${articolo.nome}</b></td>
                                
                                <td><img src="${articolo.urlImage}" 
                                         width="50" height="50" 
                                         onerror="this.onerror=null;this.src='objects/sells/image_not_found.png';"></td>
                                
                                <c:choose>
                                    <c:when test="${articolo.quantita <= 1}">
                                        <td>${articolo.quantita} pezzo</td>
                                    </c:when>

                                    <c:otherwise>
                                        <td>${articolo.quantita} pezzi</td>  
                                    </c:otherwise>
                                </c:choose>

                                <c:choose>
                                    <c:when test="${articolo.prezzo <= 1}">
                                        <td>${articolo.prezzo} coin</td>
                                    </c:when>

                                    <c:otherwise>
                                        <td>${articolo.prezzo} coins</td>  
                                    </c:otherwise>
                                </c:choose>

                                <td> <a href='ArticoloServlet?articoloId=${articolo.id}'> Dettagli </a></td>
                            </tr>
                        </c:forEach>  
                    </tbody>
                </table> 
                
            </div>

            <br><br>

            <jsp:include page="partiComuni/footer.jsp" />
        
        </div>
    </body>
</html>
