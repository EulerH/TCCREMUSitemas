<%@page import="com.crudfinalizado.dao.ProdutoDao" %>
<jsp:useBean id="p" class="com.crudfinalizado.bean.Produto"></jsp:useBean>
<jsp:setProperty property="*" name="p"></jsp:setProperty>

<%
	int i = ProdutoDao.salvarProduto(p);
		if(i>0){
			response.sendRedirect("addproduto-success.jsp");
		} else {
			response.sendRedirect("addproduto-erro.jsp");
		}


%>>