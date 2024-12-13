<%@page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="modelo.dao.CustomerDAO" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="modelo.dto.Customer" %>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="resources/css/adminDasboard.css" rel="stylesheet" type="text/css"/>
        <link href="resources/css/Admin.css" rel="stylesheet" type="text/css"/>
        <link href="resources/css/Admin-Display.css" rel="stylesheet" type="text/css"/>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
        <link href="https://cdn.datatables.net/1.12.1/css/dataTables.bootstrap5.min.css" rel="stylesheet">
        <title>Gestión de Clientes</title>
    </head>
    <body class="parent-container">
        <jsp:include page="components/navegadorAdm.jsp"/>
        <script src="resources/scrip/AdmPng.js" type="text/javascript"></script>

        <div class="container">
            <hr>
            <div class="row align-items-start">
                <div class="col-9"><h1>Gestión de Clientes</h1></div>
                <div class="col-3 align-self-center">
                    <div class="d-grid gap-2">
                        <button type="button" class="btn btn-success" data-bs-toggle="modal" data-bs-target="#modalRegistrar">Registrar</button>
                    </div>
                </div>
            </div>
            <hr>
            <div class="table-responsive">
                <table class="table table-striped" id="mydataTable">
                    <thead>
                        <tr>
                            <th>Código</th>
                            <th>Nombre</th>
                            <th>Apellido Paterno</th>
                            <th>Apellido Materno</th>
                            <th>DNI</th>
                            <th>Correo</th>
                            <th>Usuario</th>
                            <th>Acciones</th>
                        </tr>
                    </thead>
                    <tbody>
                        <%
                            CustomerDAO customerDAO = new CustomerDAO();
                            ArrayList<Customer> listaCustomer = customerDAO.mostrarClientes();
                            for (Customer c : listaCustomer) {
                        %>
                        <tr>
                            <td><%= c.getCodcliente()%></td>
                            <td><%= c.getNombre()%></td>
                            <td><%= c.getApepaterno()%></td>
                            <td><%= c.getApematerno()%></td>
                            <td><%= c.getDni()%></td>
                            <td><%= c.getCorreo()%></td>
                            <td><%= c.getUsuario()%></td>
                            <td>
                                <button class="btn btn-warning btnEdit" data-id="<%= c.getCodcliente()%>">Editar</button>
                                <button class="btn btn-danger btnDelete" data-id="<%= c.getCodcliente()%>" data-nombre="<%= c.getNombre()%>">Eliminar</button>
                            </td>
                        </tr>
                        <%
                            }
                        %>
                    </tbody>
                </table>
            </div>
        </div>

        <!-- Modales para Registrar, Actualizar, Eliminar y Detalles -->

        <!-- Modal Registrar -->
        <div class="modal fade" id="modalRegistrar" tabindex="-1" aria-labelledby="modalRegistrarLabel" aria-hidden="true">
            <div class="modal-dialog">
                <div class="modal-content">
                    <!-- Encabezado -->
                    <div class="modal-header">
                        <h5 class="modal-title" id="modalRegistrarLabel">Registrar Cliente</h5>
                        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                    </div>
                    <!-- Cuerpo -->
                    <div class="modal-body">
                        <form id="formRegistrar">
                            <div class="mb-3">
                                <label for="nombre" class="form-label">Nombre</label>
                                <input type="text" class="form-control" id="nombre" required>
                            </div>
                            <div class="mb-3">
                                <label for="apepaterno" class="form-label">Apellido Paterno</label>
                                <input type="text" class="form-control" id="apepaterno" required>
                            </div>
                            <div class="mb-3">
                                <label for="apematerno" class="form-label">Apellido Materno</label>
                                <input type="text" class="form-control" id="apematerno" required>
                            </div>
                            <div class="mb-3">
                                <label for="dni" class="form-label">DNI</label>
                                <input type="text" class="form-control" id="dni" required>
                            </div>
                            <div class="mb-3">
                                <label for="fechanacimiento" class="form-label">Fecha de Nacimiento</label>
                                <input type="date" class="form-control" id="fechanacimiento" required>
                            </div>
                            <div class="mb-3">
                                <label for="usuario" class="form-label">Usuario</label>
                                <input type="text" class="form-control" id="usuario" required>
                            </div>
                            <div class="mb-3">
                                <label for="correo" class="form-label">Correo</label>
                                <input type="email" class="form-control" id="correo" required>
                            </div>
                            <div class="mb-3">
                                <label for="contrasena" class="form-label">Contraseña</label>
                                <input type="password" class="form-control" id="contrasena" required>
                            </div>
                        </form>
                    </div>
                    <!-- Pie -->
                    <div class="modal-footer">
                        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Cerrar</button>
                        <button type="button" class="btn btn-primary" id="btnSave">Guardar</button>
                    </div>
                </div>
            </div>
        </div>

        <!-- Modal Editar -->
        <div class="modal fade" id="modalEditar" tabindex="-1" aria-labelledby="modalEditarLabel" aria-hidden="true">
            <div class="modal-dialog">
                <div class="modal-content">
                    <!-- Encabezado -->
                    <div class="modal-header">
                        <h5 class="modal-title" id="modalEditarLabel">Editar Cliente</h5>
                        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                    </div>
                    <!-- Cuerpo -->
                    <div class="modal-body">
                        <form id="formEditar">
                            <input type="hidden" id="codclienteEditar">
                            <div class="mb-3">
                                <label for="nombreEditar" class="form-label">Nombre</label>
                                <input type="text" class="form-control" id="nombreEditar" required>
                            </div>
                            <div class="mb-3">
                                <label for="apepaternoEditar" class="form-label">Apellido Paterno</label>
                                <input type="text" class="form-control" id="apepaternoEditar" required>
                            </div>
                            <div class="mb-3">
                                <label for="apematernoEditar" class="form-label">Apellido Materno</label>
                                <input type="text" class="form-control" id="apematernoEditar" required>
                            </div>
                            <div class="mb-3">
                                <label for="dniEditar" class="form-label">DNI</label>
                                <input type="text" class="form-control" id="dniEditar" required>
                            </div>
                            <div class="mb-3">
                                <label for="fechanacimientoEditar" class="form-label">Fecha de Nacimiento</label>
                                <input type="date" class="form-control" id="fechanacimientoEditar" required>
                            </div>
                            <div class="mb-3">
                                <label for="usuarioEditar" class="form-label">Usuario</label>
                                <input type="text" class="form-control" id="usuarioEditar" required>
                            </div>
                            <div class="mb-3">
                                <label for="correoEditar" class="form-label">Correo</label>
                                <input type="email" class="form-control" id="correoEditar" required>
                            </div>
                            <div class="mb-3">
                                <label for="contrasenaEditar" class="form-label">Contraseña</label>
                                <input type="password" class="form-control" id="contrasenaEditar">
                            </div>
                        </form>
                    </div>
                    <!-- Pie -->
                    <div class="modal-footer">
                        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Cerrar</button>
                        <button type="button" class="btn btn-primary" id="btnUpdate">Actualizar</button>
                    </div>
                </div>
            </div>
        </div>


        <!-- Modal Eliminar -->
        <div class="modal fade" id="modalEliminar" tabindex="-1" aria-labelledby="modalEliminarLabel" aria-hidden="true">
            <div class="modal-dialog">
                <div class="modal-content">
                    <!-- Encabezado -->
                    <div class="modal-header">
                        <h5 class="modal-title" id="modalEliminarLabel">Eliminar Cliente</h5>
                        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                    </div>
                    <!-- Cuerpo -->
                    <div class="modal-body">
                        <p>¿Estás seguro de que deseas eliminar al cliente <strong id="nombreEliminar"></strong>?</p>
                        <input type="hidden" id="codclienteEliminar">
                    </div>
                    <!-- Pie -->
                    <div class="modal-footer">
                        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Cancelar</button>
                        <button type="button" class="btn btn-danger" id="btnDelete">Eliminar</button>
                    </div>
                </div>
            </div>
        </div>

        <!-- Modal Detalles -->
        <div class="modal fade" id="modalDetalles" tabindex="-1" aria-labelledby="modalDetallesLabel" aria-hidden="true">
            <div class="modal-dialog modal-lg">
                <div class="modal-content">
                    <!-- Encabezado -->
                    <div class="modal-header">
                        <h5 class="modal-title" id="modalDetallesLabel">Detalles del Usuario</h5>
                        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                    </div>
                    <!-- Cuerpo -->
                    <div class="modal-body">
                        <!-- Mostrar los detalles del usuario -->
                        <table class="table table-bordered">
                            <tr>
                                <th>Creado Por</th>
                                <td id="detalleCreadoPor"></td>
                            </tr>
                            <tr>
                                <th>Fecha de Creación</th>
                                <td id="detalleFecCreacion"></td>
                            </tr>
                            <tr>
                                <th>Hora de Creación</th>
                                <td id="detalleHoraCreacion"></td>
                            </tr>
                            <tr>
                                <th>Modificado Por</th>
                                <td id="detalleModificadoPor"></td>
                            </tr>
                            <tr>
                                <th>Fecha de Modificación</th>
                                <td id="detalleFecModificacion"></td>
                            </tr>
                            <tr>
                                <th>Hora de Modificación</th>
                                <td id="detalleHoraModificacion"></td>
                            </tr>
                            <tr>
                                <th>Eliminado Por</th>
                                <td id="detalleEliminadoPor"></td>
                            </tr>
                            <tr>
                                <th>Fecha de Eliminación</th>
                                <td id="detalleFecEliminacion"></td>
                            </tr>
                            <tr>
                                <th>Hora de Eliminación</th>
                                <td id="detalleHoraEliminacion"></td>
                            </tr>
                            <!-- Agrega más campos si es necesario -->
                        </table>
                    </div>
                    <!-- Pie -->
                    <div class="modal-footer">
                        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Cerrar</button>
                    </div>
                </div>
            </div>
        </div>

        <!-- JAVASCRIPT -->
        <!-- jQuery -->
        <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
        <!-- Bootstrap JS Bundle (incluye Popper) -->
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
        <!-- DataTables JS -->
        <script src="https://cdn.datatables.net/1.12.1/js/jquery.dataTables.min.js"></script>
        <!-- DataTables Bootstrap 5 JS -->
        <script src="https://cdn.datatables.net/1.12.1/js/dataTables.bootstrap5.min.js"></script>

        <script>
            $(document).ready(function () {
                // Inicializa DataTables
                $('#mydataTable').DataTable();

                // Registrar nuevo usuario
                $('#btnSave').click(function () {
                    const data = {
                        action: 'register',
                        nombre: $('#nombre').val(),
                        apepaterno: $('#apepaterno').val(),
                        apematerno: $('#apematerno').val(),
                        dni: $('#dni').val(),
                        fechanacimiento: $('#fechanacimiento').val(),
                        usuario: $('#usuario').val(),
                        correo: $('#correo').val(),
                        contrasena: $('#contrasena').val()
                    };

                    $.ajax({
                        type: 'POST',
                        url: 'CustomerServlet',
                        data: data,
                        success: function (response) {
                            alert('Cliente registrado exitosamente');
                            location.reload();
                        },
                        error: function () {
                            alert('Error al registrar el cliente');
                        }
                    });
                });


                // Cargar datos del usuario para editar
                $('.btnEdit').click(function () {
                    const id = $(this).data('id');
                    $.ajax({
                        type: 'GET',
                        url: 'CustomerServlet',
                        data: {action: 'getCustomer', codcliente: id},
                        dataType: 'json',
                        success: function (customer) {
                            $('#codclienteEditar').val(customer.codcliente);
                            $('#nombreEditar').val(customer.nombre);
                            $('#apepaternoEditar').val(customer.apepaterno);
                            $('#apematernoEditar').val(customer.apematerno);
                            $('#dniEditar').val(customer.dni);
                            $('#fechanacimientoEditar').val(customer.fechanacimiento);
                            $('#usuarioEditar').val(customer.usuario);
                            $('#correoEditar').val(customer.correo);
                            $('#contrasenaEditar').val(customer.contrasena);
                            $('#modalEditar').modal('show');
                        },
                        error: function () {
                            alert('Error al obtener los datos del cliente');
                        }
                    });
                });


                
                // Actualizar cliente
                $('#btnUpdate').click(function () {
                    const data = {
                        action: 'update',
                        codcliente: $('#codclienteEditar').val(),
                        nombre: $('#nombreEditar').val(),
                        apepaterno: $('#apepaternoEditar').val(),
                        apematerno: $('#apematernoEditar').val(),
                        dni: $('#dniEditar').val(),
                        fechanacimiento: $('#fechanacimientoEditar').val(),
                        usuario: $('#usuarioEditar').val(),
                        correo: $('#correoEditar').val(),
                        contrasena: $('#contrasenaEditar').val()
                    };

                    $.ajax({
                        type: 'POST',
                        url: 'CustomerServlet',
                        data: data,
                        success: function (response) {
                            alert('Cliente actualizado exitosamente');
                            location.reload();
                        },
                        error: function (xhr, status, error) {
                            console.error("Error al actualizar el cliente:", error);
                            console.error("Estado:", status);
                            console.error("Respuesta del servidor:", xhr.responseText);
                            alert('Error al actualizar el cliente: ' + xhr.responseText);
                        }
                    });
                });


                // Cargar datos del usuario para eliminar
                $('.btnDelete').click(function () {
                    const id = $(this).data('id');
                    const nombre = $(this).data('nombre');
                    $('#codclienteEliminar').val(id);
                    $('#nombreEliminar').text(nombre);
                    $('#modalEliminar').modal('show');
                });

                $('#btnDelete').click(function () {
                    const id = $('#codclienteEliminar').val();
                    $.ajax({
                        type: 'POST',
                        url: 'CustomerServlet',
                        data: {action: 'delete', codcliente: id},
                        success: function (response) {
                            alert('Cliente eliminado exitosamente');
                            location.reload();
                        },
                        error: function () {
                            alert('Error al eliminar el cliente');
                        }
                    });
                });


                // Manejador para el botón Detalles
                $('.btnDetails').click(function () {
                    const id = $(this).data('id');
                    $.ajax({
                        type: 'GET',
                        url: 'UsuarioServlet',
                        data: {action: 'getDetails', idUsuario: id},
                        dataType: 'json',
                        success: function (usuario) {
                            // Llena el modal con los datos recibidos
                            $('#detalleCreadoPor').text(usuario.creadoPor);
                            $('#detalleFecCreacion').text(usuario.fecCreacion);
                            $('#detalleHoraCreacion').text(usuario.horaCreacion);
                            $('#detalleModificadoPor').text(usuario.modificadoPor);
                            $('#detalleFecModificacion').text(usuario.fecModificacion);
                            $('#detalleHoraModificacion').text(usuario.horaModificacion);
                            $('#detalleEliminadoPor').text(usuario.eliminadoPor);
                            $('#detalleFecEliminacion').text(usuario.fecEliminacion);
                            $('#detalleHoraEliminacion').text(usuario.horaEliminacion);
                            // Muestra el modal
                            $('#modalDetalles').modal('show');
                        },
                        error: function () {
                            alert('Error al obtener los detalles del usuario');
                        }
                    });
                });
            });
        </script>
    </body>
</html>
