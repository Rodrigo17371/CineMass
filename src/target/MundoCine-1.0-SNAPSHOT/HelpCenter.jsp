<%-- 
    Document   : HelpCenter
    Created on : 20 abr. 2024, 21:16:53
    Author     : usuario
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Preguntas Frecuentes</title>
        <link href="resources/css/hp.css" rel="stylesheet" type="text/css"/>
        <link href="resources/css/home.css" rel="stylesheet" type="text/css"/>
        <link href="resources/css/piePagina.css" rel="stylesheet" type="text/css"/>
        <link rel="stylesheet" href="https://images-na.ssl-images-amazon.com/images/I/11EIQ5IGqaL._RC|01e5ncglxyL.css,01lF2n-pPaL.css,41kFcbwbhrL.css,31+Z83i6adL.css,01IWMurvs8L.css,013z33uKh2L.css,01qPl4hxayL.css,01g+NWirX6L.css,41EWOOlBJ9L.css,11TIuySqr6L.css,01ElnPiDxWL.css,11fJbvhE5HL.css,01Dm5eKVxwL.css,01IdKcBuAdL.css,01y-XAlI+2L.css,21yimAg6YwL.css,01oDR3IULNL.css,51PjmZTX66L.css,01XPHJk60-L.css,01S0vRENeAL.css,21IbH+SoKSL.css,11MrAKjcAKL.css,21fecG8pUzL.css,11a5wZbuKrL.css,01CFUgsA-YL.css,31pHA2U5D9L.css,116t+WD27UL.css,11gKCCKQV+L.css,11061HxnEvL.css,11oHt2HYxnL.css,01j2JE3j7aL.css,11JQtnL-6eL.css,21zZ8mQ5z6L.css,11thAWu6MZL.css,0114z6bAEoL.css,21uwtfqr5aL.css,11QyqG8yiqL.css,11K24eOJg4L.css,11F2+OBzLyL.css,01890+Vwk8L.css,01g+cOYAZgL.css,01cbS3UK11L.css,21F85am0yFL.css,01giMEP+djL.css_.css?AUIClients/AmazonUI#us.not-trident">
        <link rel="stylesheet" href="https://images-na.ssl-images-amazon.com/images/I/01LPI7Ef+XL.css?AUIClients/IMDbProSiteHappyOrNotAssets">
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
                                <div style="height: fit-content;pointer-events: none;">Inicio</div>
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
                                      
                    
                   
                    
                    </diV>
                   
                        <button class="btnnavbar btn-color" style="padding: 0px 16px; cursor: pointer; height: 36px">
                            Iniciar sesión
                        </button>
                </div>
            </div>
        </div>
        
        
        <div class="hp-container">
            <div id="search_area" class="a-section a-padding-extra-large a-text-center">
            <div class="a-section content_container">
                <!-- comment <a class="a-spacing-base a-spacing-top-extra-large a-link-normal aok-block header_imdb_logo" href=""></a>-->
                <p class="a-spacing-base a-size-extra-large" style="margin-top: 120px;">
                    Preguntas Frecuentes
                </p>
            </div>
        </div>
            <div style="display: grid; grid-template-columns: 1fr 1fr;">
            <div class="question-container" >
                <ul class="a-unordered-list a-nostyle a-vertical">
                    <li class="a-spacing-mini">
                        <a class="a-link-normal" href="#" onclick="showAnswer('answer1')">
                            ¿Cuáles son los horarios de las funciones de cine?
                        </a>
                    </li>
                    <li class="a-spacing-mini">
                        <a class="a-link-normal" href="#" onclick="showAnswer('answer2')">
                            ¿Cómo puedo comprar entradas de cine?
                        </a>
                        </li>
                    <li class="a-spacing-mini">
                        <a class="a-link-normal" href="#" onclick="showAnswer('answer3')">
                            ¿Hay descuentos disponibles para estudiantes, personas mayores o grupos grandes?
                        </a>
                    </li>
                    <li class="a-spacing-mini">
                        <a class="a-link-normal" href="#" onclick="showAnswer('answer4')">
                            ¿Cuál es la política de reembolso para las entradas de cine?
                        </a>
                    </li>
                    <li class="a-spacing-mini">
                        <a class="a-link-normal" href="#" onclick="showAnswer('answer5')">
                            ¿Puedo comprar entradas en línea y recogerlas en el cine?
                        </a>
                    </li>
                    <li class="a-spacing-mini">
                        <a class="a-link-normal" href="#" onclick="showAnswer('answer6')">
                            ¿Puedo llevar comida y bebida del exterior al cine?
                        </a>
                    </li>
                    <li class="a-spacing-mini">
                        <a class="a-link-normal" href="#" onclick="showAnswer('answer7')">
                            ¿Ofrecen servicios de accesibilidad para personas con discapacidades?
                        </a>
                    </li>
                    <li class="a-spacing-mini">
                        <a class="a-link-normal" href="#" onclick="showAnswer('answer8')">
                            ¿Ofrecen salas VIP o experiencias premium en sus cines?
                        </a>
                    </li>
                    <li class="a-spacing-mini">
                        <a class="a-link-normal" href="#" onclick="showAnswer('answer9')">
                            ¿Cuál es la clasificación de edad de una película y qué significa?
                        </a>
                    </li>
                    <li class="a-spacing-mini">
                        <a class="a-link-normal" href="#" onclick="showAnswer('answer10')">
                            ¿Tienen programas de membresía o fidelización para clientes frecuentes?
                        </a>
                    </li>
                    <li class="a-spacing-mini">
                        <a class="a-link-normal" href="#" onclick="showAnswer('answer11')">
                            ¿Puedo reservar una sala de cine para eventos privados o corporativos?
                        </a>
                    </li>
                    <li class="a-spacing-mini">
                        <a class="a-link-normal" href="#" onclick="showAnswer('answer12')">
                            ¿Qué opciones de comida y bebida ofrecen en el cine?
                        </a>
                    </li>
                    <li class="a-spacing-mini">
                        <a class="a-link-normal" href="#" onclick="showAnswer('answer13')">
                            ¿Tienen salas de cine especialmente diseñadas para niños?
                        </a>
                    </li>
                </ul>
            </div>
                
                
            <div class="answer-container">
                 <div id="answer1" class="answer-item" style="display: none;">
        <h1>¿Cuáles son los horarios de las funciones de cine?</h1>
        <p>Nuestros horarios varían según la película y el cine. Puedes encontrar los horarios actualizados en nuestra página web o en la taquilla del cine.</p>
        <div class="a-section a-spacing-none happy_or_not_wrapper happy_or_not_static">
    <div class="a-section a-spacing-none border_top"></div>
    <div class="a-section">
        <div class="a-row a-grid-vertical-align a-grid-center happy_or_not">
            
            <input type="hidden" name="honFeedbackToken" value="hLez8mC814/xuXlZeimle2oj/1hFOD7yZLLjNR+z/vcPAAAAAGYlVYoAAAAB">
            <div class="a-column a-span6 a-text-right">
                <span>
                    ¿Respondimos a su pregunta?
                </span>
            </div>
            <div class="a-column a-span6 a-text-left a-span-last">
                <div class="a-section">
<span class="a-declarative" id="happy">
        <span data-params="{&quot;nodeId&quot;:&quot;G836CY29Z4SGNMK5&quot;,&quot;face&quot;:&quot;HAPPY&quot;}" data-url="/article/feedback/hon" class="face_icon happy aok-inline-block"> </span>
</span>
<span class="a-declarative" id="neutral">
        <span data-params="{&quot;nodeId&quot;:&quot;G836CY29Z4SGNMK5&quot;,&quot;face&quot;:&quot;NEUTRAL&quot;}" data-url="/article/feedback/hon" class="face_icon neutral aok-inline-block"> </span>
</span>
<span class="a-declarative" id="unhappy">
        <span data-params="{&quot;nodeId&quot;:&quot;G836CY29Z4SGNMK5&quot;,&quot;face&quot;:&quot;UNHAPPY&quot;}" data-url="/article/feedback/hon" class="face_icon unhappy aok-inline-block"> </span>
</span>
                </div>
            </div>
        </div>
    </div>
</div>
                 </div>
    <div id="answer2" class="answer-item" style="display: none;">
        <h1>¿Cómo puedo comprar entradas de cine?</h1>
        <p>Puedes comprar entradas en línea a través de nuestro sitio web o en la taquilla del cine. También ofrecemos la opción de reservar entradas y recogerlas en el cine.</p>
    <div class="a-section a-spacing-none happy_or_not_wrapper happy_or_not_static">
    <div class="a-section a-spacing-none border_top"></div>
    <div class="a-section">
        <div class="a-row a-grid-vertical-align a-grid-center happy_or_not">
            
            <input type="hidden" name="honFeedbackToken" value="hLez8mC814/xuXlZeimle2oj/1hFOD7yZLLjNR+z/vcPAAAAAGYlVYoAAAAB">
            <div class="a-column a-span6 a-text-right">
                <span>
                    ¿Respondimos a su pregunta?
                </span>
            </div>
            <div class="a-column a-span6 a-text-left a-span-last">
                <div class="a-section">
<span class="a-declarative" id="happy">
        <span data-params="{&quot;nodeId&quot;:&quot;G836CY29Z4SGNMK5&quot;,&quot;face&quot;:&quot;HAPPY&quot;}" data-url="/article/feedback/hon" class="face_icon happy aok-inline-block"> </span>
</span>
<span class="a-declarative" id="neutral">
        <span data-params="{&quot;nodeId&quot;:&quot;G836CY29Z4SGNMK5&quot;,&quot;face&quot;:&quot;NEUTRAL&quot;}" data-url="/article/feedback/hon" class="face_icon neutral aok-inline-block"> </span>
</span>
<span class="a-declarative" id="unhappy">
        <span data-params="{&quot;nodeId&quot;:&quot;G836CY29Z4SGNMK5&quot;,&quot;face&quot;:&quot;UNHAPPY&quot;}" data-url="/article/feedback/hon" class="face_icon unhappy aok-inline-block"> </span>
</span>
                </div>
            </div>
        </div>
    </div>
</div>    
    </div>
    <div id="answer3" class="answer-item" style="display: none;">
        <h1>¿Hay descuentos disponibles para estudiantes, personas mayores o grupos grandes?</h1>
        <p>Sí, ofrecemos descuentos para estudiantes, personas mayores y grupos grandes. Por favor, consulta con el cine específico para obtener información sobre los descuentos disponibles y los requisitos de elegibilidad.</p>
    <div class="a-section a-spacing-none happy_or_not_wrapper happy_or_not_static">
    <div class="a-section a-spacing-none border_top"></div>
    <div class="a-section">
        <div class="a-row a-grid-vertical-align a-grid-center happy_or_not">
            
            <input type="hidden" name="honFeedbackToken" value="hLez8mC814/xuXlZeimle2oj/1hFOD7yZLLjNR+z/vcPAAAAAGYlVYoAAAAB">
            <div class="a-column a-span6 a-text-right">
                <span>
                    ¿Respondimos a su pregunta?
                </span>
            </div>
            <div class="a-column a-span6 a-text-left a-span-last">
                <div class="a-section">
<span class="a-declarative" id="happy">
        <span data-params="{&quot;nodeId&quot;:&quot;G836CY29Z4SGNMK5&quot;,&quot;face&quot;:&quot;HAPPY&quot;}" data-url="/article/feedback/hon" class="face_icon happy aok-inline-block"> </span>
</span>
<span class="a-declarative" id="neutral">
        <span data-params="{&quot;nodeId&quot;:&quot;G836CY29Z4SGNMK5&quot;,&quot;face&quot;:&quot;NEUTRAL&quot;}" data-url="/article/feedback/hon" class="face_icon neutral aok-inline-block"> </span>
</span>
<span class="a-declarative" id="unhappy">
        <span data-params="{&quot;nodeId&quot;:&quot;G836CY29Z4SGNMK5&quot;,&quot;face&quot;:&quot;UNHAPPY&quot;}" data-url="/article/feedback/hon" class="face_icon unhappy aok-inline-block"> </span>
</span>
                </div>
            </div>
        </div>
    </div>
</div>
    </div>
    <div id="answer4" class="answer-item" style="display: none;">
        <h1>¿Cuál es la política de reembolso para las entradas de cine?</h1>
        <p>Nuestra política de reembolso varía según la situación. Por lo general, no ofrecemos reembolsos para las entradas de cine, pero podemos proporcionar intercambios o créditos para futuras funciones en ciertos casos. Por favor, comunícate con nuestro servicio de atención al cliente para obtener más información.</p>
    <div class="a-section a-spacing-none happy_or_not_wrapper happy_or_not_static">
    <div class="a-section a-spacing-none border_top"></div>
    <div class="a-section">
        <div class="a-row a-grid-vertical-align a-grid-center happy_or_not">
            
            <input type="hidden" name="honFeedbackToken" value="hLez8mC814/xuXlZeimle2oj/1hFOD7yZLLjNR+z/vcPAAAAAGYlVYoAAAAB">
            <div class="a-column a-span6 a-text-right">
                <span>
                    ¿Respondimos a su pregunta?
                </span>
            </div>
            <div class="a-column a-span6 a-text-left a-span-last">
                <div class="a-section">
<span class="a-declarative" id="happy">
        <span data-params="{&quot;nodeId&quot;:&quot;G836CY29Z4SGNMK5&quot;,&quot;face&quot;:&quot;HAPPY&quot;}" data-url="/article/feedback/hon" class="face_icon happy aok-inline-block"> </span>
</span>
<span class="a-declarative" id="neutral">
        <span data-params="{&quot;nodeId&quot;:&quot;G836CY29Z4SGNMK5&quot;,&quot;face&quot;:&quot;NEUTRAL&quot;}" data-url="/article/feedback/hon" class="face_icon neutral aok-inline-block"> </span>
</span>
<span class="a-declarative" id="unhappy">
        <span data-params="{&quot;nodeId&quot;:&quot;G836CY29Z4SGNMK5&quot;,&quot;face&quot;:&quot;UNHAPPY&quot;}" data-url="/article/feedback/hon" class="face_icon unhappy aok-inline-block"> </span>
</span>
                </div>
            </div>
        </div>
    </div>
</div>
    </div>
    <div id="answer5" class="answer-item" style="display: none;">
        <h1>¿Puedo comprar entradas en línea y recogerlas en el cine?</h1>
        <p>Sí, ofrecemos la opción de comprar entradas en línea y recogerlas en la taquilla del cine. Esto te permite evitar las colas y asegurar tus asientos antes de la función.</p>
    <div class="a-section a-spacing-none happy_or_not_wrapper happy_or_not_static">
    <div class="a-section a-spacing-none border_top"></div>
    <div class="a-section">
        <div class="a-row a-grid-vertical-align a-grid-center happy_or_not">
            
            <input type="hidden" name="honFeedbackToken" value="hLez8mC814/xuXlZeimle2oj/1hFOD7yZLLjNR+z/vcPAAAAAGYlVYoAAAAB">
            <div class="a-column a-span6 a-text-right">
                <span>
                    ¿Respondimos a su pregunta?
                </span>
            </div>
            <div class="a-column a-span6 a-text-left a-span-last">
                <div class="a-section">
<span class="a-declarative" id="happy">
        <span data-params="{&quot;nodeId&quot;:&quot;G836CY29Z4SGNMK5&quot;,&quot;face&quot;:&quot;HAPPY&quot;}" data-url="/article/feedback/hon" class="face_icon happy aok-inline-block"> </span>
</span>
<span class="a-declarative" id="neutral">
        <span data-params="{&quot;nodeId&quot;:&quot;G836CY29Z4SGNMK5&quot;,&quot;face&quot;:&quot;NEUTRAL&quot;}" data-url="/article/feedback/hon" class="face_icon neutral aok-inline-block"> </span>
</span>
<span class="a-declarative" id="unhappy">
        <span data-params="{&quot;nodeId&quot;:&quot;G836CY29Z4SGNMK5&quot;,&quot;face&quot;:&quot;UNHAPPY&quot;}" data-url="/article/feedback/hon" class="face_icon unhappy aok-inline-block"> </span>
</span>
                </div>
            </div>
        </div>
    </div>
</div>
    </div>
    <div id="answer6" class="answer-item" style="display: none;">
        <h1>¿Puedo llevar comida y bebida del exterior al cine?</h1>
        <p>Por lo general, no permitimos que los clientes traigan comida y bebida del exterior al cine. Sin embargo, algunos cines pueden tener políticas diferentes. Te recomendamos que consultes con el cine específico antes de tu visita.</p>
    <div class="a-section a-spacing-none happy_or_not_wrapper happy_or_not_static">
    <div class="a-section a-spacing-none border_top"></div>
    <div class="a-section">
        <div class="a-row a-grid-vertical-align a-grid-center happy_or_not">
            
            <input type="hidden" name="honFeedbackToken" value="hLez8mC814/xuXlZeimle2oj/1hFOD7yZLLjNR+z/vcPAAAAAGYlVYoAAAAB">
            <div class="a-column a-span6 a-text-right">
                <span>
                    ¿Respondimos a su pregunta?
                </span>
            </div>
            <div class="a-column a-span6 a-text-left a-span-last">
                <div class="a-section">
<span class="a-declarative" id="happy">
        <span data-params="{&quot;nodeId&quot;:&quot;G836CY29Z4SGNMK5&quot;,&quot;face&quot;:&quot;HAPPY&quot;}" data-url="/article/feedback/hon" class="face_icon happy aok-inline-block"> </span>
</span>
<span class="a-declarative" id="neutral">
        <span data-params="{&quot;nodeId&quot;:&quot;G836CY29Z4SGNMK5&quot;,&quot;face&quot;:&quot;NEUTRAL&quot;}" data-url="/article/feedback/hon" class="face_icon neutral aok-inline-block"> </span>
</span>
<span class="a-declarative" id="unhappy">
        <span data-params="{&quot;nodeId&quot;:&quot;G836CY29Z4SGNMK5&quot;,&quot;face&quot;:&quot;UNHAPPY&quot;}" data-url="/article/feedback/hon" class="face_icon unhappy aok-inline-block"> </span>
</span>
                </div>
            </div>
        </div>
    </div>
</div>
    </div>
    <div id="answer7" class="answer-item" style="display: none;">
        <h1>¿Ofrecen servicios de accesibilidad para personas con discapacidades?</h1>
        <p>Sí, ofrecemos una variedad de servicios de accesibilidad, como subtítulos, audiodescripción y dispositivos de asistencia auditiva. Por favor, comunícate con nuestro cine para obtener más información sobre los servicios disponibles y cómo podemos ayudarte.</p>
    <div class="a-section a-spacing-none happy_or_not_wrapper happy_or_not_static">
    <div class="a-section a-spacing-none border_top"></div>
    <div class="a-section">
        <div class="a-row a-grid-vertical-align a-grid-center happy_or_not">
            
            <input type="hidden" name="honFeedbackToken" value="hLez8mC814/xuXlZeimle2oj/1hFOD7yZLLjNR+z/vcPAAAAAGYlVYoAAAAB">
            <div class="a-column a-span6 a-text-right">
                <span>
                    ¿Respondimos a su pregunta?
                </span>
            </div>
            <div class="a-column a-span6 a-text-left a-span-last">
                <div class="a-section">
<span class="a-declarative" id="happy">
        <span data-params="{&quot;nodeId&quot;:&quot;G836CY29Z4SGNMK5&quot;,&quot;face&quot;:&quot;HAPPY&quot;}" data-url="/article/feedback/hon" class="face_icon happy aok-inline-block"> </span>
</span>
<span class="a-declarative" id="neutral">
        <span data-params="{&quot;nodeId&quot;:&quot;G836CY29Z4SGNMK5&quot;,&quot;face&quot;:&quot;NEUTRAL&quot;}" data-url="/article/feedback/hon" class="face_icon neutral aok-inline-block"> </span>
</span>
<span class="a-declarative" id="unhappy">
        <span data-params="{&quot;nodeId&quot;:&quot;G836CY29Z4SGNMK5&quot;,&quot;face&quot;:&quot;UNHAPPY&quot;}" data-url="/article/feedback/hon" class="face_icon unhappy aok-inline-block"> </span>
</span>
                </div>
            </div>
        </div>
    </div>
</div>
    </div>
    <div id="answer8" class="answer-item" style="display: none;">
        <h1>¿Ofrecen salas VIP o experiencias premium en sus cines?</h1>
        <p>Sí, ofrecemos salas VIP y experiencias premium en algunos de nuestros cines. Estas salas suelen tener asientos más cómodos, servicio de comida y bebida en el asiento y otros servicios exclusivos.</p>
    <div class="a-section a-spacing-none happy_or_not_wrapper happy_or_not_static">
    <div class="a-section a-spacing-none border_top"></div>
    <div class="a-section">
        <div class="a-row a-grid-vertical-align a-grid-center happy_or_not">
            
            <input type="hidden" name="honFeedbackToken" value="hLez8mC814/xuXlZeimle2oj/1hFOD7yZLLjNR+z/vcPAAAAAGYlVYoAAAAB">
            <div class="a-column a-span6 a-text-right">
                <span>
                    ¿Respondimos a su pregunta?
                </span>
            </div>
            <div class="a-column a-span6 a-text-left a-span-last">
                <div class="a-section">
<span class="a-declarative" id="happy">
        <span data-params="{&quot;nodeId&quot;:&quot;G836CY29Z4SGNMK5&quot;,&quot;face&quot;:&quot;HAPPY&quot;}" data-url="/article/feedback/hon" class="face_icon happy aok-inline-block"> </span>
</span>
<span class="a-declarative" id="neutral">
        <span data-params="{&quot;nodeId&quot;:&quot;G836CY29Z4SGNMK5&quot;,&quot;face&quot;:&quot;NEUTRAL&quot;}" data-url="/article/feedback/hon" class="face_icon neutral aok-inline-block"> </span>
</span>
<span class="a-declarative" id="unhappy">
        <span data-params="{&quot;nodeId&quot;:&quot;G836CY29Z4SGNMK5&quot;,&quot;face&quot;:&quot;UNHAPPY&quot;}" data-url="/article/feedback/hon" class="face_icon unhappy aok-inline-block"> </span>
</span>
                </div>
            </div>
        </div>
    </div>
</div>
    </div>
    <div id="answer9" class="answer-item" style="display: none;">
        <h1>¿Cuál es la clasificación de edad de una película y qué significa?</h1>
        <p>La clasificación de edad de una película indica la edad recomendada para los espectadores. Las clasificaciones pueden variar según el país, pero suelen incluir categorías como "Apta para todos los públicos", "No recomendada para menores de 12 años", "No recomendada para menores de 16 años" y "No recomendada para menores de 18 años".</p>
    <div class="a-section a-spacing-none happy_or_not_wrapper happy_or_not_static">
    <div class="a-section a-spacing-none border_top"></div>
    <div class="a-section">
        <div class="a-row a-grid-vertical-align a-grid-center happy_or_not">
            
            <input type="hidden" name="honFeedbackToken" value="hLez8mC814/xuXlZeimle2oj/1hFOD7yZLLjNR+z/vcPAAAAAGYlVYoAAAAB">
            <div class="a-column a-span6 a-text-right">
                <span>
                    ¿Respondimos a su pregunta?
                </span>
            </div>
            <div class="a-column a-span6 a-text-left a-span-last">
                <div class="a-section">
<span class="a-declarative" id="happy">
        <span data-params="{&quot;nodeId&quot;:&quot;G836CY29Z4SGNMK5&quot;,&quot;face&quot;:&quot;HAPPY&quot;}" data-url="/article/feedback/hon" class="face_icon happy aok-inline-block"> </span>
</span>
<span class="a-declarative" id="neutral">
        <span data-params="{&quot;nodeId&quot;:&quot;G836CY29Z4SGNMK5&quot;,&quot;face&quot;:&quot;NEUTRAL&quot;}" data-url="/article/feedback/hon" class="face_icon neutral aok-inline-block"> </span>
</span>
<span class="a-declarative" id="unhappy">
        <span data-params="{&quot;nodeId&quot;:&quot;G836CY29Z4SGNMK5&quot;,&quot;face&quot;:&quot;UNHAPPY&quot;}" data-url="/article/feedback/hon" class="face_icon unhappy aok-inline-block"> </span>
</span>
                </div>
            </div>
        </div>
    </div>
</div>
    </div>
    <div id="answer10" class="answer-item" style="display: none;">
        <h1>¿Tienen programas de membresía o fidelización para clientes frecuentes?</h1>
        <p>Sí, ofrecemos programas de membresía o fidelización para clientes frecuentes. Estos programas pueden incluir beneficios como descuentos en entradas, puntos de recompensa, acceso anticipado a funciones y promociones exclusivas.</p>
    <div class="a-section a-spacing-none happy_or_not_wrapper happy_or_not_static">
    <div class="a-section a-spacing-none border_top"></div>
    <div class="a-section">
        <div class="a-row a-grid-vertical-align a-grid-center happy_or_not">
            
            <input type="hidden" name="honFeedbackToken" value="hLez8mC814/xuXlZeimle2oj/1hFOD7yZLLjNR+z/vcPAAAAAGYlVYoAAAAB">
            <div class="a-column a-span6 a-text-right">
                <span>
                    ¿Respondimos a su pregunta?
                </span>
            </div>
            <div class="a-column a-span6 a-text-left a-span-last">
                <div class="a-section">
<span class="a-declarative" id="happy">
        <span data-params="{&quot;nodeId&quot;:&quot;G836CY29Z4SGNMK5&quot;,&quot;face&quot;:&quot;HAPPY&quot;}" data-url="/article/feedback/hon" class="face_icon happy aok-inline-block"> </span>
</span>
<span class="a-declarative" id="neutral">
        <span data-params="{&quot;nodeId&quot;:&quot;G836CY29Z4SGNMK5&quot;,&quot;face&quot;:&quot;NEUTRAL&quot;}" data-url="/article/feedback/hon" class="face_icon neutral aok-inline-block"> </span>
</span>
<span class="a-declarative" id="unhappy">
        <span data-params="{&quot;nodeId&quot;:&quot;G836CY29Z4SGNMK5&quot;,&quot;face&quot;:&quot;UNHAPPY&quot;}" data-url="/article/feedback/hon" class="face_icon unhappy aok-inline-block"> </span>
</span>
                </div>
            </div>
        </div>
    </div>
</div>
    </div>
    <div id="answer11" class="answer-item" style="display: none;">
        <h1>¿Puedo reservar una sala de cine para eventos privados o corporativos?</h1>
        <p>Sí, ofrecemos la opción de reservar salas de cine para eventos privados o corporativos. Esto te permite disfrutar de una experiencia de cine exclusiva para ti y tus invitados, con opciones de catering y personalización disponibles.</p>
    <div class="a-section a-spacing-none happy_or_not_wrapper happy_or_not_static">
    <div class="a-section a-spacing-none border_top"></div>
    <div class="a-section">
        <div class="a-row a-grid-vertical-align a-grid-center happy_or_not">
            
            <input type="hidden" name="honFeedbackToken" value="hLez8mC814/xuXlZeimle2oj/1hFOD7yZLLjNR+z/vcPAAAAAGYlVYoAAAAB">
            <div class="a-column a-span6 a-text-right">
                <span>
                    ¿Respondimos a su pregunta?
                </span>
            </div>
            <div class="a-column a-span6 a-text-left a-span-last">
                <div class="a-section">
<span class="a-declarative" id="happy">
        <span data-params="{&quot;nodeId&quot;:&quot;G836CY29Z4SGNMK5&quot;,&quot;face&quot;:&quot;HAPPY&quot;}" data-url="/article/feedback/hon" class="face_icon happy aok-inline-block"> </span>
</span>
<span class="a-declarative" id="neutral">
        <span data-params="{&quot;nodeId&quot;:&quot;G836CY29Z4SGNMK5&quot;,&quot;face&quot;:&quot;NEUTRAL&quot;}" data-url="/article/feedback/hon" class="face_icon neutral aok-inline-block"> </span>
</span>
<span class="a-declarative" id="unhappy">
        <span data-params="{&quot;nodeId&quot;:&quot;G836CY29Z4SGNMK5&quot;,&quot;face&quot;:&quot;UNHAPPY&quot;}" data-url="/article/feedback/hon" class="face_icon unhappy aok-inline-block"> </span>
</span>
                </div>
            </div>
        </div>
    </div>
</div>
    </div>
    <div id="answer12" class="answer-item" style="display: none;">
        <h1>¿Qué opciones de comida y bebida ofrecen en el cine?</h1>
        <p>Ofrecemos una variedad de opciones de comida y bebida en nuestros cines, que incluyen palomitas de maíz, refrescos, nachos, hot dogs, dulces y opciones más saludables. También ofrecemos opciones vegetarianas y sin gluten para satisfacer las necesidades dietéticas específicas.</p>
    <div class="a-section a-spacing-none happy_or_not_wrapper happy_or_not_static">
    <div class="a-section a-spacing-none border_top"></div>
    <div class="a-section">
        <div class="a-row a-grid-vertical-align a-grid-center happy_or_not">
            
            <input type="hidden" name="honFeedbackToken" value="hLez8mC814/xuXlZeimle2oj/1hFOD7yZLLjNR+z/vcPAAAAAGYlVYoAAAAB">
            <div class="a-column a-span6 a-text-right">
                <span>
                    ¿Respondimos a su pregunta?
                </span>
            </div>
            <div class="a-column a-span6 a-text-left a-span-last">
                <div class="a-section">
<span class="a-declarative" id="happy">
        <span data-params="{&quot;nodeId&quot;:&quot;G836CY29Z4SGNMK5&quot;,&quot;face&quot;:&quot;HAPPY&quot;}" data-url="/article/feedback/hon" class="face_icon happy aok-inline-block"> </span>
</span>
<span class="a-declarative" id="neutral">
        <span data-params="{&quot;nodeId&quot;:&quot;G836CY29Z4SGNMK5&quot;,&quot;face&quot;:&quot;NEUTRAL&quot;}" data-url="/article/feedback/hon" class="face_icon neutral aok-inline-block"> </span>
</span>
<span class="a-declarative" id="unhappy">
        <span data-params="{&quot;nodeId&quot;:&quot;G836CY29Z4SGNMK5&quot;,&quot;face&quot;:&quot;UNHAPPY&quot;}" data-url="/article/feedback/hon" class="face_icon unhappy aok-inline-block"> </span>
</span>
                </div>
            </div>
        </div>
    </div>
</div>
    </div>
    <div id="answer13" class="answer-item" style="display: none;">
        <h1>¿Tienen salas de cine especialmente diseñadas para niños?</h1>
        <p>Sí, tenemos salas de cine especialmente diseñadas para niños, con asientos más cómodos, pantallas más pequeñas y películas seleccionadas para un público más joven. Estas salas suelen estar equipadas con áreas de juego y actividades para niños.</p>
    <div class="a-section a-spacing-none happy_or_not_wrapper happy_or_not_static">
    <div class="a-section a-spacing-none border_top"></div>
    <div class="a-section">
        <div class="a-row a-grid-vertical-align a-grid-center happy_or_not">
            
            <input type="hidden" name="honFeedbackToken" value="hLez8mC814/xuXlZeimle2oj/1hFOD7yZLLjNR+z/vcPAAAAAGYlVYoAAAAB">
            <div class="a-column a-span6 a-text-right">
                <span>
                    ¿Respondimos a su pregunta?
                </span>
            </div>
            <div class="a-column a-span6 a-text-left a-span-last">
                <div class="a-section">
<span class="a-declarative" id="happy">
        <span data-params="{&quot;nodeId&quot;:&quot;G836CY29Z4SGNMK5&quot;,&quot;face&quot;:&quot;HAPPY&quot;}" data-url="/article/feedback/hon" class="face_icon happy aok-inline-block"> </span>
</span>
<span class="a-declarative" id="neutral">
        <span data-params="{&quot;nodeId&quot;:&quot;G836CY29Z4SGNMK5&quot;,&quot;face&quot;:&quot;NEUTRAL&quot;}" data-url="/article/feedback/hon" class="face_icon neutral aok-inline-block"> </span>
</span>
<span class="a-declarative" id="unhappy">
        <span data-params="{&quot;nodeId&quot;:&quot;G836CY29Z4SGNMK5&quot;,&quot;face&quot;:&quot;UNHAPPY&quot;}" data-url="/article/feedback/hon" class="face_icon unhappy aok-inline-block"> </span>
</span>
                </div>
            </div>
        </div>
    </div>
</div>
    </div>
            </div>
                
                
                
                
            </div>
            <div style="max-width: 1280px;
                 width: 100%; margin: auto;">
                        <footer style="margin-top: 150px;">
                    <div class="PieDePagina">
                        <div class="contacto">
                            <h3 style="padding-bottom: 10px;"><a href="contactenos_ubiquenos.php">CONTÁCTENOS</a></h3>
                            <hr style="margin-bottom: 10px;"></hr>
                            <h4 style="padding-bottom: 10px;"><strong><h4>Redes Sociales</h4></strong></h4>
                            <hr style="margin-bottom: 10px;"></hr> 
                            <h4 style="padding-bottom: 10px;"><p><strong>Teléfono</strong></p></h4>
                            <ul style="padding-bottom: 10px;">
                                <li style="color:white;">(+51) 964593567</li>
                            </ul>
                            <hr style="margin-bottom: 10px;"> </hr>
                            <h4 style="padding-bottom: 10px;"><p><strong>Horarios</strong></p></h4>
                            <ul style="padding-bottom: 10px;"><li style="color:white;">Lun-Sab: 8:00 am - 00:00 pm</li></ul>
                            <hr style="margin-bottom: 10px;"></hr> 
                            <h4 style="padding-bottom: 10px;"><p><strong>Email</strong></p></h4>
                            <ul style="padding-bottom: 10px;">  
                                <li style="color:white;">MundoCine@gmail.com</li
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
                            <li style="padding-bottom: 10px;color:white;">Plaza Norte</li>
                            <li style="padding-bottom: 10px;color:white;">Mega Plaza</li>
                            <li style="padding-bottom: 10px;color:white;">Real Plaza</li>
                            <li style="padding-bottom: 10px;color:white;">Mall Aventura Santa Anita</li>
                            <li style="padding-bottom: 10px;color:white;">Plaza Sur</li>
                            <li style="padding-bottom: 10px;color:white;">Jockey Plaza</li>
                            </ul>
                            <hr style="margin-bottom: 10px;"></hr>
                            <h4 style="padding-bottom: 10px;"><strong><a href="#">¿Cómo adquirir entradas?</a></strong></h4>
                            <hr style="margin-bottom: 10px;"></hr>

                            <h4 style="padding-bottom: 10px;"><strong><a hhref="HelpCenter.jsp">Preguntas frecuentes</a></strong></h4>
                        </div>
                    </div>

                </footer>
            
            </div>
            <script>
        var lastAnswer = null; 

        function showAnswer(id) {
        var answer = document.getElementById(id);
        if (lastAnswer !== null) {
            lastAnswer.style.display = "none"; 
        }
        answer.style.display = "block"; 
        lastAnswer = answer; 
        }
            </script>
        </div>
    </body>
</html>
