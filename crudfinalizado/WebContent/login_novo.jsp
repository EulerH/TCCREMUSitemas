<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
    <title>.::Login::.</title>
    <link rel="stylesheet" href="reset.css">
    <link rel="stylesheet" href="style.css">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css">
</head>
<body>
	<form action="check.jsp" method="post">
	   <section class="vh-100 gradient-custom">
        <div class="container py-5 h-100">
            <div class="row d-flex justify-content-center align-items-center h-100">
                <div class="col-12 col-md-8 col-lg-6 col-xl-5">
                    <div class="card bg-dark text-white" style="border-radius: 1rem;">
                        <div class="card-body p-5 text-center">

                            <div class="mb-md-5 mt-md-4 pb-5">
                            
                             <h2 class="fw-bold mb-2 text-uppercase">ENTRE</h2>
                             <p class="text-white-50 mb-5">Por favor digite seu e-mail e senha!</p>
                             
				 <div class="form-outline form-white mb-4">
					<label class="form-label"   for="typePasswordX">Login</label>
					<td><input class="form-control form-control-lg"  type="text" name="login">
				</div>
				
				<div class="form-outline form-white mb-4">
					<label class="form-label" for="typePasswordX">Senha</label>
					<td><input class="form-control form-control-lg" type="password" name="password"></td>
				</div>
				
				<div class="form-outline form-white mb-4">
					<td><input class="btn btn-outline-light" type="submit" value="acessar"></td>
				</div>		
                            </div>

                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
	</form>
</body>
</html>