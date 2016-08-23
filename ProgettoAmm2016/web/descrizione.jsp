<%-- 
    Document   : descrizione
    Created on : 4-mag-2016, 20.47.35
    Author     : Luca
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Descrizione</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        
        <meta name="keywords" content="HTML, CSS, PHP, MySQL, AMM">
        <meta name="description" content="Progetto">
        <meta name="author" content="Luca Stochino">
        <link href="css/style.css" rel="stylesheet" type="text/css" media="screen" />
    </head>
    
    <body>
                
        <c:if test="${param.venduto == '1'}">
            <script>                    
                alert("Articolo messo in vendita!")
            </script>
        </c:if>

        <c:if test="${param.acquisto == '1'}">
            <script>                    
                alert("Articolo acquistato!")
            </script>
        </c:if>
            
        <div id="body2">
        
            <jsp:include page="partiComuni/header.jsp" />
            
            <div id="menu">
                <ul>
                    <li><p class="current">Home</p></li>
                    
                    <c:choose>
                        <c:when test="${clienteLoggedIn}">
                            <li><a href="ClienteServlet">Compra</a></li>
                        </c:when>
                        <c:otherwise>
                            <li><p>Compra</p></li>                        
                        </c:otherwise>
                    </c:choose>
                    
                    <c:choose>
                        <c:when test="${venditoreLoggedIn}">
                            <li><a href="VenditoreServlet">Vendi</a></li>
                        </c:when>
                        <c:otherwise>
                            <li><p>Vendi</p></li>                        
                        </c:otherwise>
                    </c:choose>
                    
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

                <h1 id="id0">Pusher Mario Bros.</h1>
                
                <p>Il sito prende ispirazione dal videogioco Super Mario Bros., in quanto uno dei platform più conociuti nel mondo.<br>
                    Mario va nel Regno dei Funghi, affronta tartarughe stacanoviste e funghetti dentati, fa precipitare nella lava Bowser e salva la principessa Peach.<br><br>
                    E secondo voi una persona normale, <b>un idraulico</b>, riuscirebbe a fare tutto questo senza nemmeno un <b>aiutino</b>?<br>
                    Ebbene, questo sito vi offre l'opportunità di poter usufruire anche voi degli "aiutini" di cui faceva uso Mario.
                    <b>Funghi strani</b>, <b>fiori magici</b> e <b>foglie stregate</b>... ma soprattutto <b>funghi strani</b>... 
                </p>
                <h3>E dai e compralo un funghetto...</h3>
                    
                <br>
                <h2 id="id1">Il progetto</h2>
                <p> Data la natura del progetto, Super Mario Bros. si è presentato come tema ideale per il suo sviluppo poichè offre un'oggettistica già conosciuta e adatta per un sito di e-commerce.<br><br>
                    Il tema seguito, per quanto possibile, è stato quindi quello del videogioco del 1985, ma gli oggetti in vendita sono ripresi dagli ultimi episodi della saga.<br><br>
                    Al fine di rimanere in tema, la valuta impiegata sono i coins.
                </p>
                 
                <br>
                <h2 id="id2">oggetti</h2>
                <p>Esegui il Login e comincia gli acquisti! <br><br>
                   Ecco alcuni dei nostri prodotti:</p>
                
                <ul id="showarticoli">            
                    <li> <div> <img alt="Articolo0" src=${articoliRandom.get(0).getUrlImage()} width="50" height="50" onerror="this.onerror=null;this.src='objects/sells/image_not_found.png';"> <p><b>${articoliRandom.get(0).getNome()}</b></p> </div> </li>
                    <li> <div class="esempio_sacrif"> <img alt="Articolo1" src=${articoliRandom.get(1).getUrlImage()} width="50" height="50" onerror="this.onerror=null;this.src='objects/sells/image_not_found.png';"> <p><b>${articoliRandom.get(1).getNome()}</b></p> </div> </li>
                    <li> <div> <img alt="Articolo2" src=${articoliRandom.get(2).getUrlImage()} width="50" height="50" onerror="this.onerror=null;this.src='objects/sells/image_not_found.png';"> <p><b>${articoliRandom.get(2).getNome()}</b></p> </div> </li>
                    <li> <div class="esempio_sacrif"> <img alt="Articolo3" src=${articoliRandom.get(3).getUrlImage()} width="50" height="50" onerror="this.onerror=null;this.src='objects/sells/image_not_found.png';"> <p><b>${articoliRandom.get(3).getNome()}</b></p> </div> </li>
                    <li> <div> <img alt="Articolo4" src=${articoliRandom.get(4).getUrlImage()} width="50" height="50" onerror="this.onerror=null;this.src='objects/sells/image_not_found.png';"> <p><b>${articoliRandom.get(4).getNome()}</b></p> </div> </li>
                </ul>

                <br><br>
            </div>

            <jsp:include page="partiComuni/footer.jsp" />
            
        </div>
    </body>
</html>

