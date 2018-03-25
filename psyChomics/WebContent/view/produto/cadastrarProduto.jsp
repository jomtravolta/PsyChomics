<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<!DOCTYPE html>

<html>
<head>
<meta charset="UTF-8">
<title>PsyChomics</title>

<link rel="stylesheet" type="text/css" href="view/css/estilo.css" />
<link rel="stylesheet" type="text/css"
	href="view/bootstrap/css/bootstrap.min.css" />

<script type="text/javascript" src="view/js/jquery-2.1.4.js"></script>
<script type="text/javascript" src="view/bootstrap/js/bootstrap.min.js"></script>

</head>

<body id="corpoPadrao">

	<c:import url="/view/comum/menu.jsp" />

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
					<td style="float: left; font-size: 24px;">Inclusão de <strong>de
							Produto</strong>
					</td>
					<td style="float: right;"><a href="listarProduto"
						class="btn btn-primary" role="button">Lista de Produto</a></td>
				</tr>
			</table>
			</p>

			<hr />

			<form action="cadastrarProduto" method="post"
				enctype="multipart/form-data">
				<div class="form-group">
					<label for="inputNome">Nome</label> <input type="text"
						id="inputNome" class="form-control" name="nome"
						style="width: 500px;" placeholder="Nome" minlength="3"
						maxlength="50" required="required" />
				</div>
				<div class="form-group">
					<label for="inputPreco">Preço</label> <input type="number"
						min="0.00" max="10000.00" step="0.01" id="inputPreco"
						class="form-control" name="preco" style="width: 500px;"
						placeholder="Preço" maxlength="9" required="required" />
				</div>
				<div class="form-group">
					<label for="inputImagem">Imagem</label> <input type="file"
						id="inputImagem" class="form-control" name="file"
						style="width: 500px;" required="required" maxlength="255" />
				</div>
				<div class="form-group">
					<label for="inputDescricao">Descrição</label>
					<textarea for="inputDescricao" id="inputDescricao"
						class="form-control" placeholder="Descrição" name="descricao"
						style="width: 500px;" maxlength="600" required="required"></textarea>
				</div>
				<div class="form-group">
					Categoria: <br /> <select id="categoriaProduto"
						required="required" name="categoriaProduto"
						style="width: 200px; height: 30px; border: 1px solid #BDC7D8; color: #000000; border-top-left-radius: 5px; border-top-right-radius: 5px; border-bottom-right-radius: 5px; border-bottom-left-radius: 5px;">
						<option value="" required="required">Selecione</option>
						<c:forEach items="${listarCategoriaProduto}" var="obj">
							<option value="${obj.id}">${obj.descricao}</option>
						</c:forEach>
					</select>
				</div>
				<div class="form-group">
					Genero: <br /> <select required="required" id="generoProduto"
						name="generoProduto"
						style="width: 200px; height: 30px; border: 1px solid #BDC7D8; color: #000000; border-top-left-radius: 5px; border-top-right-radius: 5px; border-bottom-right-radius: 5px; border-bottom-left-radius: 5px;">
						<option value="">Selecione</option>
						<c:forEach items="${listarGeneroProduto}" var="obj">
							<option value="${obj.id}">${obj.descricao}</option>
						</c:forEach>
					</select>
				</div>
				<div class="form-group">
					Tipo: <br /> <select id="tipoProduto" required="required"
						name="tipoProduto"
						style="width: 200px; height: 30px; border: 1px solid #BDC7D8; color: #000000; border-top-left-radius: 5px; border-top-right-radius: 5px; border-bottom-right-radius: 5px; border-bottom-left-radius: 5px;">
						<option value="">Selecione</option>
						<c:forEach items="${listarTipoProduto}" var="obj">
							<option value="${obj.id}">${obj.descricao}</option>
						</c:forEach>
					</select>
				</div>
				<div class="form-check">
					<input class="form-check-input" type="radio" name="nacionalidade"
						id="inputNacionalidade" value="nacional" checked> <label
						class="form-check-label" value="nacional" for="inputNacionalidade">
						Nacional</label>
				</div>
				<div class="form-check">
					<input class="form-check-input" type="radio" name="nacionalidade"
						id="inputNacionalidade" value="importado"> <label
						class="form-check-label" value="importado"
						for="inputNacionalidade"> Importado</label>
				</div>
				<p>
					<a href="exibirListarIndex" class="btn btn-danger" role="button">Cancelar</a>
					&nbsp;
					<button type="reset" class="btn btn-default">&nbsp; Limpar
						&nbsp;</button>
					&nbsp;
					<button type="submit" value="cadastrar" class="btn btn-primary">&nbsp;
						Cadastrar &nbsp;</button>
				</p>
			</form>
		</div>

	</div>

	<br />

	<hr class="linhaSeparador">
<div class="textoRodape">
		<p><c:import url="/view/comum/textoRodape.jsp" /></p>
	</div>
</body>
</html>
