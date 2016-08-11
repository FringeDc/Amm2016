<%@page contentType="application/json" pageEncoding="UTF-8"%>
<%@ taglib prefix="json" uri="http://www.atg.com/taglibs/json" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<json:array>
    <c:forEach var="articolo" items="${listaArticoli}">
        <json:object>
            <json:property name="id" value="${articolo.id}"/>
            <json:property name="nome" value="${articolo.nome}"/>
            <json:property name="prezzo" value="${articolo.prezzo}"/>
            <json:property name="quantita" value="${articolo.quantita}"/>
            <json:property name="urlImage" value="${articolo.urlImage}"/>
            <json:property name="descrizione" value="${articolo.descrizione}"/>
        </json:object>
    </c:forEach>
</json:array >