<!DOCTYPE html>
<html lang="es">
<head>
<meta charset="UTF-8">
<title>Popup Example</title>
<style>
/* Estilos para el popup */
.modal {
  display: none; 
  position: fixed; 
  z-index: 1; 
  padding-top: 100px;
  left: 0;
  top: 0;
  width: 100%; 
  height: 100%; 
  overflow: auto;
  background-color: rgba(0,0,0,0.4); 
}

.modal-content {
  background-color: #fefefe;
  margin: auto;
  padding: 20px;
  border: 1px solid #888;
  width: 50%;
  position: relative;
}

.close {
  color: #aaa;
  float: right;
  font-size: 28px;
  font-weight: bold;
}

.button-accept {
  position: absolute;
  right: 20px;
  bottom: 20px;
}

label {
  display: flex;
  align-items: center;
}

label input {
  margin-right: 10px;
}

</style>
</head>
<body>

<!-- Enlace que abre el popup -->
<a href="#" id="openModal">Haz clic aquí para abrir el popup</a>

<!-- El popup -->
<div id="myModal" class="modal">

  <!-- Contenido del popup -->
  <div class="modal-content">
    <span class="close">&times;</span>
    <p><strong>Empresa colaboradoras para la cesión de datos</strong></p>
    <label>
      <input type="checkbox" id="repsolCheckbox">
      Repsol Comercializadora de Electricidad y Gas, S.L.U. - Calle Isabel Torres nº 19, Santander - <a href="#">Condiciones legales</a>
    </label>
    <p><a href="#">Si no quieres ceder tus datos a alguno de los proveedores mencionados, haz clic aquí</a></p>
    <button class="button-accept" id="acceptButton">Aceptar</button>
  </div>

</div>

<script>
// Obtener elementos del DOM
var modal = document.getElementById("myModal");
var btn = document.getElementById("openModal");
var span = document.getElementsByClassName("close")[0];
var acceptButton = document.getElementById("acceptButton");

// Cuando el usuario hace clic en el enlace, se abre el popup
btn.onclick = function(event) {
  event.preventDefault();
  modal.style.display = "block";
}

// Cuando el usuario hace clic en la X, se cierra el popup
span.onclick = function() {
  modal.style.display = "none";
}

// Cuando el usuario hace clic en el botón Aceptar
acceptButton.onclick = function() {
  // Aquí puedes agregar la funcionalidad que necesites al aceptar
  if(document.getElementById("repsolCheckbox").checked) {
    alert("Has aceptado ceder tus datos a Repsol.");
  } else {
    alert("No has aceptado ceder tus datos a Repsol.");
  }
  modal.style.display = "none";
}

// Cuando el usuario hace clic fuera del popup, se cierra
window.onclick = function(event) {
  if (event.target == modal) {
    modal.style.display = "none";
  }
}
</script>

</body>
</html>
