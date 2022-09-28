<!DOCTYPE html>
<html lang="pt-br">
<head>
<meta charset="UTF-8">
<title>.::Porções::.</title>
<link rel="stylesheet" href="reset.css">
<link rel="stylesheet" href="style.css">
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css">
</head>
  <header>
    <nav class="navbar navbar-expand-lg navbar-dark bg-black">
      <div class="container-fluid">
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent"
          aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
          <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarSupportedContent">
          <ul class="navbar-nav me-auto mb-2 mb-lg-0">
            <li class="nav-item">
              <a class="nav-link active" aria-current="page" href="index.html">INICIO</a>
            </li>
            <li class="nav-item dropdown">
              <a class="nav-link dropdown-toggle" id="navbarDropdown" role="button" data-bs-toggle="dropdown"
                aria-expanded="false">Catálago</a>
              <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
                <li><a class="dropdown-item" href="cerveja.jsp">Alcoólicas </a></li>
                <li><a class="dropdown-item" href="refrigerante.jsp">Sucos e Refrigerantes</a></li>
                <li><a class="dropdown-item" href="porcao.jsp">Porções</a></li>

              </ul>
            </li>
          </ul>
        </div>
      </div>
    </nav>
  </header>
<body>
	<section>
		<%@ page
			import="com.crudfinalizado.dao.ProdutoDao, com.crudfinalizado.bean.*, java.util.*"%>
		<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

		<img class="imgfundo" src="refrigerantesfundo.jpg">

		<h1 class="titulo-principal">Refrigerantes e Sucos</h1>
		<div class="container">
			<%
				List<Produto> list = ProdutoDao.getAllRefrigerante();

				request.setAttribute("list", list);
			%>

			<table class="table table-hover">
				<c:forEach items="${list}" var="produto">
					<tr>
						<td>${produto.getNome()}</td>
						<td>${produto.getGrupo()}</td>
						<td>${produto.getFornecedor()}</td>
						<td>${produto.getPreco()}</td>
						<td>${produto.getEstoque()}</td>

					</tr>
				</c:forEach>
			</table>
		</div>
	</section>

	<script
		src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.10.2/dist/umd/popper.min.js"
		integrity="sha384-7+zCNj/IqJ95wo16oMtfsKbZ9ccEh31eOz1HGyDuCQ6wgnyJNSYdrPa03rtR1zdB"
		crossorigin="anonymous"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.min.js"
		integrity="sha384-QJHtvGhmr9XOIpI6YVutG+2QOK9T+ZnN4kzFN1RtK3zEFEIsxhlmWl5/YESvpZ13"
		crossorigin="anonymous"></script>
</body>
</html>