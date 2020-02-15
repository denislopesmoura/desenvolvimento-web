<%-- 
    Document   : questaoB
    Created on : 21/10/2019, 12:28:14
    Author     : Denis Moura
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="qb" uri="questaob" %>
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
            <h3>Questão 2: Conversor de Km para Milhas</h3>
            <p>Apresentar uma Tabela HTML com a conversão de milhas para quilômetros.</p><br>
            
            <form method="post" class="form-group">
                <input type="number" name="valueMax" placeholder="Insira valor máximo">
                <input type="number" name="valueMin" placeholder="Insira valor minimo">
                <input type="number" name="passo" placeholder="Insira o passo">
                <select name="formato">
                    <option value="1" selected>KM para Milhas</option> 
                    <option value="2">Milhas para KM</option>
                </select>
                <input type="submit" value="formatar" class="btn btn-primary">
                <a href="index.html">Voltar</a>
            </form>
            <br>
            <br>
            <table class="table table-hover">
                <c:if test="${param.valueMax != null && param.valueMin != null && param.passo != null && param.formato != null }">
                    <c:choose>
                        <c:when test="${param.valueMin >= param.valueMax}">
                            <h3 style="color: red">Valor Minimo não pode ser maior ou igual que o valor Máximo</h3>
                        </c:when>
                        <c:when test="${param.valueMax > param.valueMin}">
                            <qb:QuestaoB valueMax="${param.valueMax}" valueMin="${param.valueMax}" passo="${param.passo}" formato="${param.formato}"/>
                        </c:when>
                    </c:choose>
                </c:if>
            </table>
         </div>
    </body>
</html>
