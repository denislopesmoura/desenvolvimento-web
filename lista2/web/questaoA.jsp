<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="qa" uri="questaoA"%>
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
            <h3>Questão A: Formatar Numeros de CPF e CNPJ</h3>
            <p>
                Formatar um CPF ou CNPJ, recebendo o valor através de um atributo. <br>
                Identificar o documento pela sua quantidade de dígitos.
            </p>
            <br>
            <form method="post">
                <input type="text" name="numDocumento" placeholder="Insira numero do CPF ou CNPJ">
                <input type="submit" class="btn btn-primary" value="formatar">
                <a href="index.html">Voltar</a>
            </form>
        </div>
        
    <c:if test="${param.numDocumento != null}">
        <c:choose> 
            <c:when test="${param.numDocumento.length() != 11 && param.numDocumento.length() != 14}">
                <div class="container justify-content-center">
                    <h3 style="color: red">Quantidade de algarismos inválida</h3>
                <dir
            </c:when>
            <c:when test="${param.numDocumento.length() == 11 || param.numDocumento.length() == 14}">
                <br><qa:QuestaoA numDocumento="${param.numDocumento}"/>
            </c:when>
        </c:choose>
    </c:if>
                
    </body>
</html>
