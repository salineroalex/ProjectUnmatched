function validate() {
    valor = document.getElementById("USD1").value;
    if (isNaN(valor)) {
        alert("Introduce un numero.");
        return false;
    }

}


