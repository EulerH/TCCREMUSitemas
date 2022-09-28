<!DOCTYPE html>
<html>
<head>
<title>.::Listar Usuários::.</title>
	<meta charset="UTF-8">
	<link rel="stylesheet" href="reset.css">
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

<section>
	<%@ page import ="com.crudfinalizado.dao.UsuarioDao, com.crudfinalizado.bean.*, java.util.*"%>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"  %>
	

<h1 class="titulo-principal">Listagem de usuarios</h1>
<div class="container">
<%
	List<Usuario> list = UsuarioDao.getAllUsuario();
	
	request.setAttribute("list",list);
%>
 
	<a  type="button" class="btn btn-dark" href="addusuarioform.jsp">Adicionar Novo Usuário</a>
	<hr>
	
	
	<table class="table table-striped">

		<tr class="table-dark">
			<th>Id</th>
			<th>Nome</th>
			<th>Password</th>
			<th>Email</th>
			<th>Sexo</th>
			<th>Pais</th>
			<th colspan="2">Ações</th>
		</tr>
		<c:forEach items = "${list}" var="usuario">
			
			<tr>
				<td>${usuario.getId()}</td>
				<td>${usuario.getNome()}</td>
				<td>${usuario.getPassword()}</td>
				<td>${usuario.getEmail()}</td>
				<td>${usuario.getSexo()}</td>
				<td>${usuario.getPais()}</td>
				<td><a href="editform.jsp?id=${usuario.getId() }" class="btn">
				   <img src="edit.png" width="16px">
				</a></td>
				
				<td><a href="deleteusuario.jsp?id=${usuario.getId() }" class="btn"><img src="trash.png" width="16px"></a></td>
			</tr>
		</c:forEach>
		
		
	</table>
	
<br>
 
</div>
</section>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.10.2/dist/umd/popper.min.js"
    integrity="sha384-7+zCNj/IqJ95wo16oMtfsKbZ9ccEh31eOz1HGyDuCQ6wgnyJNSYdrPa03rtR1zdB"
    crossorigin="anonymous"></script>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.min.js"
    integrity="sha384-QJHtvGhmr9XOIpI6YVutG+2QOK9T+ZnN4kzFN1RtK3zEFEIsxhlmWl5/YESvpZ13"
    crossorigin="anonymous"></script>
</body>
</html>