<%-- 
    Document   : contacts
    Created on : Mar 12, 2020, 12:04:54 PM
    Author     : LARISSA
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>TODO supply a title</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <link href="css/bootstrap.css" rel="stylesheet" type="text/css"/>
        <link href="css/style.css" rel="stylesheet">
        <style>
        </style>
    </head>
    <body>

        <header>
            <nav class="navbar navbar-expand-md navbar-light fixed-top">
                <div class="container">
                    <a class="navbar-brand" href="#"><img class="logo" src="img/logo.png" alt=""/></a>
                    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                        <span class="navbar-toggler-icon"></span>
                    </button>

                    <div class="collapse navbar-collapse" id="navbarSupportedContent">
                        <ul class="navbar-nav ml-auto">

                             <li class="nav-item">
                                <a class="nav-link" href="index.jsp">Главная</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="services.jsp">Услуги</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="about.jsp">Обо мне</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="contacts.jsp">Контакты</a>
                                <li class="nav-item">
                                <a class="nav-link" href="index1.jsp">Вход</a>
                            </li>
                           
                        </ul>
                    </div>
                </div>
            </nav>
        </header>

        <section class="page-banner">
            <div class="container">
                <div class="row">
                    <div class="col-12">
                        <h1>Контакты</h1>
                    </div>
                </div>
            </div>
        </section>

        <section class="page contact">
             <div class="container-fluid">
                <div class="row">
                    <div class="col map">
                        <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2031.9905163919852!2d28.178397316074488!3d59.38318538167774!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x469437e1ce95069b%3A0xc04b5daf1181eb21!2sKangelaste+9!5e0!3m2!1sru!2see!4v1557915350794!5m2!1sru!2see" width="800" height="450" frameborder="0" style="border:0" allowfullscreen></iframe>
                    </div> 
                </div>
            </div>
            <div class="container">

                <div class="row mb-5">
                    <div class="col-md-6 d-flex flex-column">
                        <h2>Контактные данные</h2>
                        <div class="address">
                            <p><i class="fa fa-phone" aria-hidden="true"></i> +372 55613771</p>
                            <p><i class="fa fa-envelope-o" aria-hidden="true"></i> perfectpluss@mail.ru</p>
                            <p><i class="fa fa-map-marker" aria-hidden="true"></i> Kangelaste prospekt 9-50, Narva</p>
                        </div>
                    </div>
                    <div class="col-md-6">
                        <h2>Обратная связь</h2>
                        <form>
                            <div class="form-group">
                                <label for="userName">Имя</label>
                                <input type="text" class="form-control" id="userName" placeholder="Ваше имя" required>
                            </div>

                            <div class="form-group">
                                <label for="email">Email адрес</label>
                                <input type="email" class="form-control" id="email" placeholder="name@example.com" required>
                            </div>


                            <div class="form-group">
                                <label for="phone">Телефон</label>
                                <input type="tel" class="form-control" id="phone" placeholder="+372">
                            </div>


                            <div class="form-group">
                                <label for="msg">Сообщение</label>
                                <textarea class="form-control" id="msg" rows="3"  placeholder="Ваше сообщение" required ></textarea>
                            </div>

                            <button type="submit" class="btn btn-outline-primary">Отправить</button>
                        </form>
                    </div>
                </div>

            </div>

            <
              
        </section>


        <footer>
            <div class="container">
                <div class="row align-items-center">
                    <div class="col-12 col-md-4">
                        <a class="navbar-brand" href="#"><img class="logo" src="img/logo.png" alt=""/></a>
                    </div>
                    <div class="col-12 col-md-4 copy">
                        SKTVp18  &copy; 2020 <a href="mailto:support@ee.ee">perfectpluss@mail.ru</a>
                    </div>
                    <div class="col-12 col-md-4">
                        <ul class="nav justify-content-center social">
                            <li class="nav-item">
                                <!--<a class="nav-link" href="#"><img src="https://img.icons8.com/color/48/000000/facebook.png"></a>-->
                                <!--<a class="nav-link" href="#"><img src="https://img.icons8.com/windows/48/000000/facebook.png"></a>-->
                                <a class="nav-link" href="https://www.facebook.com/"><img src="img/facebook.png" alt=""/></a>

                            </li>
                            <li class="nav-item">
                                <!--<a class="nav-link" href="https://vk.com/"><img src="https://img.icons8.com/windows/48/000000/vk-com.png"></a>-->
                                <!--<a class="nav-link" href="#"><img src="https://img.icons8.com/color/48/000000/vk-com.png"></a>-->
                                <a class="nav-link" href="https://vk.com/"><img src="img/vk-com.png" alt=""/></a>
                            </li>
                            <li class="nav-item">
                                <!--<a class="nav-link" href="#"><img src="https://img.icons8.com/color/48/000000/odnoklassniki.png"></a>-->
                                <!--<a class="nav-link" href="#"><img src="https://img.icons8.com/ios/48/000000/odnoklassniki.png"></a>-->
                                <a class="nav-link" href="https://ok.ru/profile/129055386138"><img src="img/odnoklassniki.png" alt=""/></a>
                            </li>
                            <li class="nav-item">
                                <!--<a class="nav-link" href="#"><img src="https://img.icons8.com/windows/48/000000/instagram-new.png"></a>-->
                                <a class="nav-link" href="https://www.instagram.com/"><img src="img/instagram-new.png" alt=""/></a>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>

        </footer>

        <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>

        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>

        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>  
    </body>
</html>