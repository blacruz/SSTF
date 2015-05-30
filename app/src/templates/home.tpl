<!DOCTYPE html>
<html>
<head>
	<title>SSTF - Grupo 5</title>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta name="author" content="ISW2-Grupo5">
	<!-- Bootstrap core CSS -->
	<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css">
	<link rel="stylesheet" href="../css/font-awesome-4.3.0/css/font-awesome.css">
	<!-- Bootstrap Form Helpers -->
	<link href="css/bootstrap-formhelpers.min.css" rel="stylesheet" media="screen">
	<!-- Custom styles -->
	<style>
		ul{
			margin: 10px auto;
		}
		#fav {
			cursor: pointer
		}
		.btn{
			margin: 5px auto;
		}
		#accion{
			border: 1px solid #CCC;
			color: #31708F;
			border-radius: 1px;
			padding: 10px;
			min-width: 490px;
			min-height: 100px;
		}
		#msgFav{
			z-index:1000;
			text-align: center;
			display: none;
			position:fixed;
			padding: 10px 20px;
			top: 50px;
			border-radius:10px;
		   -webkit-border-radius:10px;
		   -moz-border-radius:10px;
		}
	</style>
</head>
<body>
	<div id="msgFav" class="bg-success"></div>

	<div class="container">
		<header>
			<h2>Sistema Simplificado de Tracker Financiero</h2>
			<h4 id='username' data-userid='{$userid}'>{$username}</h4>
		</header>
		<div class="row">
			<nav class="col-md-2">
				<ul class="nav nav-pills nav-stacked">
					<li role="presentation" class="active"><a href="">Principal</a></li>
					<li role="presentation"><a href="tracker.php/favorites">Favoritos</a></li>
					<li role="presentation"><a href="tracker.php/logout">Desconectar</a></li>
				</ul>
			</nav>
			<section class="col-md-8">
				<div class="form-inline">
					<div class="form-group">
						<label> Introduce el código de una acción: </label>
						<input id="codigoAccion" type="text" class="form-control input-sm" placeholder="Ej.: ABC55-1-00">
						<button class="btn btn-primary" id='accionBtn'>Buscar</button>
					</div>
					<p id="errorAccionVacia" class="text-danger" hidden>Introduce un código de acción vallido</p>

				</div>
				<div id="accion">
					<div class="row">
					<h4 class="col-md-3">Datos de la accion</h4> 
					<h4 class="col-md-1"><i id='fav' class="fa" data-toggle="tooltip" data-placement="top" title=""></i></h4> 
					</div>
					<div class="row">
						<span class="col-md-2">
							Código:
						</span>
						<span class="col-md-2" id='accCode'></span>
						<span class="col-md-2">
							Nombre: 
						</span>
						<span class="col-md-5" id='accName'></span>
					</div>
					<h4>Valores</h4>

					<div class="row">
						<span class="col-md-2" >
							Actual: 
						</span>
						<span class="col-md-2" id='accVal'></span>
						<span class="col-md-2" >
							Acumulado:
						</span>
						<span class="col-md-1" id='accAcul'></span>
						<span class="col-md-3" >
							Jornada Anterior:
						</span>
						<span class="col-md-1" id='accAnt'></span>
					</div>
				</div>
			</section>
		</div>
	</div>
	<script type="text/javascript" src="../js/jquery-1.11.2.min.js"></script>
	<script type="text/javascript" src="../js/bootstrap.min.js"></script>
	<script type="text/javascript" src="../js/home.js"></script>
</body>
</html>