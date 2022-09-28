
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Listar Produtos</title>
	
	
    <link rel="stylesheet" href="style.css">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
        integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">

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
              <a class="nav-link active" aria-current="page" href="login.html">INICIO</a>
            </li>

            <li class="nav-item dropdown">
              <a class="nav-link dropdown-toggle" id="navbarDropdown" role="button" data-bs-toggle="dropdown"
                aria-expanded="false">Catálago</a>
              <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
                <li><a class="dropdown-item" href="todosprodutos.jsp">Todos os Produtos</a></li>
                <li><a class="dropdown-item" href="cerveja.jsp">Alcoólicas </a></li>
                <li><a class="dropdown-item" href="refrigerante.jsp">Sucos e Refrigerantes</a></li>
                <li><a class="dropdown-item" href="porcao.jsp">Porções</a></li>
              </ul>
            </li>
            
           <li>
              <a class="nav-link active" aria-current="page" href="viewsproduto.jsp">Produtos</a>
            </li>
            
            <li>
              <a class="nav-link active" aria-current="page" href="viewsusuarios.jsp">Usuários</a>
            </li>
            
          </ul>
          <form class="d-flex">
            <a class="nav-link" href="index.html">SAIR</a>
          </form>
        </div>
      </div>
    </nav>
  </header>
<body>

	<%@ page import ="com.crudfinalizado.dao.ProdutoDao, com.crudfinalizado.bean.*, java.util.*"%>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"  %>
	

<h1  class="titulo-principal">Listagem de produtos</h1>
<main class="mainprodutos">
<div class="container">
<%
	List<Produto> list = ProdutoDao.getAllProduto();
	
	request.setAttribute("list",list);
%>
 
	<a type="button" class="btn btn-dark" href="addprodutoform.jsp">Adicionar Novo Produto</a>
	<hr>
	
	

	
	<table class="table table-striped">
		<tr class="table-dark">
			<th>Id</th>
			<th>Nome Produto</th>
			<th>Grupo</th>
			<th>Fornecedor</th>
			<th>Preço</th>
			<th>Quantidade</th>
			<th>Editar</th>
			<th colspan="2">Ações</th>
		</tr>
		<c:forEach items = "${list}" var="produto">
			
				
		<tr>
				<td>${produto.getId()}</td>
				<td>${produto.getNome()}</td>
				<td>${produto.getGrupo()}</td>
				<td>${produto.getFornecedor()}</td>
				<td>${produto.getPreco()}</td>
				<td>${produto.getEstoque()}</td>
				
				

			
				<td><a href="editformproduto.jsp?id=${produto.getId() }" class="btn">
				   <img src="edit.png" width="16px">
				</a></td>
				
				<td><a href="deleteproduto.jsp?id=${produto.getId() }" class="btn"><img src="trash.png" width="16px"></a></td>
			</tr>
		</c:forEach>
		
		
	</table>
	
<br>
</div>
</main>
</body>
</html>