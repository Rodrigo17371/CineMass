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
        <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css" rel="stylesheet"/>
        <link href="resources/css/adminDasboard.css" rel="stylesheet" type="text/css"/>      
        <link href="resources/css/Admin.css" rel="stylesheet" type="text/css"/>
        <link href="resources/css/Admin-Display.css" rel="stylesheet" type="text/css"/>
        <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
        <script src="https://cdn.datatables.net/1.10.21/js/jquery.dataTables.js"></script>
        <title>Gestión de Reclamos - Dashboard</title>
        <style>
            .dashboard-header {
                background: linear-gradient(135deg, #1d242e 0%, #283342 100%);
                color: white;
                padding: 2rem;
                border-radius: 8px;
                margin-bottom: 2rem;
            }
            
            .stats-container {
                display: grid;
                grid-template-columns: repeat(auto-fit, minmax(250px, 1fr));
                gap: 1.5rem;
                margin-bottom: 2rem;
            }
            
            .stat-card {
                background: white;
                padding: 1.5rem;
                border-radius: 8px;
                box-shadow: 0 2px 4px rgba(0,0,0,0.1);
                transition: transform 0.3s ease;
            }
            
            .stat-card:hover {
                transform: translateY(-5px);
            }
            
            .stat-icon {
                font-size: 2rem;
                margin-bottom: 1rem;
                color: #009099;
            }
            
            .stat-value {
                font-size: 1.5rem;
                font-weight: bold;
                color: #1d242e;
            }
            
            .stat-label {
                color: #666;
                font-size: 0.9rem;
            }
            
            .filter-section {
                background: white;
                padding: 1.5rem;
                border-radius: 8px;
                box-shadow: 0 2px 4px rgba(0,0,0,0.1);
                margin-bottom: 2rem;
            }
            
            .filter-form {
                display: flex;
                gap: 1rem;
                align-items: center;
                flex-wrap: wrap;
            }
            
            .filter-group {
                flex: 1;
                min-width: 200px;
            }
            
            .claims-table-container {
                background: white;
                padding: 1.5rem;
                border-radius: 8px;
                box-shadow: 0 2px 4px rgba(0,0,0,0.1);
            }
            
            #claimsTable {
                width: 100% !important;
            }
            
            .action-button {
                padding: 0.5rem 1rem;
                border-radius: 4px;
                transition: all 0.3s ease;
            }
            
            .action-button:hover {
                transform: translateY(-2px);
            }
            
            .status-badge {
                padding: 0.25rem 0.75rem;
                border-radius: 50px;
                font-size: 0.85rem;
                font-weight: 500;
            }
            
            .status-pending {
                background: #fff3cd;
                color: #856404;
            }
            
            .status-resolved {
                background: #d4edda;
                color: #155724;
            }
            
            .status-processing {
                background: #cce5ff;
                color: #004085;
            }
        </style>
        <script>
            $(document).ready(function() {
                // Inicializar DataTable con configuración personalizada
                $('#claimsTable').DataTable({
                    language: {
                        url: '//cdn.datatables.net/plug-ins/1.10.21/i18n/Spanish.json'
                    },
                    responsive: true,
                    order: [[4, 'desc']], // Ordenar por fecha por defecto
                    pageLength: 10,
                    dom: '<"top"lf>rt<"bottom"ip><"clear">'
                });
                
                // Actualizar estadísticas en tiempo real
                updateStats();
            });
            
            function updateStats() {
                // Aquí irían las llamadas AJAX para actualizar las estadísticas en tiempo real
                // Este es solo un ejemplo estático
            }
        </script>
    </head>
    <body class="parent-container">
        <jsp:include page="components/navegadorAdm.jsp"/>
        <script src="resources/scrip/AdmPng.js" type="text/javascript"></script>
        <div class="box-content">
            <div class="container">
                <!-- Dashboard Header -->
                <div class="dashboard-header">
                    <h1><i class="fas fa-clipboard-list"></i> Panel de Gestión de Reclamos</h1>
                    <p class="mb-0">Gestiona y supervisa todos los reclamos de clientes</p>
                </div>
                
                <!-- Stats Section -->
                <div class="stats-container">
                    <div class="stat-card">
                        <i class="fas fa-exclamation-circle stat-icon"></i>
                        <div class="stat-value">24</div>
                        <div class="stat-label">Reclamos Pendientes</div>
                    </div>
                    <div class="stat-card">
                        <i class="fas fa-check-circle stat-icon"></i>
                        <div class="stat-value">156</div>
                        <div class="stat-label">Reclamos Resueltos</div>
                    </div>
                    <div class="stat-card">
                        <i class="fas fa-clock stat-icon"></i>
                        <div class="stat-value">3.2 días</div>
                        <div class="stat-label">Tiempo Promedio de Respuesta</div>
                    </div>
                    <div class="stat-card">
                        <i class="fas fa-percentage stat-icon"></i>
                        <div class="stat-value">92%</div>
                        <div class="stat-label">Tasa de Resolución</div>
                    </div>
                </div>
                
                <!-- Filter Section -->
                <div class="filter-section">
                    <h5 class="mb-3"><i class="fas fa-filter"></i> Filtros de Búsqueda</h5>
                    <form action="SvAdmClaims" method="get" class="filter-form">
                        <div class="filter-group">
                            <label for="codLocal">Sede:</label>
                            <select id="codLocal" name="codLocal" class="form-control">
                                <option value="">Todas las sedes</option>
                                <option value="1">MundoCine Angamos</option>
                                <option value="2">MundoCine Gamarra</option>
                                <option value="3">MundoCine San Miguel</option>
                            </select>
                        </div>
                        <div class="filter-group">
                            <label for="dateRange">Rango de Fechas:</label>
                            <input type="date" class="form-control" id="startDate" name="startDate">
                        </div>
                        <div class="filter-group">
                            <label for="status">Estado:</label>
                            <select id="status" name="status" class="form-control">
                                <option value="">Todos los estados</option>
                                <option value="pending">Pendiente</option>
                                <option value="processing">En Proceso</option>
                                <option value="resolved">Resuelto</option>
                            </select>
                        </div>
                        <div class="filter-group" style="flex: 0 0 auto;">
                            <label>&nbsp;</label>
                            <button type="submit" class="btn btn-primary btn-block">
                                <i class="fas fa-search"></i> Buscar
                            </button>
                        </div>
                    </form>
                </div>
                
                <!-- Claims Table -->
                <div class="claims-table-container">
                    <table id="claimsTable" class="table table-hover">
                        <thead>
                            <tr>
                                <th>Código</th>
                                <th>Nombre</th>
                                <th>Correo</th>
                                <th>DNI</th>
                                <th>Fecha</th>
                                <th>Asunto</th>
                                <th>Estado</th>
                                <th>Acciones</th>
                            </tr>
                        </thead>
                        <tbody>
                            <c:forEach var="claim" items="${claimsList}">
                                <tr>
                                    <td><strong>#${claim.id_reclamos}</strong></td>
                                    <td>${claim.nombre_cliente}</td>
                                    <td>${claim.correo_reclamo}</td>
                                    <td>${claim.dni_reclamo}</td>
                                    <td>${claim.fecha_reclamo}</td>
                                    <td>${claim.asunto_reclamo}</td>
                                    <td>
                                        <span class="status-badge status-pending">
                                            Pendiente
                                        </span>
                                    </td>
                                    <td>
                                        <div class="btn-group">
                                            <a href="viewClaim?id=${claim.id_reclamos}" 
                                               class="btn btn-info btn-sm action-button" 
                                               title="Ver Detalles">
                                                <i class="fas fa-eye"></i>
                                            </a>
                                            <a href="editClaim?id=${claim.id_reclamos}" 
                                               class="btn btn-primary btn-sm action-button" 
                                               title="Editar">
                                                <i class="fas fa-edit"></i>
                                            </a>
                                            <a href="deleteClaim?id=${claim.id_reclamos}&codLocal=${claim.cod_local}" 
                                               class="btn btn-danger btn-sm action-button" 
                                               onclick="return confirm('¿Está seguro de que desea eliminar este reclamo?');"
                                               title="Eliminar">
                                                <i class="fas fa-trash"></i>
                                            </a>
                                        </div>
                                    </td>
                                </tr>
                            </c:forEach>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </body>
</html>