<!DOCTYPE html>
<html>
<head>
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="js/scripts.js"></script>  
</head>
<body>

<h2>Consumir servicios REST</h2>

<div>
	<button type="button" class="btn btn-primary" onclick="loadDoc()">Obtener apellido (xml)</button>
	<p class="lead" id="apellido"></p>
	
	<button type="button" class="btn btn-primary" onclick="loadJson()">Obtener nombre (JSON)</button>
	<p class="lead" id="json"></p>
	
	<button type="button" class="btn btn-primary" id="botonJQuery">Obtener nombre (JSON) con JQuery</button>
	<p class="lead" id="jsonQuery"></p>	
</div>

</body>
</html>
