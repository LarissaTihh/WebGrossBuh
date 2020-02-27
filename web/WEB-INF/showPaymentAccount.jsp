<%-- 
    Document   : showPaymentAccount
    Created on : Feb 27, 2020, 3:13:41 PM
    Author     : LARISSA
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Оплата выставленных счетов</title>
    </head>
    <body>
        <h1>Оплата счёта</h1>
        <p>${info}</p>
        <a href="index.jsp">Главная страница</a><br>
        <form action="paymentOnAccount" method="POST">
            Список оплаченных счетов:<br>
            <c:if test="${listHistories == null}">
                <p>Нет оплаченных счетов!</p>
            </c:if>
            <c:if test="${listHistories != null}">
                <select name="historyId"  size="3">
                    <c:forEach var="history" items="${listHistories}" varStatus="status">
                        <option value="${history.id}">
                            ${status.index+1}. ${history.company.name} ${history.company.form} оплачивает счёт "${history.account.number}"
                        </option>
                    </c:forEach>
                </select>
            </c:if>
            <br>
            <input type="submit" value="Оплатить счёт">
        </form>
    </body>
</html>
