<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<!DOCTYPE html>

<html>
<head>
<meta charset="UTF-8">
<title>Sistema de Controle de Estoque</title>

<link rel="stylesheet" type="text/css" href="view/css/estilo.css" />
<link rel="stylesheet" type="text/css"
	href="view/bootstrap/css/bootstrap.min.css" />

<script type="text/javascript" src="view/js/jquery-2.1.4.js"></script>
<script type="text/javascript" src="view/bootstrap/js/bootstrap.min.js"></script>
<script type="text/javascript" src="view/js/maskedinput.js"></script>

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
					<td style="float: left; font-size: 24px;">Alteração de <strong>Tipo
							de Produto</strong>
					</td>
					<td style="float: right;"><a href="listarTipoProduto"
						class="btn btn-primary" role="button">lista de Tipo</a></td>
				</tr>
			</table>
			</p>

			<hr />

			<form action="alterarTipoProduto" method="post">

				<input type="hidden" name="id" value="${tipoProduto.id}">

				<div class="form-group">
					<label for="inputDescricao">Descrição</label> <input type="text"
						id="inputDescricao" class="form-control" name="descricao"
						style="width: 500px;" maxlength="100" required="required"
						value="${tipoProduto.descricao}" /> &nbsp;
					<form:errors path="tipoProduto.descricao" cssStyle="color:red" />
				</div>

				<br /> <a href="listarTipoProduto" class="btn btn-danger"
					role="button">Cancelar</a> &nbsp;
				<button type="reset" class="btn btn-default">&nbsp; Limpar
					&nbsp;</button>
				&nbsp;
				<button type="submit" class="btn btn-warning">&nbsp;
					Alterar &nbsp;</button>

			</form>
		</div>

	</div>

	<br />

	<hr class="linhaSeparador">

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




</body>
</html>
