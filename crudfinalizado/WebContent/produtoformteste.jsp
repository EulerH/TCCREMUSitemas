<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<html>
<meta charset="iso-8859-1">
<head>
    <title>.::Cadastro Produtos::.</title>
    <link rel="stylesheet" href="reset.css">
    <link rel="stylesheet" href="style.css">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css">
</head>

<h1> Cadastrar Produto</h1>

<body class="maincontatos">

<form action="addproduto.jsp" method="post">
	
	<div class="col"> 
	Nome Produto       <input class="form-control" type="text" name ="nome" /><br>
	</div>
	<div class="col"> 
	
	<select>
		<option>Select</option>
		
		
<%
					try{
						Class.forName("com.mysql.jdbc.Driver");
						Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/crudfinalizado", "root", "");
						Statement st = con.createStatement();
						String query = "select * from produto";

						ResultSet rs = st.executeQuery(query);

						while (rs.next()) {
				%>
				<option><%=rs.getString("grupo")%></option>
				<%
				}
				
			} catch (Exception e){
			
			}
%>
	</select>
	
	Grupo   <input class="form-control" type="text" name ="grupo" /><br>
	</div>
	<div class="col">
	Fornecedor      <input class="form-control" type="text" name ="fornecedor" /><br>
	</div>
	<div class="col">
	Preço      <input class="form-control" type="text" name ="preco" /><br>
	</div>
	<div class="col">
	Estoque     <input class="form-control" type="text" name ="estoque" /><br>
	</div>
	<div class="col">
	Imagem     <input class="form-control" type="file" name ="imagem" /><br>
	</div>
	
<input class="btn btn-dark" type="submit" value="Cadastrar">


</form>
</form>
</body>
</html>