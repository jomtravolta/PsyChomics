<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="pt-br">
<head>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<title>Index</title>
</head>
<body>

	<nav class="navbar navbar-expand-lg navbar-light bg-light"> <a
		class="navbar-brand" href="exibirlistarProdutoIndex">PsyChomics</a>
	<button class="navbar-toggler" type="button" data-toggle="collapse"
		data-target="#navbarSupportedContent"
		aria-controls="navbarSupportedContent" aria-expanded="false"
		aria-label="Toggle navigation">
		<span class="navbar-toggler-icon"></span>
	</button>

	<div class="collapse navbar-collapse" id="navbarSupportedContent">
		<ul class="navbar-nav mr-auto">
			<li class="nav-item active"><a class="nav-link"
				href="exibirlistarProdutoIndex">Home <span class="sr-only">(current)</span>
			</a></li>
			<li class="nav-item"><a class="nav-link" href="exibirQuemSomos">Quem
					somos</a></li>
			<li class="nav-item dropdown"><a
				class="nav-link dropdown-toggle" href="#" id="navbarDropdown"
				role="button" data-toggle="dropdown" aria-haspopup="true"
				aria-expanded="false"> Produtos </a>
				<div class="dropdown-menu" aria-labelledby="navbarDropdown">
					<a class="dropdown-item" href="exibirCadastrarProduto">Cadastro
						de produtos</a> <a class="dropdown-item" href="listarProduto">Lista
						de Produtos</a>
					<div class="dropdown-divider"></div>
					<a class="dropdown-item" href="exibirIncluirCategoriaProduto">Cadastro
						de categorias</a> <a class="dropdown-item"
						href="listarCategoriaProduto">Lista de categorias</a>
				</div></li>
			<li class="nav-item dropdown"><a
				class="nav-link dropdown-toggle" href="#" id="navbarDropdown"
				role="button" data-toggle="dropdown" aria-haspopup="true"
				aria-expanded="false"> Usuarios </a>
				<div class="dropdown-menu" aria-labelledby="navbarDropdown">
					<a class="dropdown-item" href="exibirCadastrarUsuario">Cadastro
						de Usuarios</a> <a class="dropdown-item" href="listarUsuario">Lista
						de Usuarios</a>
					<div class="dropdown-divider"></div>
					<a class="dropdown-item" href="#">Something else here</a>
				</div></li>
			<li class="nav-item"><a class="nav-link" href="exibirLoginUsuario">Login</a>
			</li>
		</ul>
		<form class="form-inline my-2 my-lg-0" action="buscarProduto">
			<input class="form-control mr-sm-2" type="text"
				pplaceholder="Procurar.." id="inputNome" name="nome" for="inputNome"
				aria-label="Search">
			<button class="btn btn-outline-success my-2 my-sm-0" value="buscar"
				type="submit">Search</button>
		</form>
	</div>


	</nav>
	<div id="carouselExampleIndicators" class="carousel slide"
		data-ride="carousel">
		<ol class="carousel-indicators">
			<li data-target="#carouselExampleIndicators" data-slide-to="0"
				class="active"></li>
			<li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
			<li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
		</ol>
		<div class="carousel-inner">
			<div class="carousel-item active">
				<img class="d-block w-100" src="view/imagens/bg2.png"
					alt="First slide">
			</div>
			<div class="carousel-item">
				<img class="d-block w-100" src="view/imagens/bg3.png"
					alt="Second slide">
			</div>
		</div>
		<a class="carousel-control-prev" href="#carouselExampleIndicators"
			role="button" data-slide="prev"> <span
			class="carousel-control-prev-icon" aria-hidden="true"></span> <span
			class="sr-only">Previous</span>
		</a> <a class="carousel-control-next" href="#carouselExampleIndicators"
			role="button" data-slide="next"> <span
			class="carousel-control-next-icon" aria-hidden="true"></span> <span
			class="sr-only">Next</span>
		</a>
	</div>

	<div class="card">
		<div class="card-body">This is some text within a card body.</div>
	</div>

	<div class="card">
		<div class="card-body">${msg}</div>
	</div>

	<form action="cadastrarUsuario" method="post"
		enctype="multipart/form-data">
		<div class="form-row">
			<div class="form-group col-md-6">
				<label for="inputEmail">Email</label> <input type="text"
					class="form-control" id="inputEmail" minlength="13"
					placeholder="E-mail" maxlength="50" required="required">
			</div>
			<div class="form-group col-md-6">
				<label for="inputSenha">Senha</label> <input type="password"
					class="form-control" id="inputSenha" name="senha"F
					placeholder="Senha" maxlength="16" minlength="8"
					required="required">
			</div>
			<div class="form-group col-md-6">
				<label>Confirmar Senha</label> <input type="password"
					placeholder="Confirme Senha" id="confirm_password"
					class="form-control" maxlength="16" minlength="8"
					required="required">
			</div>
		</div>
		<div class="form-group">
			<label for="inputNick">Nick</label> <input type="text" id="inputNick"
				class="form-control" name="Nick" placeholder="Nick do Usuário"
				maxlength="30" minlength="5" required="required">
		</div>
		<div class="form-group">
			<label for="inputNomeUsuario">Nome do Usuário</label> <input
				type="text" id="inputNomeUsuario" class="form-control"
				name="NomeUsuario" placeholder="Nome do Usuário" maxlength="50"
				minlength="10" required="required">
		</div>
		<div class="form-row">
			<div class="form-group col-md-6">
				<label for="inputCpf">Cpf</label> <input type="text" id="inputCpf"
					class="form-control cpf-mask" required="required" name="cpf"
					style="width: 500px;" minlength="9"
					placeholder="CPF:EX.: 000.000.000-00" maxlength="11"
					required="required">
			</div>
		</div>
		<button type="submit" class="btn btn-primary" value="cadastrar">Cadastrar</button>
	</form>

	<div class="card">
		<div class="card-header">Featured</div>
		<div class="card-body">
			<h5 class="card-title">Special title treatment</h5>
			<p class="card-text">With supporting text below as a natural
				lead-in to additional content.</p>
			<a href="#" class="btn btn-primary">Go somewhere</a>
		</div>
	</div>

	<script>
		var password = document.getElementById("password"), confirm_password = document
				.getElementById("confirm_password");
		function validatePassword() {
			if (password.value != confirm_password.value) {
				confirm_password.setCustomValidity("Senhas diferentes!");
			} else {
				confirm_password.setCustomValidity('');
			}
		}
		password.onchange = validatePassword;
		confirm_password.onkeyup = validatePassword;
	</script>

	<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"
		integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN"
		crossorigin="anonymous"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"
		integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q"
		crossorigin="anonymous"></script>
	<script
		src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"
		integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl"
		crossorigin="anonymous"></script>
</body>

</html>