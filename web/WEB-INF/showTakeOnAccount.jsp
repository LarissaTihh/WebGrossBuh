<%-- 
    Document   : showTakeOnAccount
    Created on : Feb 27, 2020, 3:02:38 PM
    Author     : LARISSA
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Выбор счёта</title>

    </head>
    <body>
        <p>${info}</p>
        <a href="index.jsp">Главная страница</a><br>
        <form action="takeOnAccount" method="POST">
            <h2>Список книг</h2> 
            <select name="accountId">
                <c:forEach var="account" items="${listAccounts}" varStatus="status">
                    <option value="${account.id}">
                        ${status.index+1}) ${account.number}. ${account.title}. ${account.author}. ${account.year}. ${account.month}. ${account.total}
                    </option>                          
                </c:forEach>
            </select>
            <h2>Список компаний</h2>
             <select name="companyId">
                <c:forEach var="company" items="${listCompanies}" varStatus="status">
                    <option value="${company.id}">
                        ${status.index+1}) ${company.name}. ${company.form}. ${company.address}. ${company.email}
                        
                    </option>                          
                </c:forEach>
            </select>
            <input type="submit" value="выбрать счёт">
        </form>
    </body>
</html>

