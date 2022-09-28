<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Edição de Produtos</title>
	<link rel="stylesheet" href="reset.css">
    <link rel="stylesheet" href="style.css">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css">
</head>

<h1> Alterar Produto</h1>
<body class="maincontatos">
<form action="editproduto.jsp" method="post">



<%@ page import ="com.crudfinalizado.dao.ProdutoDao, com.crudfinalizado.bean.*"%>
 
<%
	String id = request.getParameter("id");
	Produto produto = ProdutoDao.getRegistroById(Integer.parseInt(id));

%>
 id numero: <%=produto.getId() %>
 
 
 	
	Id <br><input type="text" name ="id" value="<%= produto.getId()%>" /><br>
	Nome <br><input type="text" name ="nome" value="<%= produto.getNome()%>" /><br>
	Grupo <br><input type="text" name ="grupo" value="<%= produto.getGrupo()%>" /><br>
	Fornecedor <br><input type="text" name ="fornecedor" value="<%= produto.getFornecedor()%>" /><br>
	Preço <br><input type="text" name ="preco" value="<%= produto.getPreco()%>" /><br>
	Estoque<br> <input type="text" name ="estoque" value="<%= produto.getEstoque()%>" /><br>
	
<input type="submit" value="Atualizar">
</form>
</body>
</html>