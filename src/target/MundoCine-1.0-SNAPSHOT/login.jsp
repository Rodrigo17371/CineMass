<%-- 
    Document   : login
    Created on : 24 may. 2024, 12:14:32
    Author     : usuario
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link href="resources/css/login.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>

            <div id="user-account-login-root">
                <div class="user-account-container">
                    <div class="user-account-log">
                <h1>Inicio de Sesión</h1>
                <form>
                    <div class="">
                        <div class="user-account">
                            <input type="email" placeholder="Correo electrónico" data-test="login-email" value="" class="">
                        </div></div>
                    <div class="">
                        <div class="user-account">
                            <input type="password" placeholder="Contraseña" data-test="login-password" value="" class="">
                        </div>
                    </div>
                    <button class="login-account-button" data-test="login-button" type="submit">
                        <span>Iniciar sesión</span></button>
                </form>
                <footer>
                    <a href="/account/login/request-reset">
                        <span>¿Olvidaste la contraseña?</span>
                    </a><a href="create-account.jsp">
                        <span>Crear cuenta</span>
                    </a>
                </footer>
            </div>
                </div>
                </div>
    </body>
</html>
