<%-- 
    Document   : showLogin
    Created on : Feb 27, 2020, 2:24:25 PM
    Author     : LARISSA
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Вход в систему</title>
    </head>
    <body>
      <H1>Введите логин и пароль</H1>
      <p>${info}</p>
      
      <form action="login" method="POST">
          Login: <input type="text" name="login"><br><br>
          Password: <input type="password" name="password"><br>
          <input type="submit" value="Войти">
      </form>
    </body>

</html>