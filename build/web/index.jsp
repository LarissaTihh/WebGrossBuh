<%-- 
    Document   : index
    Created on : Feb 27, 2020, 12:18:18 PM
    Author     : LARISSA
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Бухгалтерия</title>
    </head>
    <body>
        <H1>Добро пожаловать!</H1>
        <p>${info}</p><br>
        <p>Работайте с Perfect Pluss!!</p>
        <a href="showLogin">Вход</a><br>
        <a href="logout">Выход</a><br>
        <a href="newAccount">Создать счёт</a><br>
        <a href="listAccounts">Список счетов</a><br>
        <a href="newCompany">Создать компанию</a><br>
        <a href="listCompanies">Список компаний</a><br>
        <a href="showTakeOnAccount">Выбрать счёт</a><br>
        <a href="showPaymentAccount">Оплатить счёт</a><br>
    </body>
</html>

