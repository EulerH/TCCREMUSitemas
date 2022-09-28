<%@page import="com.crudfinalizado.dao.ProdutoDao"%>
<%@page import="com.crudfinalizado.bean.Produto"%>
<%@page import="com.crudfinalizado.dao.ProdutoDao" %>
<jsp:useBean id="p" class="com.crudfinalizado.bean.Produto"></jsp:useBean>
<jsp:setProperty  property="*" name="p" />

<%
	int i = ProdutoDao.updateproduto(p);
    response.sendRedirect("viewsproduto.jsp");

%>