<%@page import="modelo.dto.Locales"%>
<%@page import="modelo.dto.itemDulceria"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link href="resources/css/dulceria.css" rel="stylesheet" type="text/css"/>
       <link href="resources/css/navbar.css" rel="stylesheet" type="text/css"/>
       <link href="resources/css/piePagina.css" rel="stylesheet" type="text/css"/>
        <title>Dulceria</title>
    </head>
    <body>
                <!-- ESTO ES EL NAVBAR -->
        <jsp:include page="components/navbar.jsp"/>
        <div class="container-principal">
        <div class="container">
            <div class="container-title">
                <h1>Dulceria</h1>
            </div>
            <div class="container-info">
                <div class="info-title"><span>Local</span></div>
                <div class="info-locals">
                    <select>
                    <% 
                    List<Locales> locals = (List<Locales>) request.getAttribute("locales"); 
                    if (locals != null) {
                        for (Locales local : locals) {
                    %>
                    <option value="<%= local.getCodLocal() %>" ><%= local.getNombre() %></option>
                
                    <% }
                    }%>
                    </select>
                </div>
                    
            </div>
            <div class="container-item-type">
                <span>Combos</span>
                <span>Canchita</span>
                <span>Bebidas</span>
                <span>Golosinas</span>
            </div>
            <div class="container-items">
                <% 
                    List<itemDulceria> itemsDulceria = (List<itemDulceria>) request.getAttribute("itemsDulceria"); 
                    if (itemsDulceria != null) {
                        for (itemDulceria item : itemsDulceria) {
                        String itemCategory = item.getCategoria().getNombre().toLowerCase();
                        String itemDulceria = item.getNombre().toLowerCase();
                        String imgPath= "resources/img/dulceria/"+itemCategory+"/"+itemDulceria+".jpg";
                %>
                <div class="content">
                    <div class="item-img"><img src="<%= imgPath %>" alt="Contenido Img"></div>
                    <h3><%= itemDulceria %></h3>
                    <span><%= itemCategory %></span>
                    <p><%= item.getDescripcion() %></p>
                    <span class="price"><%= item.getPrecio() %></span>
                    <div class="content-amount">
                        <button class="amount-less" >-</button>
                        <span class="amount">0</span>
                        <button class="amount-plus" >+</button>
                    </div>
                </div>
                        

                <% 
                        } 
                    }
                %>
            
            </div>
                <div class="container-btn">
                <form action="/MundoCine/CompraDulceria" method="GET">
                    <button class="item-btn" type="submit">> Enviar</button>
                </form>
            </div>
                
        </div>
        <jsp:include page="components/footer.jsp"/>
    </div>
        <script src="components/DulceriaItems.js" type="text/javascript"></script>
        
    </body>
</html>
