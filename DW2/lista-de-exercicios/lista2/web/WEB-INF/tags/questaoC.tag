<%-- 
    Document   : questaoC
    Created on : 21/10/2019, 15:44:55
    Author     : Denis Moura
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@tag description="put the tag description here" pageEncoding="UTF-8"%>
<%@taglib prefix="aux" uri="questaoC" %>

<%-- The list of normal or fragment attributes can be specified here: --%>
<%@attribute name="valueInicial" required="true" type="java.lang.Integer" rtexprvalue="true"%>
<%@attribute name="valueFinal" required="true" type="java.lang.Integer" rtexprvalue="true"%>

<%-- any content can be specified here e.g.: --%>
<br>
<ul class="list-group">
    <li class="list-group-item list-group-item-action active" >Numeros Primos</li>
    <c:forEach begin="${valueInicial}" end="${valueFinal}" var="number">
        <c:if test="${aux:isPrimo(number)}">
        <li class="list-group-item">${number}</li>
        </c:if>
    </c:forEach>
</ul>