window.addEventListener('click', function (event) {
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
    window.location.href = "index.jsp";
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

function redirigirReclamos() {
    // Redirigir a la página deseada
    window.location.href = "claims.jsp";
}           

function redirigirDulceria() {
    // Redirigir a la página deseada
    window.location.href = "/MundoCine/Dulceria";
}

function redirigirLocales() {
    //Redirigir a la págima deseada
    window.location.href = "locales.jsp";
}


