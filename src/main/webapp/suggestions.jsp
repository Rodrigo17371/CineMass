<%@ page import="javax.servlet.http.HttpSession" %>
<%@ page import="modelo.dto.Customer" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    Customer customer = (Customer) session.getAttribute("customer");
    String welcomeMessage = (customer != null) ? "Bienvenido " + customer.getUsuario() : "Iniciar sesión";
    boolean isLoggedIn = (customer != null);
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Sugerencias</title>
        <link href="resources/css/suggestions.css" rel="stylesheet" type="text/css"/>
        <link href="resources/css/home.css" rel="stylesheet" type="text/css"/>
        <link href="resources/css/piePagina.css" rel="stylesheet" type="text/css"/>
        <link href="resources/css/navbar.css" rel="stylesheet" type="text/css"/>
        <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css" rel="stylesheet">
        <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
        <style>
            .message-success {
                color: green;
                font-size: 16px;
                margin-top: 10px;
                display: flex;
                align-items: center;
            }
            .message-success i {
                margin-right: 8px;
            }
        </style>
        <script>
            $(document).ready(function(){
                $('#formSugerencias').submit(function(event){
                    event.preventDefault(); // Evitar el comportamiento por defecto del formulario

                    $.ajax({
                        type: 'POST',
                        url: '<%= request.getContextPath()%>/cntSuggestions',
                        data: $(this).serialize(), // Serializa el formulario
                        success: function(response){
                            $('#mensaje').html('<i class="fas fa-check-circle"></i> ' + response).addClass('message-success');
                            $('#formSugerencias')[0].reset(); // Limpiar el formulario
                        },
                        error: function(){
                            $('#mensaje').text('Error al enviar la sugerencia.');
                        }
                    });
                });
            });
        </script>
    </head>
    <body>     
        <!-- ESTO ES EL NAVBAR -->
        <jsp:include page="components/navbar.jsp"/>
        <div style="display: flex;flex-direction: column; place-items: center">
        <div class="suggestions-principal-container">
        <div class="suggestionsUs">
            <div class="tittle">
                <h1>Sugerencias</h1>
            </div>
            <div class="mlps-header" style="margin: 12px 0px 24px 0px">
                <div class="mlps-h-b"></div>
                <div style="padding: 0px 0px 0px 12px">¡Estamos aquí para escucharte! Déjanos tu sugerencia.</div>
            </div>
            <!-- Formulario -->
            <div class="boxForm">
                <div class="suggestions form">
                    <h3>Envíanos tu sugerencia.</h3>
                    <form class="formulario" id="formSugerencias">
                        <div class ="form">
                            <div class="row50">
                                <div class="inputForm">
                                    <span>Nombre Completo</span>
                                    <input type="text" name="nombre" id="nombre" placeholder="Carla Soto">
                                    <span>Correo Electrónico</span>
                                    <input type="text" name="correo" id="correo" placeholder="carlas@gmail.com">
                                    <span>Asunto</span>
                                    <input type="text" name="asunto" id="asunto" placeholder="Mejora de ofertas...">
                                </div>
                                <div class="row100">
                                    <div class="inputForm">
                                        <span>Sugerencia</span>
                                        <textarea name="sugerencia" id="sugerencia" placeholder="Escriba su sugerencia aquí..."></textarea>
                                    </div>
                                </div>
                                <div class="row100">
                                    <div class="inputForm">
                                        <input type="submit" style="border-radius: 5px;" value="Enviar">
                                    </div>
                                </div>
                            </div>
                        </div>
                    </form>
                    <div id="mensaje" class="message-success" style="margin-top: 10px;"></div>
                </div>
            </div>
        </div>
        
        <!-- ESTO ES EL FOOTER -->
        <div style="width: 1280px;">
            <jsp:include page="components/footer.jsp"/>
        </div>
        </div>
        </div>
    </body>
</html>