<%-- 
    Document   : listAccounts
    Created on : Feb 27, 2020, 3:20:40 PM
    Author     : LARISSA
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Список счетов</title>
    </head>
    <body>
        <h1>Список наших счетов</h1>
        <ol>
            <c:forEach var="account" items="${listAccounts}">
                <li>${account.number}. ${account.title}. ${account.author}. ${account.year}. ${account.month}. ${account.total}</li>  
            </c:forEach>
             </ol>
    </body>
</html>
