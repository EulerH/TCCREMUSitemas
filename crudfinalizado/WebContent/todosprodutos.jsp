
<!DOCTYPE html>
<html lang="pt-br">
<head>
  <meta charset="UTF-8">
  <title>>Todos os Produtos</title>
  <link rel="stylesheet" href="reset.css">
  <link rel="stylesheet" href="style.css">
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
    integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
</head>
<header>

		<nav class="navbar navbar-expand-lg navbar-dark bg-black">
			<div class="container-fluid">
				<button class="navbar-toggler" type="button"
					data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent"
					aria-controls="navbarSupportedContent" aria-expanded="false"
					aria-label="Toggle navigation">
					<span class="navbar-toggler-icon"></span>
				</button>
				<div class="collapse navbar-collapse" id="navbarSupportedContent">
					<ul class="navbar-nav me-auto mb-2 mb-lg-0">
						<li class="nav-item"><a class="nav-link active"
							aria-current="page" href="index.html">INICIO</a></li>

							
					</ul>
				</div>
			</div>
		</nav>
</header>
<body>
	<%@ page import ="com.crudfinalizado.dao.ProdutoDao, com.crudfinalizado.bean.*, java.util.*"%>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"  %>
	

<h3>Todos os Produtos</h3>
<div class="container">
<%
	List<Produto> list = ProdutoDao.getAllProduto();
	
	request.setAttribute("list",list);
%>
 
	<hr>
	
	<table class="table table-hover">
		<tr class="table-dark">
			<th>Nome Produto</th>
			<th>Grupo</th>
			<th>Fornecedor</th>
			<th>Preço</th>
			<th>Quantidade</th>
		</tr>
		<c:forEach items = "${list}" var="produto">
			
				
		<tr>
				<td>${produto.getNome()}</td>
				<td>${produto.getGrupo()}</td>
				<td>${produto.getFornecedor()}</td>
				<td>${produto.getPreco()}</td>
				<td>${produto.getEstoque()}</td>
				
				

			
				

			</tr>
		</c:forEach>
		
		
	</table>
	
<br>
 
</div>
</body>
</html>