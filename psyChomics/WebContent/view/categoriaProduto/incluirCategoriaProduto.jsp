<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>

<!DOCTYPE html>

<html>
<head>
<meta charset="UTF-8">
<title>Sistema de Controle de Estoque</title>

<link rel="stylesheet" type="text/css" href="view/css/estilo.css" />
<link rel="stylesheet" type="text/css" href="view/bootstrap/css/bootstrap.min.css" />
  
<script type="text/javascript" src="view/js/jquery-2.1.4.js"></script>
<script type="text/javascript" src="view/bootstrap/js/bootstrap.min.js"></script>

</head>

<body id="corpoPadrao">

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
						<td style="float: left; font-size: 24px;"> inclusão de <strong>Categoria de Produto</strong> </td>
						<td style="float: right;"> <a href="ListarProdutoIndex" class="btn btn-primary" role="button">Home</a> </td>
						<td style="float: right;"> <a href="listarGeneroProduto" class="btn btn-primary" role="button">Listar Genero</a> </td>
						<td style="float: right;"> <a href="listarCategoriaProduto" class="btn btn-primary" role="button">Listar Categoria</a> </td>
						<td style="float: right;"> <a href="listarTipoProduto" class="btn btn-primary" role="button">Listar Tipo</a> </td>
						<td style="float: right;"> <a href="listarProduto" class="btn btn-primary" role="button">Listar Produto</a> </td>
					</tr>
				</table>
			</p>
			
			<hr />
			
			<form action="incluirCategoriaProduto" method="post">
  				
  				<div class="form-group">
					<label for="inputDescricao">Descrição</label>
					<input type="text" id="inputDescricao" class="form-control" name="descricao" style="width: 500px;" maxlength="100" required="required" value="${categoriaProduto.descricao}" /> &nbsp;
					<form:errors path="categoriaProduto.descricao" cssStyle="color:red" />
				</div>

				<br />
  				
  				<a href="listarCategoriaProduto" class="btn btn-danger" role="button">Cancelar</a> &nbsp;
  				<button type="reset" class="btn btn-default"> &nbsp; Limpar &nbsp; </button> &nbsp;
  				<button type="submit" class="btn btn-primary"> &nbsp; Inserir &nbsp; </button>
  				
			</form>
		</div>
			
	</div>
	
	<br />
	
	<hr class="linhaSeparador">
	


</body>
</html>
