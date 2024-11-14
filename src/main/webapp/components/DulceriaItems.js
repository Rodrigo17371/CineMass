document.addEventListener("DOMContentLoaded", function() {
    const contents = document.querySelectorAll(".content");

    contents.forEach(content => {
        const increaseBtn = content.querySelector(".amount-plus");
        const decreaseBtn = content.querySelector(".amount-less");
        const quantity = content.querySelector(".amount");

        let quantityItem = 0;

        // Función para actualizar la cantidad mostrada
        function updateQuantity() {
            quantity.textContent = quantityItem;
        }

        // Función para aumentar la cantidad
        function increaseQuantity() {
            quantityItem++;
            updateQuantity();
        }

        // Función para disminuir la cantidad
        function decreaseQuantity() {
            if (quantityItem > 0) {
                quantityItem--;
            }
            updateQuantity();
        }

        // Añadir event listener a los botones
        increaseBtn.addEventListener("click", increaseQuantity);
        decreaseBtn.addEventListener("click", decreaseQuantity);
    });
});



