<%-- 
    Document   : locales
    Created on : 27 may. 2024, 17:41:47
    Author     : juand
--%>
<%@page import="conexion.ConectaBD"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="ServLets.cntLocales"%>
<%@page import="modelo.dao.LocalesDAO"%>
<%@page import="modelo.dto.Locales"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link href="resources/css/estiloLocales.css" rel="stylesheet" type="text/css"/>
        <link href="resources/css/navbar.css" rel="stylesheet" type="text/css"/>
        <link href="resources/css/piePagina.css" rel="stylesheet" type="text/css"/>
        <title>Locales</title>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css" integrity="sha512-SnH5WK+bZxgPHs44uWIX+LLJAJ9/2PkPKZ5QiAj6Ta86w+fsb2TkcmfRyVX3pBnMFcV7oQPJkl9QevSCWr3W6A==" crossorigin="anonymous" referrerpolicy="no-referrer" />
    </head>
    <body>
        <%
            // Verificar si ya se ha realizado la redirección
            Boolean redireccionado = (Boolean) session.getAttribute("redireccionado");
            if (redireccionado == null || !redireccionado) {
                // Realizar la redirección
                response.sendRedirect(request.getContextPath() + "/cntLocales?accion=locales");

                // Marcar la redirección como realizada
                session.setAttribute("redireccionado", true);
            }
        %>
        <jsp:include page="components/navbar.jsp"/>
        <div style="width: 1280px; margin: auto;">
            <div class="locales">
                <div class="titulo"><h1>Locales</h1></div>
                <hr><br>
                <div style="padding: 0px 0px 0px 12px"><h2>Aquí podrás encontrar todos los locales disponibles de MundoCine</h2></div>
                <div class="contenedor">
                    <table class="tabla">
                        <caption>Lista de Locales</caption>
                        <thead class="cabeza">
                            <tr>
                                <td>Código</td><td>Nombre</td><td>Direccion</td>
                            </tr>    
                        </thead>
                        <tbody class="cuerpo">
                            <c:forEach var="local" items="${lista}">
                                <tr class="contenido">
                                    <td>${local.codLocal}</td>
                                    <td>${local.nombre}</td>
                                    <td>${local.direccion}</td>
                                </tr>
                            </c:forEach>           
                        </tbody>
                        <tfoot class="pie">
                            <tr>
                                <td colspan="3"><b>MundoCine</b></td>
                            </tr>
                        </tfoot>
                    </table>
                </div>
            </div>

            <jsp:include page="components/footer.jsp"/>
        </div>
    </body>
</html>
