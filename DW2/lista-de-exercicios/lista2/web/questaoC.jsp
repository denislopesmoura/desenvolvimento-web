<%-- 
    Document   : questaoC
    Created on : 21/10/2019, 15:45:59
    Author     : Denis Moura
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="qc" uri="questaoC" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        
        <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
        
    </head>
    <body>
        <div class="container justify-content-center">
        <h3>Questao C: Números Primos</h3>
        <p>
            Criar uma lista não ordenada em HTML com os números primos entre dois valores informados<br>
            pelo usuário através de atributos.
        </p>
        <form method="post">
            <input type="number" name="valueInicial" placeholder="Valor Inicial">
            <input type="number" name="valueFinal" placeholder="Valor Final">
            <input type="submit" value="Enviar" class="btn btn-primary">
            <a href="index.html" class="button">Voltar</a>
        </form>
        </div>
        
        <c:if test="${param.valueInicial != null && param.valueFinal != null}">
            <c:choose>
                <c:when test="${param.valueInicial > param.valueFinal || param.valueInicial < 0 || param.valueFinal < 0 }">
                    <div class="container justify-content-center">
                        <br><h3 style="color:red">Valores Inválidos</h3>
                    </div>
                </c:when>
                <c:when test="${param.valueFinal > param.valueInicial}">
                    <br><div class="container justify-content-center"
                        <qc:QuestaoC valueInicial="${param.valueInicial}" valueFinal="${param.valueFinal}"/>
                    </div>
                </c:when>
            </c:choose>
        </c:if>
    </body>
</html>
