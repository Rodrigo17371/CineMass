<%-- 
    Document   : HelpCenter
    Created on : 20 abr. 2024, 21:16:53
    Author     : usuario
--%>

<%@ page import="javax.servlet.http.HttpSession" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Preguntas Frecuentes</title>
        <link href="resources/css/hp.css" rel="stylesheet" type="text/css"/>
        <link href="resources/css/home.css" rel="stylesheet" type="text/css"/>
        <link href="resources/css/piePagina.css" rel="stylesheet" type="text/css"/>        
        <link href="resources/css/navbar.css" rel="stylesheet" type="text/css"/>
        <link rel="stylesheet" href="https://images-na.ssl-images-amazon.com/images/I/11EIQ5IGqaL._RC|01e5ncglxyL.css,01lF2n-pPaL.css,41kFcbwbhrL.css,31+Z83i6adL.css,01IWMurvs8L.css,013z33uKh2L.css,01qPl4hxayL.css,01g+NWirX6L.css,41EWOOlBJ9L.css,11TIuySqr6L.css,01ElnPiDxWL.css,11fJbvhE5HL.css,01Dm5eKVxwL.css,01IdKcBuAdL.css,01y-XAlI+2L.css,21yimAg6YwL.css,01oDR3IULNL.css,51PjmZTX66L.css,01XPHJk60-L.css,01S0vRENeAL.css,21IbH+SoKSL.css,11MrAKjcAKL.css,21fecG8pUzL.css,11a5wZbuKrL.css,01CFUgsA-YL.css,31pHA2U5D9L.css,116t+WD27UL.css,11gKCCKQV+L.css,11061HxnEvL.css,11oHt2HYxnL.css,01j2JE3j7aL.css,11JQtnL-6eL.css,21zZ8mQ5z6L.css,11thAWu6MZL.css,0114z6bAEoL.css,21uwtfqr5aL.css,11QyqG8yiqL.css,11K24eOJg4L.css,11F2+OBzLyL.css,01890+Vwk8L.css,01g+cOYAZgL.css,01cbS3UK11L.css,21F85am0yFL.css,01giMEP+djL.css_.css?AUIClients/AmazonUI#us.not-trident">
        <link rel="stylesheet" href="https://images-na.ssl-images-amazon.com/images/I/01LPI7Ef+XL.css?AUIClients/IMDbProSiteHappyOrNotAssets">
    </head>
    <body>      
        
        <jsp:include page="components/navbar.jsp"/>
        
        
        <div class="hp-container">
            
          <img style="width: 1280px; height: 283px; position: absolute;z-index: -1; object-fit: cover" src="resources/img/help-center/fog-bg.jpg" alt=""/>
          <div id="search_area" class="a-section a-padding-extra-large a-text-center">
            <div class="a-section">
                <!-- comment <a class="a-spacing-base a-spacing-top-extra-large a-link-normal aok-block header_imdb_logo" href=""></a>-->
                <p style="margin-top: 185px; font-size: 2rem;font-weight: 600; color: #fff">
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
            <%-- FOOTER --%>
            <div style="max-width: 1280px;
                 width: 100%; margin: auto;">
                <div style="margin-top: 150px;">
                     <jsp:include page="components/footer.jsp"/>
                </div>   
            
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
