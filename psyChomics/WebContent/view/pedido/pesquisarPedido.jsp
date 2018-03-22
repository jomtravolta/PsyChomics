<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<!DOCTYPE html>

<html>
<head>
<meta charset="UTF-8">
<title>Sistema de Controle de Usuário</title>

<link rel="stylesheet" type="text/css" href="view/css/estilo.css" />
<link rel="stylesheet" type="text/css"
	href="view/bootstrap/css/bootstrap.min.css" />

<script type="text/javascript" src="view/js/jquery-2.1.4.js"></script>
<script type="text/javascript" src="view/bootstrap/js/bootstrap.min.js"></script>

</head>

<body id="corpoPadrao">

	<nav id="divMenu" class="navbar navbar-inverse">
		<div class="container-fluid">

			<div>
				<ul class="nav navbar-nav">

					<li><a href="listarProdutoIndex">Home</a></li>

					<li><a>|</a></li>

					<li><a href="listarProduto">Produto</a></li>

					<li><a>|</a></li>

					<li><a href="listarCategoriaProduto">Categoria</a></li>

					<li><a>|</a></li>

					<li><a href="listarGeneroProduto">Genero</a></li>

					<li><a>|</a></li>

					<li><a href="listarTipoProduto">Tipo</a></li>

					<li><a>|</a></li>

					<li><a href="logout">Sair</a></li>

				</ul>
			</div>
		</div>
	</nav>



	<div align="center">

		<div align="left" style="color: #6E6E6E; width: 70%; margin-top: 4%;">

			<c:if test="${msg ne null}">
				<div class="alert alert-error" style="width: 70%;">
					<a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>
					${msg}
				</div>
			</c:if>

			<hr />
			<p>
			<table style="width: 100%">
				<tr>
					<td style="float: left; font-size: 24px;">Lista de <strong>Pedido
							de Produto</strong>
					</td>
					<td style="float: right;"><a href="exibirPedido"
						class="btn btn-primary" role="button">Inclusão de Pedido</a></td>
				</tr>
			</table>
			</p>

			<hr />


			<table class="table table-striped table-bordered">
				<thead>
					<tr>
						<th style="width: 20%; vertical-align: middle;">Nome do
							Usuário</th>
						<th style="width: 20%; vertical-align: middle;">Data de
							criação</th>
						<th style="width: 20%; vertical-align: middle;">mensagem</th>
						<th style="width: 20%; vertical-align: middle;">Ações</th>
					</tr>
				</thead>
				<c:forEach items="${listarPedido}" var="p">
					<tr>
						<td style="vertical-align: middle;">${p.usuario.nomeUsuario}</td>
						<td style="vertical-align: middle;">${p.data}</td>
						<td style="vertical-align: middle;">${p.mensagem}</td>
						<td style="vertical-align: middle;"><a
							href="removerPedido?id=${p.id}" class="btn btn-danger"
							role="button">Remover</a> <a
							href="exibirAlterarPedido?id=${p.id}" class="btn btn-danger"
							role="button">Alterar</a></td>
					</tr>
				</c:forEach>
			</table>
		</div>

	</div>

	<br />

	<hr class="linhaSeparador">

</body>





 
 <footer>
 <div class="card-header">
 <center>
  <div class="card-header">PsyChomics</div>
  <div class="card-body">
 <a href="listarProdutoIndex">Início</a><br>
 <a	href="exibirCadastrarUsuario">Cadastre-se</a><br>
 <a href="exibirLoginUsuario">Login</a>
 </center>					
 </div>
 </footer>


</html>
