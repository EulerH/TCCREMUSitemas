<%@page import="com.crudfinalizado.dao.ProdutoDao"%>
<jsp:useBean id="p" class="com.crudfinalizado.bean.Produto"></jsp:useBean>
<jsp:setProperty property="*" name="p"></jsp:setProperty>


<%
	ProdutoDao.deleteProduto(p);
    response.sendRedirect("viewsproduto.jsp");

%>