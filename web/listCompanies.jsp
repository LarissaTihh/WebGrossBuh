<%-- 
    Document   : listCompanies
    Created on : Feb 27, 2020, 3:21:10 PM
    Author     : LARISSA
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Список компаний</title>
    </head>
    <body>
        <h1>Список наших компаний</h1>
        <ol>
            <c:forEach var="company" items="${listCompanies}">
                 <li>${company.name}. ${company.form}. ${company.address}. ${company.email}</li>
            </c:forEach>
       
        </ol>
    </body>
</html>
