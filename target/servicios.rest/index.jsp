<!DOCTYPE html>
<html>
<body>

<h2>Consumir servicios REST</h2>

<p id="apellido"></p>
<p id="json"></p>

<button type="button" onclick="loadDoc()">Obtener apellido</button>
<button type="button" onclick="loadJson()">Obtener JSON</button>

<script>
function loadDoc() {
  var xhttp = new XMLHttpRequest();
  xhttp.onreadystatechange = function() {
    if (this.readyState == 4 && this.status == 200) {
       
      document.getElementById("apellido").innerHTML = this.responseText;
    }
  };
  xhttp.open("GET", "http://localhost:8080/servicios-rest/prueba/apellido", true);
  xhttp.send();
}

function loadJson() {
	  var xhttp = new XMLHttpRequest();
	  xhttp.onreadystatechange = function() {
	    if (this.readyState == 4 && this.status == 200) {
	       
	      document.getElementById("json").innerHTML = JSON.parse(this.responseText);
	    }
	  };
	  xhttp.open("GET", "http://localhost:8080/servicios-rest/prueba/persona", true);
	  xhttp.send();
	}
</script>

</body>
</html>
