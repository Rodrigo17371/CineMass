<%-- 
    Document   : home
    Created on : 19 abr. 2024, 01:53:29
    Author     : Victor
--%>
<%@page import="java.util.List"%>
<%@ page import="javax.servlet.http.HttpSession" %>
<%@ page import="modelo.dto.Customer" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="modelo.dto.Movie" %> <!-- Importa tu clase de modelo de película -->
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Bienvenido a Mundo Cine</title>
        <link href="resources/css/home.css" rel="stylesheet" type="text/css"/>     
        <link href="resources/css/piePagina.css" rel="stylesheet" type="text/css"/>
        <link href="resources/css/navbar.css" rel="stylesheet" type="text/css"/>
    </head>

    <body>
        <jsp:include page="components/navbar.jsp"/>       
                 
        <!-- DESDE ACÁ INICIA LA PRIMERA SECCIÓN DE LA PÁGINA -->        
        <div style="display: grid; place-items: center">            
            <div class="home-container">
                <div style="height: 32px; width: 100%">
                </div>
                <div class="first-container">
                    <div class="slider-movie">
                        <div class="poster">                            
                        </div>
                        <div class="play-teaser">
                            <div class="player">
                                <svg fill="#FFFFFF" width="78.52px" height="78.55px" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg"><g id="SVGRepo_bgCarrier" stroke-width="0"></g><g id="SVGRepo_tracerCarrier" stroke-linecap="round" stroke-linejoin="round"></g><g id="SVGRepo_iconCarrier"><path d="M9.5 15.584V8.416a.5.5 0 01.77-.42l5.576 3.583a.5.5 0 010 .842l-5.576 3.584a.5.5 0 01-.77-.42z"></path><path fill-rule="evenodd" d="M12 2.5a9.5 9.5 0 100 19 9.5 9.5 0 000-19zM1 12C1 5.925 5.925 1 12 1s11 4.925 11 11-4.925 11-11 11S1 18.075 1 12z"></path></g></svg>                            
                            </div>
                            <div style="display: flex; flex-direction: column; width: 100%">
                                <div style="display: flex; flex-direction: row; align-items: end">                                
                                    <div class="movie-name">
                                        Deadpool 3
                                    </div>
                                    <div class="teaser-time">
                                        3:51
                                    </div>
                                </div>
                                <div class="teaser-info">
                                    Mira el Trailer
                                </div> 
                            </div>

                        </div>
                    </div> 

                    <!-- DESDE ACÁ INICIA LA PARTE DE PRÓXIMAMENTE -->                    
                    <div class="container-coming-soon">
                        <div style="font-size: 1.25rem; padding: 4px 0px;
                             color:#16B3D6; font-weight: bold; height: 44px;"
                             >Próximamente</div>

                        <!-- DESDE ACÁ EMPIEZA LAS VISTAS PREVIAS -->

                        <div class="coming-soon">
                            <div class="cs-preview" style="gap: 6px">

                                <div class="cs-p-img">
                                    <img style="height: 100%; width: 88px; object-fit: cover; " src="resources/img/home-proximamente/proximamente1.jpg" alt=""/>
                                </div>

                                <div class="cs-p-teaser">
                                    <div class="cs-p-t-player">
                                        <svg style="margin: 0px 8px 0px 0px" fill="#FFFFFF" width="35px" height="35px" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg"><g id="SVGRepo_bgCarrier" stroke-width="0"></g><g id="SVGRepo_tracerCarrier" stroke-linecap="round" stroke-linejoin="round"></g><g id="SVGRepo_iconCarrier"><path d="M9.5 15.584V8.416a.5.5 0 01.77-.42l5.576 3.583a.5.5 0 010 .842l-5.576 3.584a.5.5 0 01-.77-.42z"></path><path fill-rule="evenodd" d="M12 2.5a9.5 9.5 0 100 19 9.5 9.5 0 000-19zM1 12C1 5.925 5.925 1 12 1s11 4.925 11 11-4.925 11-11 11S1 18.075 1 12z"></path></g></svg>                            
                                        <div style="font-size: 0.875rem;color: #B3B3B3;">
                                            4:20
                                        </div>
                                    </div>
                                    <div class="cs-p-t-title">
                                        Arthur
                                    </div>
                                    <div class="cs-p-t-info">
                                        Reparto: Mark Wahlberg, Simu Liu, Juliet Rylance
                                    </div>
                                </div>

                            </div>   

                            <div class="cs-preview" style="gap: 6px">

                                <div class="cs-p-img">
                                    <img style="height: 100%; width: 88px; object-fit: cover; " src="resources/img/home-proximamente/proximamente2.webp" alt=""/>
                                </div>

                                <div class="cs-p-teaser">
                                    <div class="cs-p-t-player">
                                        <svg style="margin: 0px 8px 0px 0px" fill="#FFFFFF" width="35px" height="35px" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg"><g id="SVGRepo_bgCarrier" stroke-width="0"></g><g id="SVGRepo_tracerCarrier" stroke-linecap="round" stroke-linejoin="round"></g><g id="SVGRepo_iconCarrier"><path d="M9.5 15.584V8.416a.5.5 0 01.77-.42l5.576 3.583a.5.5 0 010 .842l-5.576 3.584a.5.5 0 01-.77-.42z"></path><path fill-rule="evenodd" d="M12 2.5a9.5 9.5 0 100 19 9.5 9.5 0 000-19zM1 12C1 5.925 5.925 1 12 1s11 4.925 11 11-4.925 11-11 11S1 18.075 1 12z"></path></g></svg>                            
                                        <div style="font-size: 0.875rem;color: #B3B3B3;">
                                            2:46
                                        </div>
                                    </div>   
                                    <div class="cs-p-t-title">
                                        Culpa tuya
                                    </div>
                                    <div class="cs-p-t-info">
                                        Reparto: Nicole Wallace, Gabriel Guevara, Iván Sánchez
                                    </div>
                                </div>

                            </div> 

                            <div class="cs-preview" style="gap: 6px">

                                <div class="cs-p-img">
                                    <img style="height: 100%; width: 88px; object-fit: cover; " src="resources/img/home-proximamente/proximamente3.jpg" alt=""/>
                                </div>

                                <div class="cs-p-teaser">
                                    <div class="cs-p-t-player">
                                        <svg style="margin: 0px 8px 0px 0px" fill="#FFFFFF" width="35px" height="35px" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg"><g id="SVGRepo_bgCarrier" stroke-width="0"></g><g id="SVGRepo_tracerCarrier" stroke-linecap="round" stroke-linejoin="round"></g><g id="SVGRepo_iconCarrier"><path d="M9.5 15.584V8.416a.5.5 0 01.77-.42l5.576 3.583a.5.5 0 010 .842l-5.576 3.584a.5.5 0 01-.77-.42z"></path><path fill-rule="evenodd" d="M12 2.5a9.5 9.5 0 100 19 9.5 9.5 0 000-19zM1 12C1 5.925 5.925 1 12 1s11 4.925 11 11-4.925 11-11 11S1 18.075 1 12z"></path></g></svg>                            
                                        <div style="font-size: 0.875rem;color: #B3B3B3;">
                                            3:26
                                        </div>
                                    </div>
                                    <div class="cs-p-t-title">
                                        El reino del planeta de los simios
                                    </div>
                                    <div class="cs-p-t-info">
                                        Reparto: Owen Teague, Freya Allan, Peter Macon
                                    </div>
                                </div>

                            </div> 

                        </div>

                        <div style="height: 52px ;display: flex; place-items: end;">
                            <div class="explore-teasers">
                                Explorar tráileres
                                <svg id="explore-more-teasers-svg" style="height: 24px; width: 24px" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg">
                                <g id="SVGRepo_bgCarrier" stroke-width="0"></g>
                                <g id="SVGRepo_tracerCarrier" stroke-linecap="round" stroke-linejoin="round"></g>
                                <g id="SVGRepo_iconCarrier">
                                <path d="M10 16L14 12L10 8" stroke="#ffffff" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"></path>
                                </g>                            
                            </div>
                        </div>
                    </div>                    

                </div>


                <!-- DESDE ACÁ INICIA LA SEGUNDA SECCIÓN DE LA PÁGINA, LA LISTA DE ESTRENOS -->

                <div class="movie-list-premiere-container">
                    <div style="display: flex; flex-direction: row;"> 
                        <div style="width: 67%; margin-right: 10px;"> <!-- BG-BLACK ACA -->
                            <div class="premiere-h1">Destacado Hoy</div>
                            <div class="premiere-list">
                                <div style="display: flex; flex-direction: column">
                                    <div style="height: 221.98px; width: 394.64px; position: relative;">
                                        <img style="height: 100%; width: 100%; object-fit: cover;" src="resources/img/home/destacado1.webp" alt="destacados hoy"/>
                                        <div style="color: white;position: absolute; padding: 15px;z-index: 1; bottom: 0; left: 20px;" ></div>
                                        <div class="premiere-c bg-hover-semitransparent">
                                            <svg class="svg" style="pointer-events: none;z-index: 1; width: 32px; height: 32px; padding: 10px" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg"><g id="SVGRepo_bgCarrier" stroke-width="0"></g><g id="SVGRepo_tracerCarrier" stroke-linecap="round" stroke-linejoin="round"></g><g id="SVGRepo_iconCarrier"> <path d="M8 6L21 6.00078M8 12L21 12.0008M8 18L21 18.0007M3 6.5H4V5.5H3V6.5ZM3 12.5H4V11.5H3V12.5ZM3 18.5H4V17.5H3V18.5Z" stroke="#ffffff" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"></path> </g></svg>
                                            <div style="z-index: 1; color: white; padding: 0px 0px 17px 0px; font-size: 0.875rem">Lista</div>
                                            <div></div>
                                        </div>
                                    </div>                            
                                    <div class="premiere-title" >
                                        <div class="p-tunderline" style="cursor: pointer">
                                            Descubre las películas imprescindibles de abril
                                        </div>
                                        <div class="p-tunderline" style="margin: 8px 0px 0px; color: #4C8DE7; cursor: pointer">
                                            Mira nuestras elecciones
                                        </div>
                                    </div>
                                </div>
                                <div style="display: flex; flex-direction: column">
                                    <div style="height: 221.98px; width: 394.64px; position: relative;">
                                        <img style="height: 100%; width: 100%; object-fit: cover;" src="resources/img/home/destacado2.jpeg" alt="destacados hoy"/>
                                        <div style="color: white;position: absolute; padding: 15px;z-index: 1; bottom: 0; left: 20px;" ></div>
                                        <div class="premiere-c bg-hover-semitransparent">
                                            <svg class="svgf" style="pointer-events: none;z-index: 1; width: 32px; height: 32px; padding: 10px" fill="#FFFFFF" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg"><g id="SVGRepo_bgCarrier" stroke-width="0"></g><g id="SVGRepo_tracerCarrier" stroke-linecap="round" stroke-linejoin="round"></g><g id="SVGRepo_iconCarrier"><path d="M20 2H8c-1.103 0-2 .897-2 2v12c0 1.103.897 2 2 2h12c1.103 0 2-.897 2-2V4c0-1.103-.897-2-2-2zM8 16V4h12l.002 12H8z"></path><path d="M4 8H2v12c0 1.103.897 2 2 2h12v-2H4V8z"></path><path d="m12 12-1-1-2 3h10l-4-6z"></path></g></svg>
                                            <div style="z-index: 1; color: white; padding: 0px 0px 17px 0px; font-size: 0.875rem">Imágenes</div>
                                        </div>
                                    </div>
                                    <div class="premiere-title" >
                                        <div class="p-tunderline" style="cursor: pointer">
                                            Explora las imágenes más bellas del mundo del cine.
                                        </div>
                                        <div class="p-tunderline" style="margin: 8px 0px 0px; color: #4C8DE7; cursor: pointer">
                                            Mira la galeria
                                        </div>
                                    </div>
                                </div>
                            </div>       
                        </div>                    
                        <div style="width: 33%"></div>
                    </div>
                </div> 

<!--            ACÁ INICIA LA PARTE DEL SLIDER  
                <div class="mlps-container">   

                    <div class="mlps-header">
                        <div class="mlps-h-b"></div>
                        <div style="padding: 0px 0px 0px 12px">Que ver en el cine ahora</div>
                    </div>

                    <% 
                        List<Movie> movies = (List<Movie>) request.getAttribute("movies");
                    %>

                    <div class="movie-premier-slider">
                        <div class="Slider-button-left" onclick="left()">
                            <svg id="left-icon-slider" style="width: 35px;" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg" stroke="#ffffff" transform="rotate(180)"><g id="SVGRepo_bgCarrier" stroke-width="0"></g><g id="SVGRepo_tracerCarrier" stroke-linecap="round" stroke-linejoin="round"></g><g id="SVGRepo_iconCarrier"> <path fill-rule="evenodd" clip-rule="evenodd" d="M8.29289 4.29289C8.68342 3.90237 9.31658 3.90237 9.70711 4.29289L16.7071 11.2929C17.0976 11.6834 17.0976 12.3166 16.7071 12.7071L9.70711 19.7071C9.31658 20.0976 8.68342 20.0976 8.29289 19.7071C7.90237 19.3166 7.90237 18.6834 8.29289 18.2929L14.5858 12L8.29289 5.70711C7.90237 5.31658 7.90237 4.68342 8.29289 4.29289Z" fill="#ffffff"></path> </g></svg>
                        </div>
                        <div class="Slider-button-right" onclick="right()">
                            <svg id="right-icon-slider" style="width: 35px;" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg" stroke="#ffffff"><g id="SVGRepo_bgCarrier" stroke-width="0"></g><g id="SVGRepo_tracerCarrier" stroke-linecap="round" stroke-linejoin="round"></g><g id="SVGRepo_iconCarrier"> <path fill-rule="evenodd" clip-rule="evenodd" d="M8.29289 4.29289C8.68342 3.90237 9.31658 3.90237 9.70711 4.29289L16.7071 11.2929C17.0976 11.6834 17.0976 12.3166 16.7071 12.7071L9.70711 19.7071C9.31658 20.0976 8.68342 20.0976 8.29289 19.7071C7.90237 19.3166 7.90237 18.6834 8.29289 18.2929L14.5858 12L8.29289 5.70711C7.90237 5.31658 7.90237 4.68342 8.29289 4.29289Z" fill="#ffffff"></path> </g></svg>
                        </div>
                        <div class="mp-slider">
                        <% 
                            if (movies != null && !movies.isEmpty()) {
                                for (Movie movie : movies) {
                        %>
                                    <div class="movies-premier">
                                        <div class="mps-img">                           
                                            <img style="width: 185.3px; height: 274.23px; object-fit: cover" src="<%= movie.getImageUrl() %>" alt="<%= movie.getTitle() %>">                            
                                        </div>
                                        <div class="mps-information">
                                            <div class="mps-calification">        
                                                <div class="rating-container">
                                                    <svg style="width: 16px; height: 16px; padding: 0px 4px 0px 0px" fill="#f5c518" viewBox="0 0 1024 1024" xmlns="http://www.w3.org/2000/svg" class="icon"><g id="SVGRepo_bgCarrier" stroke-width="0"></g><g id="SVGRepo_tracerCarrier" stroke-linecap="round" stroke-linejoin="round"></g><g id="SVGRepo_iconCarrier"> <path d="M908.1 353.1l-253.9-36.9L540.7 86.1c-3.1-6.3-8.2-11.4-14.5-14.5-15.8-7.8-35-1.3-42.9 14.5L369.8 316.2l-253.9 36.9c-7 1-13.4 4.3-18.3 9.3a32.05 32.05 0 0 0 .6 45.3l183.7 179.1-43.4 252.9a31.95 31.95 0 0 0 46.4 33.7L512 754l227.1 119.4c6.2 3.3 13.4 4.4 20.3 3.2 17.4-3 29.1-19.5 26.1-36.9l-43.4-252.9 183.7-179.1c5-4.9 8.3-11.3 9.3-18.3 2.7-17.5-9.5-33.7-27-36.3z"></path> </g></svg>
                                                    <%= movie.getRating() %>
                                                </div>
                                                <div class="btn-calification">
                                                    <svg class="svg-btn-calification" style="width: 16px; height: 16px;" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg"><g id="SVGRepo_bgCarrier" stroke-width="0"></g><g id="SVGRepo_tracerCarrier" stroke-linecap="round" stroke-linejoin="round"></g><g id="SVGRepo_iconCarrier"> <path d="M11.2691 4.41115C11.5006 3.89177 11.6164 3.63208 11.7776 3.55211C11.9176 3.48263 12.082 3.48263 12.222 3.55211C12.3832 3.63208 12.499 3.89177 12.7305 4.41115L14.5745 8.54808C14.643 8.70162 14.6772 8.77839 14.7302 8.83718C14.777 8.8892 14.8343 8.93081 14.8982 8.95929C14.9705 8.99149 15.0541 9.00031 15.2213 9.01795L19.7256 9.49336C20.2911 9.55304 20.5738 9.58288 20.6997 9.71147C20.809 9.82316 20.8598 9.97956 20.837 10.1342C20.8108 10.3122 20.5996 10.5025 20.1772 10.8832L16.8125 13.9154C16.6877 14.0279 16.6252 14.0842 16.5857 14.1527C16.5507 14.2134 16.5288 14.2807 16.5215 14.3503C16.5132 14.429 16.5306 14.5112 16.5655 14.6757L17.5053 19.1064C17.6233 19.6627 17.6823 19.9408 17.5989 20.1002C17.5264 20.2388 17.3934 20.3354 17.2393 20.3615C17.0619 20.3915 16.8156 20.2495 16.323 19.9654L12.3995 17.7024C12.2539 17.6184 12.1811 17.5765 12.1037 17.56C12.0352 17.5455 11.9644 17.5455 11.8959 17.56C11.8185 17.5765 11.7457 17.6184 11.6001 17.7024L7.67662 19.9654C7.18404 20.2495 6.93775 20.3915 6.76034 20.3615C6.60623 20.3354 6.47319 20.2388 6.40075 20.1002C6.31736 19.9408 6.37635 19.6627 6.49434 19.1064L7.4341 14.6757C7.46898 14.5112 7.48642 14.429 7.47814 14.3503C7.47081 14.2807 7.44894 14.2134 7.41394 14.1527C7.37439 14.0842 7.31195 14.0279 7.18708 13.9154L3.82246 10.8832C3.40005 10.5025 3.18884 10.3122 3.16258 10.1342C3.13978 9.97956 3.19059 9.82316 3.29993 9.71147C3.42581 9.58288 3.70856 9.55304 4.27406 9.49336L8.77835 9.01795C8.94553 9.00031 9.02911 8.99149 9.10139 8.95929C9.16534 8.93081 9.2226 8.8892 9.26946 8.83718C9.32241 8.77839 9.35663 8.70162 9.42508 8.54808L11.2691 4.41115Z" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"></path> </g></svg>                                                
                                                </div>
                                            </div>
                                            <div class="mps-title"><%= movie.getTitle() %></div>
                                            <div class="mps-btn-container">
                                                <div class="mps-btn-schedules">Ver horarios</div>
                                                <div class="mps-btn-teaser">
                                                    <div class="mps-btn-teaser-btn">
                                                        Ver trailer
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                        <% 
                                }
                            } else {
                        %>
                        <p style="color: white; font-size: 1.25rem; font-weight: 600">No se encontraron películas.</p>
                        <% 
                            }
                        %>
                        
                        </div>
                    </div>

                </div>                     
                -->     
                
                <div class="onpremiere">
                    <div class="onpremiere-h1">
                        <div>Cartelera</div>
                        <div class="explore-more-premieremovies-container">
                            <div style="font-size: 0.875rem; color:#4C8DE7; ">Ver todas las películas en cartelera</div>
                            <svg id="explore-more-premieremovies-svg" style="height: 24px; width: 24px; margin: 0px -6px 0px 0px" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg">
                            <g id="SVGRepo_bgCarrier" stroke-width="0"></g>
                            <g id="SVGRepo_tracerCarrier" stroke-linecap="round" stroke-linejoin="round"></g>
                            <g id="SVGRepo_iconCarrier">
                            <path d="M10 16L14 12L10 8" stroke="#4C8DE7" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"></path>
                            </g>   
                        </div>                
                    </div>
                </div>
                <!-- Slider para películas en cartelera -->
                <div class="mlps-container">   
                    <div class="mlps-header">
                        <div class="mlps-h-b"></div>
                        <div style="padding: 0px 0px 0px 12px">Que ver en el cine ahora</div>
                    </div>
                    <div class="movie-premier-slider">
                        <div class="Slider-button-left" onclick="leftcartelera()()">
                            <svg id="left-icon-slider" style="width: 35px;" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg" stroke="#ffffff" transform="rotate(180)"><g id="SVGRepo_bgCarrier" stroke-width="0"></g><g id="SVGRepo_tracerCarrier" stroke-linecap="round" stroke-linejoin="round"></g><g id="SVGRepo_iconCarrier"> <path fill-rule="evenodd" clip-rule="evenodd" d="M8.29289 4.29289C8.68342 3.90237 9.31658 3.90237 9.70711 4.29289L16.7071 11.2929C17.0976 11.6834 17.0976 12.3166 16.7071 12.7071L9.70711 19.7071C9.31658 20.0976 8.68342 20.0976 8.29289 19.7071C7.90237 19.3166 7.90237 18.6834 8.29289 18.2929L14.5858 12L8.29289 5.70711C7.90237 5.31658 7.90237 4.68342 8.29289 4.29289Z" fill="#ffffff"></path> </g></svg>
                        </div>
                        <div class="Slider-button-right" onclick="rightcartelera()()">
                            <svg id="right-icon-slider" style="width: 35px;" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg" stroke="#ffffff"><g id="SVGRepo_bgCarrier" stroke-width="0"></g><g id="SVGRepo_tracerCarrier" stroke-linecap="round" stroke-linejoin="round"></g><g id="SVGRepo_iconCarrier"> <path fill-rule="evenodd" clip-rule="evenodd" d="M8.29289 4.29289C8.68342 3.90237 9.31658 3.90237 9.70711 4.29289L16.7071 11.2929C17.0976 11.6834 17.0976 12.3166 16.7071 12.7071L9.70711 19.7071C9.31658 20.0976 8.68342 20.0976 8.29289 19.7071C7.90237 19.3166 7.90237 18.6834 8.29289 18.2929L14.5858 12L8.29289 5.70711C7.90237 5.31658 7.90237 4.68342 8.29289 4.29289Z" fill="#ffffff"></path> </g></svg>
                        </div>
                        <div class="mp-slider-cartelera">
                            <% 
                                List<Movie> nowShowingMovies = (List<Movie>) request.getAttribute("nowShowingMovies");
                                if (nowShowingMovies != null && !nowShowingMovies.isEmpty()) {
                                    for (Movie movie : nowShowingMovies) {
                            %>
                                        <div class="movies-cartelera">
                                            <div class="mps-img">                           
                                                <img style="width: 185.3px; height: 274.23px; object-fit: cover" src="<%= movie.getImageUrl() %>" alt="<%= movie.getTitle() %>">                            
                                            </div>
                                            <div class="mps-information">
                                                <div class="mps-calification">        
                                                    <div class="rating-container">
                                                        <svg style="width: 16px; height: 16px; padding: 0px 4px 0px 0px" fill="#f5c518" viewBox="0 0 1024 1024" xmlns="http://www.w3.org/2000/svg" class="icon"><g id="SVGRepo_bgCarrier" stroke-width="0"></g><g id="SVGRepo_tracerCarrier" stroke-linecap="round" stroke-linejoin="round"></g><g id="SVGRepo_iconCarrier"> <path d="M908.1 353.1l-253.9-36.9L540.7 86.1c-3.1-6.3-8.2-11.4-14.5-14.5-15.8-7.8-35-1.3-42.9 14.5L369.8 316.2l-253.9 36.9c-7 1-13.4 4.3-18.3 9.3a32.05 32.05 0 0 0 .6 45.3l183.7 179.1-43.4 252.9a31.95 31.95 0 0 0 46.4 33.7L512 754l227.1 119.4c6.2 3.3 13.4 4.4 20.3 3.2 17.4-3 29.1-19.5 26.1-36.9l-43.4-252.9 183.7-179.1c5-4.9 8.3-11.3 9.3-18.3 2.7-17.5-9.5-33.7-27-36.3z"></path> </g></svg>
                                                        <%= movie.getRating() %>
                                                    </div>
                                                    <div class="btn-calification">
                                                        <svg class="svg-btn-calification" style="width: 16px; height: 16px;" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg"><g id="SVGRepo_bgCarrier" stroke-width="0"></g><g id="SVGRepo_tracerCarrier" stroke-linecap="round" stroke-linejoin="round"></g><g id="SVGRepo_iconCarrier"> <path d="M11.2691 4.41115C11.5006 3.89177 11.6164 3.63208 11.7776 3.55211C11.9176 3.48263 12.082 3.48263 12.222 3.55211C12.3832 3.63208 12.499 3.89177 12.7305 4.41115L14.5745 8.54808C14.643 8.70162 14.6772 8.77839 14.7302 8.83718C14.777 8.8892 14.8343 8.93081 14.8982 8.95929C14.9705 8.99149 15.0541 9.00031 15.2213 9.01795L19.7256 9.49336C20.2911 9.55304 20.5738 9.58288 20.6997 9.71147C20.809 9.82316 20.8598 9.97956 20.837 10.1342C20.8108 10.3122 20.5996 10.5025 20.1772 10.8832L16.8125 13.9154C16.6877 14.0279 16.6252 14.0842 16.5857 14.1527C16.5507 14.2134 16.5288 14.2807 16.5215 14.3503C16.5132 14.429 16.5306 14.5112 16.5655 14.6757L17.5053 19.1064C17.6233 19.6627 17.6823 19.9408 17.5989 20.1002C17.5264 20.2388 17.3934 20.3354 17.2393 20.3615C17.0619 20.3915 16.8156 20.2495 16.323 19.9654L12.3995 17.7024C12.2539 17.6184 12.1811 17.5765 12.1037 17.56C12.0352 17.5455 11.9644 17.5455 11.8959 17.56C11.8185 17.5765 11.7457 17.6184 11.6001 17.7024L7.67662 19.9654C7.18404 20.2495 6.93775 20.3915 6.76034 20.3615C6.60623 20.3354 6.47319 20.2388 6.40075 20.1002C6.31736 19.9408 6.37635 19.6627 6.49434 19.1064L7.4341 14.6757C7.46898 14.5112 7.48642 14.429 7.47814 14.3503C7.47081 14.2807 7.44894 14.2134 7.41394 14.1527C7.37439 14.0842 7.31195 14.0279 7.18708 13.9154L3.82246 10.8832C3.40005 10.5025 3.18884 10.3122 3.16258 10.1342C3.13978 9.97956 3.19059 9.82316 3.29993 9.71147C3.42581 9.58288 3.70856 9.55304 4.27406 9.49336L8.77835 9.01795C8.94553 9.00031 9.02911 8.99149 9.10139 8.95929C9.16534 8.93081 9.2226 8.8892 9.26946 8.83718C9.32241 8.77839 9.35663 8.70162 9.42508 8.54808L11.2691 4.41115Z" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"></path> </g></svg>                                                
                                                    </div>
                                                </div>
                                                <div class="mps-title"><%= movie.getTitle() %></div>
                                                <div class="mps-btn-container">
                                                    <div class="mps-btn-schedules">Ver horarios</div>
                                                    <div class="mps-btn-teaser">
                                                        <div class="mps-btn-teaser-btn">
                                                            Ver trailer
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                            <% 
                                    }
                                } else {
                            %>
                            <p style="color: white; font-size: 1.25rem; font-weight: 600">No se encontraron películas en cartelera.</p>
                            <% 
                                }
                            %>
                        </div>
                    </div>
                </div>
                 
                <div class="onpremiere">
                    <div class="onpremiere-h1">
                        <div>Preventa/Próximos estrenos</div>
                        <div class="explore-more-premieremovies-container">
                            <div style="font-size: 0.875rem; color:#4C8DE7; ">Ver todos los próximos estrenos</div>
                            <svg id="explore-more-premieremovies-svg" style="height: 24px; width: 24px; margin: 0px -6px 0px 0px" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg">
                            <g id="SVGRepo_bgCarrier" stroke-width="0"></g>
                            <g id="SVGRepo_tracerCarrier" stroke-linecap="round" stroke-linejoin="round"></g>
                            <g id="SVGRepo_iconCarrier">
                            <path d="M10 16L14 12L10 8" stroke="#4C8DE7" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"></path>
                            </g>   
                        </div>                
                    </div>
                </div>
                        
                <!-- Slider para próximos estrenos -->
                <div class="mlps-container">   
                    <div class="mlps-header">
                        <div class="mlps-h-b"></div>
                        <div style="padding: 0px 0px 0px 12px">Próximos estrenos</div>
                    </div>
                    <div class="movie-premier-slider">
                        <div class="Slider-button-left" onclick="leftestrenos()()">
                            <svg id="left-icon-slider" style="width: 35px;" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg" stroke="#ffffff" transform="rotate(180)"><g id="SVGRepo_bgCarrier" stroke-width="0"></g><g id="SVGRepo_tracerCarrier" stroke-linecap="round" stroke-linejoin="round"></g><g id="SVGRepo_iconCarrier"> <path fill-rule="evenodd" clip-rule="evenodd" d="M8.29289 4.29289C8.68342 3.90237 9.31658 3.90237 9.70711 4.29289L16.7071 11.2929C17.0976 11.6834 17.0976 12.3166 16.7071 12.7071L9.70711 19.7071C9.31658 20.0976 8.68342 20.0976 8.29289 19.7071C7.90237 19.3166 7.90237 18.6834 8.29289 18.2929L14.5858 12L8.29289 5.70711C7.90237 5.31658 7.90237 4.68342 8.29289 4.29289Z" fill="#ffffff"></path> </g></svg>
                        </div>
                        <div class="Slider-button-right" onclick="rightestrenos()()">
                            <svg id="right-icon-slider" style="width: 35px;" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg" stroke="#ffffff"><g id="SVGRepo_bgCarrier" stroke-width="0"></g><g id="SVGRepo_tracerCarrier" stroke-linecap="round" stroke-linejoin="round"></g><g id="SVGRepo_iconCarrier"> <path fill-rule="evenodd" clip-rule="evenodd" d="M8.29289 4.29289C8.68342 3.90237 9.31658 3.90237 9.70711 4.29289L16.7071 11.2929C17.0976 11.6834 17.0976 12.3166 16.7071 12.7071L9.70711 19.7071C9.31658 20.0976 8.68342 20.0976 8.29289 19.7071C7.90237 19.3166 7.90237 18.6834 8.29289 18.2929L14.5858 12L8.29289 5.70711C7.90237 5.31658 7.90237 4.68342 8.29289 4.29289Z" fill="#ffffff"></path> </g></svg>
                        </div>
                        <div class="mp-slider-estrenos">
                            <% 
                                List<Movie> upcomingMovies = (List<Movie>) request.getAttribute("upcomingMovies");
                                if (upcomingMovies != null && !upcomingMovies.isEmpty()) {
                                    for (Movie movie : upcomingMovies) {
                            %>
                                        <div class="movies-estrenos">
                                            <div class="mps-img">                           
                                                <img style="width: 185.3px; height: 274.23px; object-fit: cover" src="<%= movie.getImageUrl() %>" alt="<%= movie.getTitle() %>">                            
                                            </div>
                                            <div class="mps-information">
                                           <!-- <div class="mps-calification">        
                                                    <div class="rating-container">
                                                        <svg style="width: 16px; height: 16px; padding: 0px 4px 0px 0px" fill="#f5c518" viewBox="0 0 1024 1024" xmlns="http://www.w3.org/2000/svg" class="icon"><g id="SVGRepo_bgCarrier" stroke-width="0"></g><g id="SVGRepo_tracerCarrier" stroke-linecap="round" stroke-linejoin="round"></g><g id="SVGRepo_iconCarrier"> <path d="M908.1 353.1l-253.9-36.9L540.7 86.1c-3.1-6.3-8.2-11.4-14.5-14.5-15.8-7.8-35-1.3-42.9 14.5L369.8 316.2l-253.9 36.9c-7 1-13.4 4.3-18.3 9.3a32.05 32.05 0 0 0 .6 45.3l183.7 179.1-43.4 252.9a31.95 31.95 0 0 0 46.4 33.7L512 754l227.1 119.4c6.2 3.3 13.4 4.4 20.3 3.2 17.4-3 29.1-19.5 26.1-36.9l-43.4-252.9 183.7-179.1c5-4.9 8.3-11.3 9.3-18.3 2.7-17.5-9.5-33.7-27-36.3z"></path> </g></svg>
                                                        <%= movie.getRating() %>
                                                    </div>
                                                    <div class="btn-calification">
                                                        <svg class="svg-btn-calification" style="width: 16px; height: 16px;" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg"><g id="SVGRepo_bgCarrier" stroke-width="0"></g><g id="SVGRepo_tracerCarrier" stroke-linecap="round" stroke-linejoin="round"></g><g id="SVGRepo_iconCarrier"> <path d="M11.2691 4.41115C11.5006 3.89177 11.6164 3.63208 11.7776 3.55211C11.9176 3.48263 12.082 3.48263 12.222 3.55211C12.3832 3.63208 12.499 3.89177 12.7305 4.41115L14.5745 8.54808C14.643 8.70162 14.6772 8.77839 14.7302 8.83718C14.777 8.8892 14.8343 8.93081 14.8982 8.95929C14.9705 8.99149 15.0541 9.00031 15.2213 9.01795L19.7256 9.49336C20.2911 9.55304 20.5738 9.58288 20.6997 9.71147C20.809 9.82316 20.8598 9.97956 20.837 10.1342C20.8108 10.3122 20.5996 10.5025 20.1772 10.8832L16.8125 13.9154C16.6877 14.0279 16.6252 14.0842 16.5857 14.1527C16.5507 14.2134 16.5288 14.2807 16.5215 14.3503C16.5132 14.429 16.5306 14.5112 16.5655 14.6757L17.5053 19.1064C17.6233 19.6627 17.6823 19.9408 17.5989 20.1002C17.5264 20.2388 17.3934 20.3354 17.2393 20.3615C17.0619 20.3915 16.8156 20.2495 16.323 19.9654L12.3995 17.7024C12.2539 17.6184 12.1811 17.5765 12.1037 17.56C12.0352 17.5455 11.9644 17.5455 11.8959 17.56C11.8185 17.5765 11.7457 17.6184 11.6001 17.7024L7.67662 19.9654C7.18404 20.2495 6.93775 20.3915 6.76034 20.3615C6.60623 20.3354 6.47319 20.2388 6.40075 20.1002C6.31736 19.9408 6.37635 19.6627 6.49434 19.1064L7.4341 14.6757C7.46898 14.5112 7.48642 14.429 7.47814 14.3503C7.47081 14.2807 7.44894 14.2134 7.41394 14.1527C7.37439 14.0842 7.31195 14.0279 7.18708 13.9154L3.82246 10.8832C3.40005 10.5025 3.18884 10.3122 3.16258 10.1342C3.13978 9.97956 3.19059 9.82316 3.29993 9.71147C3.42581 9.58288 3.70856 9.55304 4.27406 9.49336L8.77835 9.01795C8.94553 9.00031 9.02911 8.99149 9.10139 8.95929C9.16534 8.93081 9.2226 8.8892 9.26946 8.83718C9.32241 8.77839 9.35663 8.70162 9.42508 8.54808L11.2691 4.41115Z" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"></path> </g></svg>                                                
                                                    </div>  
                                                </div>  -->
                                                <div style="width: 100%; background:rgba(8,8,8,0.5); height: 30px; margin: 0px 0px 6px 0px; color:#5799EF; display: flex; align-items: center; place-content: center; font-weight: 600;">
                                                      <%= movie.getReleaseDate() %>     
                                                </div>    
                                                <div class="mps-title"><%= movie.getTitle() %></div>
                                                <div class="mps-btn-container">
                                                    <div class="mps-btn-schedules">Ver horarios</div>
                                                    <div class="mps-btn-teaser">
                                                        <div class="mps-btn-teaser-btn">
                                                            Ver trailer
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                            <% 
                                    }
                                } else {
                            %>
                            <p style="color: white; font-size: 1.25rem; font-weight: 600">No se encontraron próximos estrenos.</p>
                            <% 
                                }
                            %>
                        </div>
                    </div>
                </div>
 
                <%-- FOOTER --%>
                <jsp:include page="components/footer.jsp"/>
            </div>
        </div>           
            <!-- JavaScript -->
            <script src="javascript/home/home-slider.js"></script>
            <script src="javascript/home/premier-slider.js"></script>
    </body>
</html>
