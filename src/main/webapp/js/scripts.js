function loadDoc() {
    var xhttp = new XMLHttpRequest();
    xhttp.onreadystatechange = function() {
	if (this.readyState == 4 && this.status == 200) {
	    document.getElementById("apellido").innerHTML = this.responseText;
	}
    };
    xhttp.open("GET", "http://localhost:8080/servicios-rest/prueba/apellido",
	    true);
    xhttp.send();
}

function loadJson() {
    var xhttp = new XMLHttpRequest();
    xhttp.onreadystatechange = function() {
	if (this.readyState == 4 && this.status == 200) {
	    var json = JSON.parse(this.responseText);
	    document.getElementById("json").innerHTML = json.dni;
	}
    };
    xhttp.open("GET", "http://localhost:8080/servicios-rest/prueba/persona",
	    true);
    xhttp.send();
}

$(document).ready(function() {
	$("#botonJQuery").click(function() {
	    $.ajax({
	        url: "http://localhost:8080/servicios-rest/prueba/persona"
	    }).then(function(data) {
		document.getElementById("jsonQuery").innerHTML = data.dni;
	    });
	});
});