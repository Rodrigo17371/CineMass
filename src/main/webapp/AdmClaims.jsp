<%@ page import="java.util.List" %>
<%@ page import="modelo.dto.Claims" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet"/>
        <link href="https://cdn.datatables.net/1.10.21/css/jquery.dataTables.css" rel="stylesheet" type="text/css"/>
        <link href="resources/css/adminDasboard.css" rel="stylesheet" type="text/css"/>      
        <link href="resources/css/Admin.css" rel="stylesheet" type="text/css"/>
        <link href="resources/css/Admin-Display.css" rel="stylesheet" type="text/css"/>
        <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
        <script src="https://cdn.datatables.net/1.10.21/js/jquery.dataTables.js"></script>
        <title>Reclamos</title>
        <style>
            /* Estilos adicionales para mejorar la apariencia */
            .dataTables_wrapper {
                width: 90%;
                margin: 0 auto;
            }
        </style>
        <script>
            $(document).ready(function() {
                $('#claimsTable').DataTable();
            });
        </script>
    </head>
    <body class="parent-container">
        <jsp:include page="components/navegadorAdm.jsp"/>
        <script src="resources/scrip/AdmPng.js" type="text/javascript"></script>
        <div class="box-content">
            <div class="container">
                <h2 class="mt-5">Lista de Reclamos</h2>
                <form action="SvAdmClaims" method="get" class="mb-3">
                    <label for="codLocal">Seleccionar Sede:</label>
                    <select id="codLocal" name="codLocal" class="form-control" style="width: 200px; display: inline-block;">
                        <option value="1">MundoCine Angamos</option>
                        <option value="2">MundoCine Gamarra</option>
                        <option value="3">MundoCine San Miguel</option>
                    </select>
                    <button type="submit" class="btn btn-primary ml-2">Filtrar</button>
                </form>
                <table id="claimsTable" class="table table-bordered mt-3 display">
                    <thead>
                        <tr>
                            <th>Código</th>
                            <th>Nombre</th>
                            <th>Correo</th>
                            <th>DNI</th>
                            <th>Fecha</th>
                            <th>Asunto</th>
                            <th>Contenido</th>
                            <th>Opciones</th>
                        </tr>
                    </thead>
                    <tbody>
                        <c:forEach var="claim" items="${claimsList}">
                            <tr>
                                <td>${claim.id_reclamos}</td>
                                <td>${claim.nombre_cliente}</td>
                                <td>${claim.correo_reclamo}</td>
                                <td>${claim.dni_reclamo}</td>
                                <td>${claim.fecha_reclamo}</td>
                                <td>${claim.asunto_reclamo}</td>
                                <td>${claim.contenido_reclamo}</td>
                                <td>
                                    <a href="editClaim?id=${claim.id_reclamos}" class="btn btn-primary btn-sm"><i class="fa fa-edit"></i> Editar</a>
                                    <a href="deleteClaim?id=${claim.id_reclamos}&codLocal=${claim.cod_local}" class="btn btn-danger btn-sm" onclick="return confirm('¿Está seguro de que desea eliminar este reclamo?');"><i class="fa fa-trash"></i> Borrar</a>
                                </td>
                            </tr>
                        </c:forEach>
                    </tbody>
                </table>
            </div>
        </div>
    </body>
</html>
