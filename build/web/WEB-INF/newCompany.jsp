<%-- 
    Document   : newCompany
    Created on : Feb 27, 2020, 2:18:25 PM
    Author     : LARISSA
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Новая компания</title>
    </head>
    <body>
        <h1>Зарегистрироваться</h1>
        <form action="addCompany" method="POST">
            Название компании : <input type="text" name="name"><br><br>
            Форма управления : <input type="text" name="form"><br><br>
            Адрес : <input type="text" name="address"><br><br>
            email: <input type="text" name="email"><br><br>  
            Логин : <input type="text" name="login"><br><br>
            Пароль : <input type="password" name="password"><br><br>
            
            <input type="submit" value="Создать компанию"><br>
        </form>
    </body>
</html>

