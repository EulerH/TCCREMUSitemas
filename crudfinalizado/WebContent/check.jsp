<%@ page import="login.User" language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>.::Administrador::.</title>
 <link rel="stylesheet" href="reset.css">
    <link rel="stylesheet" href="style.css">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css">
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
<%User us = new User();
String nome  = request.getParameter("login");
String password  = request.getParameter("password");
boolean status = us.verificarUsuario(nome, password);

if(us.result==true){
	out.println("<h5>Bem-Vindo, Clique em acessar para ter acesso as funções de cadastro.</h5>" + us.nome);

	out.println("<h1><a href='login.html'>Acessar</a></h1>");
	
}

	else{
		out.println("<h5>Login ou senha inválidos<h5>");
		
		out.println("<h1><a href='login_novo.jsp'>Tentar Novamente</a></h1>");
	}
%>

<br>
</section>

</body>
</html>