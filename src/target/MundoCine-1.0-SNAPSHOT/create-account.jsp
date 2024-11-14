<%-- 
    Document   : createa-account
    Created on : 24 may. 2024, 12:34:21
    Author     : usuario
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link href="resources/css/create-account.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>
        <div class="create-account">
            <h1>Crear cuenta</h1>
            <form>
                <div class="">
                    <div class="create-account-box">
                        <input type="text" placeholder="Nombre" data-test="create-account-first-name" value="" class="">
                    </div>
                </div>
                <div class="account-last-name">
                    <div class="lastname-p">
                        <div class="create-account-box">
                            <input type="text" placeholder="Apellido Paterno" data-test="create-account-last-name1" value="">
                        </div>
                    </div>
                    <div class="">
                        <div class="create-account-box">
                            <input type="text" placeholder="Apellido Materno" data-test="create-account-last-name2" value="">
                        </div>
                    </div>
                </div>
                <div class="account-dni-birthdate">
                    <div class="account-dni-p">
                        <div class="create-account-box">
                            <input type="dni" placeholder="DNI" data-test="create-account-dni" value="" class="">
                        </div>
                    </div>
                    <div class="">
                        <div class="create-account-box">
                            <input type="birthdate" placeholder="Fecha de Nacimiento" data-test="create-account-birthdate" value="" class="">
                        </div>
                    </div>
                </div>
                <div class="">
                    <div class="create-account-box">
                        <input type="username" placeholder="Nombre de Usuario" data-test="create-account-username" value="" class="">
                    </div>
                </div>
                <div class="">
                    <div class="create-account-box">
                        <input type="email" placeholder="Correo electrónico" data-test="create-account-email" value="" class="">
                    </div>
                </div>
                <div class="">
                    <div class="create-account-box">
                        <input type="password" placeholder="Crear contraseña" data-test="create-account-password" value="" class="">
                    </div>
                </div>
                <div class="">
                    <div class="create-account-box">
                        <input type="password" placeholder="Vuelve a escribir la contraseña" data-test="create-account-confirm-password" value="">
                    </div>
                </div>
                <div class="cIjT9Gx1d4IQhUpiYmlI AQ08MoIFljm5p70XuskF">

                </div>
                <button class="btn-creat-account" data-test="create-account-create-button" type="submit">
                    <span>Crear cuenta</span>
                </button>
            </form>
            <footer>
                <a href="login.jsp">
                    <span>¿Ya tienes una cuenta? Inicia sesión</span>
                </a>
            </footer>
        </div>
    </body>
</html>
