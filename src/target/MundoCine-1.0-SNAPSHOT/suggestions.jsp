<%-- 
    Document   : Suggestions
    Created on : 21 abr. 2024, 20:29:36
    Author     : Victor
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Sugerencias y Reclamaciones</title>
        <link href="resources/css/suggestions.css" rel="stylesheet" type="text/css"/>
        <link href="resources/css/home.css" rel="stylesheet" type="text/css"/>
        <link href="resources/css/piePagina.css" rel="stylesheet" type="text/css"/>
        <script>
                 window.addEventListener('click', function(event) {
                    var dropdownMenu = document.getElementById("dropdown-navbar-menu");
                    var toggleButton = document.getElementById("togglebtn-dropdown");
                    var toggleButton2 = document.getElementById("togglebtn-dropdown2");
                    var toggleButtonIcon = document.getElementById("togglebtn-icon");
                    // Verificar si el clic no fue dentro del menú ni en el botón de alternancia
                    if (!dropdownMenu.contains(event.target) && event.target !== toggleButton && event.target !== toggleButton2 && event.target !== toggleButtonIcon) {
                        dropdownMenu.classList.remove("show"); // Ocultar el menú
                    }
                });
                
                function toggleMenu() {
                    var dropdownMenu = document.getElementById("dropdown-navbar-menu");
                    dropdownMenu.classList.toggle("show"); // Agregar o eliminar la clase "show"
                }
                function redirigirHome() {
                    // Redirigir a la página deseada
                    window.location.href = "home.jsp";
                }
                function redirigirHelpCenter() {
                    // Redirigir a la página deseada
                    window.location.href = "HelpCenter.jsp";
                }
                function redirigirSuggestions() {
                    // Redirigir a la página deseada
                    window.location.href = "suggestions.jsp";
                }
                function redirigirContactUs() {
                    // Redirigir a la página deseada
                    window.location.href = "contact-us.jsp";
                }
            </script>
    </head>
    <body>     
        <!-- ESTO ES EL NAVBAR -->
        <div class="navbar">
            <div class="container-options">
                <div class="options">
                    <diV style="display: flex; flex-direction: row; gap: 24px; width: 90%;">
                    <div style="display: grid; place-items: center; width: fit-content; height: 36px">                        
                    <button onclick="redirigirHome()" style='display: flex; place-items: center; background: #16B3D6;
                            font-weight: bold; font-size: 1.5rem; border: transparent;
                            border-radius: 4px; cursor: pointer; height: 32px; padding: 0px 10px;
                            font-size: 1.25rem;'>
                        MundoCine
                    </button>                        
                    </div>
                    
                    <div id="btn-menu-container">
                        <button id="togglebtn-dropdown" class="btnnavbar btn-color" onclick="toggleMenu()">
                            <div id="togglebtn-dropdown2" style="display: flex; flex-direction: row; place-items: center; padding: 0px 16px; cursor: pointer;">
                                <img id="togglebtn-icon" src="resources/img/home-navbar/menu-bars.svg" 
                                     alt="menu barras icono" width="24" height="24"
                                     style="display: grid; place-items: center; padding-right: 10px">
                                Menú
                            </div>
                        </button> 
                        <div id="dropdown-navbar-menu"> 
                            <div class="dropdown-btn-option" onclick="redirigirHome()">
                                <svg class="svg-btndropdown" style="height: 24px; width: 24px; margin: 0px 12px 0px 0px;stroke-width:1.5px;pointer-events: none;" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg"><g id="SVGRepo_bgCarrier" stroke-width="0"></g><g id="SVGRepo_tracerCarrier" stroke-linecap="round" stroke-linejoin="round"></g><g id="SVGRepo_iconCarrier"> <g clip-path="url(#clip0_15_3)"> <rect width="24" height="24" fill="transparent"></rect> <path d="M9 21H4C3.44772 21 3 20.5523 3 20V12.4142C3 12.149 3.10536 11.8946 3.29289 11.7071L11.2929 3.70711C11.6834 3.31658 12.3166 3.31658 12.7071 3.70711L20.7071 11.7071C20.8946 11.8946 21 12.149 21 12.4142V20C21 20.5523 20.5523 21 20 21H15M9 21H15M9 21V15C9 14.4477 9.44772 14 10 14H14C14.5523 14 15 14.4477 15 15V21" stroke="#B3B3B3" stroke-linejoin="round"></path> </g> <defs> <clipPath id="clip0_15_3"> <rect width="24" height="24" fill=" "></rect> </clipPath> </defs> </g></svg>
                                <div style="height: fit-content;pointer-events: none;t">Inicio</div>
                            </div>
                            
                            <!-- style="height: 24px; width: 24px; margin: 0px 12px 0px 0px;stroke-width:1.5px" -->
                            <!-- #B3B3B3 -->
                            
                            <div class="dropdown-btn-option" onclick="redirigirHelpCenter()">
                                <svg class="svg-btndropdown" style="height: 24px; width: 24px; margin: 0px 12px 0px 0px;stroke-width:1.5px;pointer-events: none;" viewBox=0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg"><g id="SVGRepo_bgCarrier" stroke-width="0"></g><g id="SVGRepo_tracerCarrier" stroke-linecap="round" stroke-linejoin="round"></g><g id="SVGRepo_iconCarrier"> <circle class="circle-svg-questionsbtn" cx="12" cy="12" r="10" stroke="#B3B3B3" stroke-width="1.5"></circle> <path d="M10.125 8.875C10.125 7.83947 10.9645 7 12 7C13.0355 7 13.875 7.83947 13.875 8.875C13.875 9.56245 13.505 10.1635 12.9534 10.4899C12.478 10.7711 12 11.1977 12 11.75V13" stroke="#B3B3B3" stroke-width="1.5" stroke-linecap="round"></path> <circle class="svg-questioningpoint" cx="12" cy="16" r="1" fill="#B3B3B3"></circle> </g></svg>
                                <div style="height: fit-content;pointer-events: none;">Preguntas Frecuentes</div>
                            </div>
                            
                            <div class="dropdown-btn-option" onclick="redirigirContactUs()">
                                <svg class="svg-contactus" style="height: 24px; width: 24px; margin: 0px 12px 0px 0px;stroke-width:1.5px;pointer-events: none;" fill="#B3B3B3" version="1.1" id="XMLID_276_" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" viewBox="0 0 24 24" xml:space="preserve"><g id="SVGRepo_bgCarrier" stroke-width="0"></g><g id="SVGRepo_tracerCarrier" stroke-linecap="round" stroke-linejoin="round"></g><g id="SVGRepo_iconCarrier"> <g id="contact-us"> <g> <path d="M4,24v-5H0V0h23v19h-9.3L4,24z M2,17h4v3.7l7.3-3.7H21V2H2V17z"></path> </g> <g> <rect x="5" y="8" width="3" height="3"></rect> </g> <g> <rect x="10" y="8" width="3" height="3"></rect> </g> <g> <rect x="15" y="8" width="3" height="3"></rect> </g> </g> </g></svg>
                                <div style="height: fit-content;pointer-events: none;">Contáctenos</div>
                            </div>
                            
                            <div class="dropdown-btn-option" onclick="redirigirSuggestions()">
                                <svg class="svg-suggest" style="height: 24px; width: 24px; margin: 0px 12px 0px 0px;pointer-events: none;" version="1.1" id="IDEA" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" width="186px" height="186px" viewBox="0 0 1800.00 1800.00" enable-background="new 0 0 1800 1800" xml:space="preserve" fill="#B3B3B3" stroke="#B3B3B3" stroke-width="27"><g id="SVGRepo_bgCarrier" stroke-width="0"></g><g id="SVGRepo_tracerCarrier" stroke-linecap="round" stroke-linejoin="round" stroke="#CCCCCC" stroke-width="3.6"></g><g id="SVGRepo_iconCarrier"> <g> <path fill="#B3B3B3" d="M900.114,54.882c-329.509,0-597.583,268.077-597.583,597.59c0,219.592,118.159,418.518,309.714,523.794 v152.835h-0.127v122.121h-0.172v185.238h172.682c3.58,60.518,53.924,108.656,115.315,108.656 c61.39,0,111.736-48.139,115.31-108.656h172.571v-122.122h0.177v-185.237h-0.019v-152.835 c191.557-105.276,309.715-304.203,309.715-523.794C1497.697,322.959,1229.623,54.882,900.114,54.882z M675.235,1392.218h449.649 v59.005H675.235V1392.218z M899.943,1682.002c-29.441,0-48.627-22.507-51.876-45.541h103.788 C948.464,1662.119,926.504,1682.002,899.943,1682.002z M1124.708,1573.344H675.063v-59.005h449.645V1573.344z M1142.116,1129.132 l-17.25,8.778v189.457H931.559V861l187.201-187.21c12.323-12.323,12.323-32.302-0.005-44.63 c-12.318-12.318-32.302-12.323-44.629,0.004L900,803.299L725.875,629.165c-12.323-12.323-32.307-12.328-44.63-0.004 c-12.328,12.328-12.328,32.307-0.005,44.63L868.441,861v466.367H675.362V1137.91l-17.249-8.778 c-180.4-91.778-292.465-274.427-292.465-476.66c0-294.71,239.761-534.471,534.466-534.471 c294.706,0,534.466,239.761,534.466,534.471C1434.58,854.705,1322.516,1037.354,1142.116,1129.132z"></path> <path fill="#B3B3B3" d="M1066.667,246.225c-17.43,0-31.558,14.128-31.558,31.559s14.128,31.558,31.558,31.558 c49.641,0,165.99,59.634,165.99,175.279c0,17.431,14.128,31.559,31.558,31.559c17.431,0,31.559-14.128,31.559-31.559 C1295.773,328.101,1146.624,246.225,1066.667,246.225z"></path> <path fill="#B3B3B3" d="M209.331,712.881c0-17.43-14.128-31.558-31.558-31.558H34.686c-17.43,0-31.558,14.128-31.558,31.558 s14.128,31.558,31.558,31.558h143.087C195.203,744.439,209.331,730.312,209.331,712.881z"></path> <path fill="#B3B3B3" d="M220.157,300.096c6.164,6.163,14.239,9.245,22.317,9.245c8.075,0,16.153-3.082,22.313-9.241 c12.328-12.328,12.328-32.307,0.004-44.629L163.623,154.297c-12.318-12.319-32.303-12.323-44.63-0.004 c-12.327,12.327-12.327,32.307-0.004,44.63L220.157,300.096z"></path> <path fill="#B3B3B3" d="M220.17,1125.662l-101.178,101.174c-12.327,12.327-12.327,32.307-0.004,44.634 c6.164,6.164,14.238,9.246,22.317,9.246c8.074,0,16.153-3.082,22.312-9.246l101.179-101.173 c12.327-12.327,12.327-32.307,0.004-44.625C252.478,1113.344,232.493,1113.344,220.17,1125.662z"></path> <path fill="#B3B3B3" d="M1765.314,681.323h-143.083c-17.43,0-31.559,14.128-31.559,31.558s14.129,31.558,31.559,31.558h143.083 c17.43,0,31.558-14.128,31.558-31.558S1782.744,681.323,1765.314,681.323z"></path> <path fill="#B3B3B3" d="M1557.521,309.341c8.074,0,16.153-3.082,22.316-9.241l101.174-101.173 c12.322-12.327,12.322-32.307,0-44.634c-12.328-12.319-32.307-12.319-44.635,0l-101.173,101.173 c-12.323,12.328-12.323,32.307,0,44.634C1541.368,306.259,1549.447,309.341,1557.521,309.341z"></path> <path fill="#B3B3B3" d="M1579.829,1125.662c-12.318-12.318-32.302-12.318-44.63,0.01c-12.323,12.318-12.323,32.298,0.005,44.625 l101.178,101.173c6.159,6.164,14.238,9.246,22.312,9.246c8.075,0,16.154-3.082,22.318-9.246 c12.322-12.327,12.322-32.307-0.005-44.634L1579.829,1125.662z"></path> </g> </g></svg>
                                <div style="height: fit-content;pointer-events: none;">Sugerencias y reclamaciones</div>
                            </div>                            
                            
                        </div>
                    </div>
                               
                    <div class="Ccontainer-search">
                        <div class="search">
                            <button class="buttonall" style="display: flex; flex-direction: row; place-items: center">                                
                                Todo
                                <img src="resources/img/home-navbar/triangledown-btn.svg" 
                                 alt="Triangle Down Pointer" width="8" height="8"
                                 style="display: grid; place-items: center; padding-left: 10px;">
                            </button>
                            <input type="text" class="searcher" placeholder="Buscar en MundoCine">
                            <button class="buttonlens">                                
                                <svg xmlns="http://www.w3.org/2000/svg" height="24px" viewBox="0 0 24 24" width="24px" fill="#757575"><path d="M0 0h24v24H0V0z" fill="none"/><path d="M15.5 14h-.79l-.28-.27C15.41 12.59 16 11.11 16 9.5 16 5.91 13.09 3 9.5 3S3 5.91 3 9.5 5.91 16 9.5 16c1.61 0 3.09-.59 4.23-1.57l.27.28v.79l5 4.99L20.49 19l-4.99-5zm-6 0C7.01 14 5 11.99 5 9.5S7.01 5 9.5 5 14 7.01 14 9.5 11.99 14 9.5 14z" id="lupa"/></svg>
                            </button>
                        </div>
                    </div>
                    
                    </diV>
                   
                        <button class="btnnavbar btn-color" style="padding: 0px 16px; cursor: pointer; height: 36px">
                            Iniciar sesión
                        </button>
                </div>
            </div>
        </div>
        
        
        <div class="onpremiere">
            <div class="suggestions-container">
                 
                
                <div class="onpremiere-h1">
                    <div>Sugerencias</div>              
                 </div>
                <div class="mlps-header">
                    <div class="mlps-h-b"></div>
                    <div style="padding: 0px 0px 0px 12px">¡Nos encantaría escuchar tus sugerencias! ¿Tienes alguna idea para mejorar nuestro servicio? ¡Déjanos tus comentarios aquí!</div>
                </div>
                <div style="display: flex; place-content: center; margin: 50px 0px;">
                    <div class="suggesion-form">
                        <form action="/submit" method="post">
                            <label for="name">Nombre:</label><br>
                            <input class="up" type="text" id="name" name="name" required><br>
                            <label for="email">Correo electrónico:</label><br>
                            <input class="up" type="email" id="email" name="email" required><br>
                            <label for="suggestion">Sugerencia:</label><br>
                            <textarea class="up" id="suggestion" name="suggestion" rows="4" cols="42" required></textarea><br>
                            <input class="upbtn btn-color" type="submit" value="Enviar">
                        </form>
                    </div>
                </div>
                
                
                <div class="onpremiere-h1">
                    <div>Reclamos</div>              
                 </div>
                <div class="mlps-header">
                    <div class="mlps-h-b"></div>
                    <div style="padding: 0px 0px 0px 12px">¿Tienes algún problema o inconveniente que necesitamos conocer? ¡Queremos escucharte! Por favor, comparte tus preocupaciones con nosotros aquí.</div>
                </div>
                <div style="display: flex; place-content: center; margin: 50px 0px;">
                    <div class="suggesion-form">
                        <form action="/submit" method="post" enctype="multipart/form-data">
                            <label for="name">Nombre:</label><br>
                            <input class="up" type="text" id="name" name="name" required><br>
                            <label for="email">Correo electrónico:</label><br>
                            <input class="up" type="email" id="email" name="email" required><br>
                            <label for="complaintType">Tipo de reclamo:</label><br>
                            <select class="up" id="complaintType" name="complaintType" required>
                                <option value="" disabled selected>Selecciona un tipo de reclamo</option>
                                <option value="Producto defectuoso">Función cancelada</option>
                                <option value="Servicio al cliente">Servicio al cliente</option>
                                <option value="Facturación errónea">Cobro indebido</option>
                                <option value="Otros">Otros</option>
                            </select><br>
                            <label for="complaint">Reclamo:</label><br>
                            <textarea class="up" id="complaint" name="complaint" rows="4" cols="42" required></textarea><br>
                            <label for="file">Adjuntar archivo:</label><br>
                            <input class="up" type="file" id="file" name="file"><br>
                            <input class="upbtn btn-color" type="submit" value="Enviar">
                        </form>
                    </div>
                </div>
                
                
                
                            <footer style="margin-top: 150px;">
                    <div class="PieDePagina">
                        <div class="contacto">
                            <h3 style="padding-bottom: 10px;"><a href="contactenos_ubiquenos.php">CONTÁCTENOS</a></h3>
                            <hr style="margin-bottom: 10px;"></hr>
                            <h4 style="padding-bottom: 10px;"><strong><h4>Redes Sociales</h4></strong></h4>
                            <hr style="margin-bottom: 10px;"></hr> 
                            <h4 style="padding-bottom: 10px;"><p><strong>Teléfono</strong></p></h4>
                            <ul style="padding-bottom: 10px;">
                                <li>(+51) 964593567</li>
                            </ul>
                            <hr style="margin-bottom: 10px;"> </hr>
                            <h4 style="padding-bottom: 10px;"><p><strong>Horarios</strong></p></h4>
                            <ul style="padding-bottom: 10px;"><li>Lun-Sab: 8:00 am - 00:00 pm</li></ul>
                            <hr style="margin-bottom: 10px;"></hr> 
                            <h4 style="padding-bottom: 10px;"><p><strong>Email</strong></p></h4>
                            <ul style="padding-bottom: 10px;">  
                                <li>MundoCine@gmail.com</li
                            </ul>

                        </div>

                        <div class="enlaces-importantes">
                            <h3 style="padding-bottom: 10px;">ENLACES IMPORTANTES</h3>
                            <hr style="margin-bottom: 10px;"> </hr>
                            <h4 style="padding-bottom: 10px;"><a href="FrmReclamos.php">Libro de reclamaciones</a></h4>
                            <hr style="margin-bottom: 10px;"></hr>
                            <h4 style="padding-bottom: 10px;"><a href="FrmSugerencias.php">Sugerencias</a></h4>
                        </div> 

                        <div class="Informacion">
                            <h3 style="padding-bottom: 10px;"><strong>INFORMACIÓN</strong></h3>
                            <hr style="margin-bottom: 10px;"></hr>
                            <h4 style="padding-bottom: 10px;"><strong><a href="Nosotros.php">Nosotros</a></strong></h4>
                             <hr style="margin-bottom: 10px;"></hr>  
                             <h4 style="padding-bottom: 10px;"><strong><a href="contactenos_ubiquenos.php">Nuestros Cines</a></strong></h4>
                            <ul style="padding-bottom: 10px;">
                            <li style="padding-bottom: 10px;">Plaza Norte</li>
                            <li style="padding-bottom: 10px;">Mega Plaza</li>
                            <li style="padding-bottom: 10px;">Real Plaza</li>
                            <li style="padding-bottom: 10px;">Mall Aventura Santa Anita</li>
                            <li style="padding-bottom: 10px;">Plaza Sur</li>
                            <li style="padding-bottom: 10px;">Jockey Plaza</li>
                            </ul>
                            <hr style="margin-bottom: 10px;"></hr>
                            <h4 style="padding-bottom: 10px;"><strong><a href="#">¿Cómo adquirir entradas?</a></strong></h4>
                            <hr style="margin-bottom: 10px;"></hr>

                            <h4 style="padding-bottom: 10px;"><strong><a hhref="HelpCenter.jsp">Preguntas frecuentes</a></strong></h4>
                        </div>
                    </div>

                </footer>
                
                
                
            </div>    
            
        </div> 
        
        
        
        
        
        
        
    </body>
</html>


