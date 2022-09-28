<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Edição de usuários</title>

	<link rel="stylesheet" href="reset.css">
    <link rel="stylesheet" href="style.css">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css">
    
</head>

<h1> Alterar Usuário</h1>

<body class="maincontatos">
<form action="editusuario.jsp" method="post">
<%@ page import ="com.crudfinalizado.dao.UsuarioDao, com.crudfinalizado.bean.*"%>
 
<%
	String id = request.getParameter("id");
	Usuario usuario = UsuarioDao.getRegistroById(Integer.parseInt(id));

%>
 
 
 
	Id: <br><input type="text" name ="id" value="<%= usuario.getId()%>" /><br>
	Nome: <br><input type="text" name ="nome" value="<%= usuario.getNome()%>" /><br>
	Password: <br><input type="password" name ="password" value="<%= usuario.getPassword()%>" /><br>
	Email: <br><input type="text" name ="email" value="<%= usuario.getEmail()%>" /><br>
	Sexo: <br>
	 <input type="radio" name ="sexo" value="<%= usuario.getSexo() %>"  />Masculino
	 <input type="radio" name ="sexo" value="<%= usuario.getSexo() %>" />Feminino<br>
	País: <br>
	 <select name="pais">
	 	<option>Brasil</option>
	 	<option>Argentina</option>
	 	<option>Chile</option>
	 	<option>EUA</option>
	 </select>
	
<input type="submit" value="Atualizar">
</form>
</body>
</html>