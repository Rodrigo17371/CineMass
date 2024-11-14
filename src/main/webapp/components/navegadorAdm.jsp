<div class="admin">
    <div class="logo">
        <img id="logoEnchufate" style="height:60px; width:60px; margin: 10px 8px" alt=""/>
        Mundo Cine
    </div>
    <div class="nav-admin">
        <div style="overflow: hidden; overflow-y: auto">                    
            <div style="display:flex;flex-direction:row; height: fit-content; width:100%; justify-content: center; align-items: center; padding: 30px 0px;">
                <img id="adminImg" alt=""/>
                <div style="display: flex; flex-direction: column; padding: 0px 10px;">
                    <label style="color: white;font-weight: 600; margin: 5px 0px;"></label>
                    <label  style="color: #00FEC1;font-weight: 600;">Administrador</label>
                </div>
            </div>
            <div class="button-nav-admin" onclick="location.href = './AdmClaims.jsp';">
                <div style="display: flex; justify-content: end;"></div>
                <div>Manejo de Reclamos</div>
            </div>
            <div class="button-nav-admin" onclick="location.href = './AdmEmpleados.jsp';">
                <div style="display: flex; justify-content: end;"></div>
                <div style="display: flex; align-items: center;">Empleados</div>                
            </div>
            <div class="button-nav-admin" onclick="location.href = './AdmClientes.jsp';">
                <div style="display: flex; justify-content: end;"></div>
                <div style="display: flex; align-items: center;">Clientes</div>                
            </div>
            <div class="button-nav-admin" onclick="location.href = './AdmProductos.jsp';">
                <div style="display: flex; justify-content: end;"></div>
                <div style="display: flex; align-items: center;" href="EnchufateWeb/AdmProductos.jsp">Dulceria</div>               
            </div>         
            <div class="button-nav-admin" onclick="location.href = './AdmCubiculos.jsp';">
                <div style="display: flex; justify-content: end;"></div>
                <div style="display: flex; align-items: center;">Reservas Peliculas</div>               
            </div>                             
            <div class="button-nav-admin" onclick="location.href = './home.jsp';">
                <div style="display: flex; justify-content: end;"></div>
                <div>Cerrar Sesión</div>
            </div>
        </div>
    </div>
    <script>
        (function setImgPath() {
            document.getElementById("logoEnchufate").
                    setAttribute("src", "resources/img/AdmNav/Logo.png");
            document.getElementById("adminImg").
                    setAttribute("src", "resources/img/AdmNav/admin.png");
        })();
    </script>
</div>