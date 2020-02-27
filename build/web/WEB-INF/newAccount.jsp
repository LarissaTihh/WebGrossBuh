<%-- 
    Document   : newAccount
    Created on : Feb 27, 2020, 2:11:31 PM
    Author     : LARISSA
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Новый счёт</title>
    </head>
    <body>
        <h1>Создать счёт</h1>
        <form action="addAccount" method="POST">
            Номер счёта: <input type="text" name="number"><br><br>
            Название счёта: <input type="text" name="title"><br><br>
            Кто выставил счёт: <input type="text" name="author"><br><br>
            Год: <input type="text" name="year"><br><br>
            Месяц: <input type="text" name="month"><br><br>
            Итого: <input type="text" name="total"><br><br>
            <input type="submit" value="Создать счёт"><br>
        </form>

    </body>
</html>

