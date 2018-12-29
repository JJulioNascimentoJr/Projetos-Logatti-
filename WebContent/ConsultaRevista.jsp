<%@page import="br.com.revista.dados.RevistaBD"%>
<%@page import="br.com.revista.entidade.Revista"%>
<%@page import="br.com.revista.entidade.Consulta"%>


<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Consulta Revista</title>
</head>
<body bgcolor="lightgray">

<%
  Consulta consulta = new Consulta();
  consulta.setNome(request.getParameter("idconsulta"));
%>
 
 <h1 align="center">Lista de Revistas</h1>
	<div>
<table class="table table-hover table-dark" width="400px" align="center">
  <thead>
    <tr>
      <th scope="col">Código</th>
      <th scope="col">Nome</th>
      <th scope="col">Ano</th>
      <th scope="col">Mês</th>
      <th scope="col">Quantidade de Páginas</th>
    </tr>
  </thead>
  <tbody>
 
    
    <% for(Revista revista : new RevistaBD().consultaNome(consulta)){ %>
    
    <tr>
      <td width="400px" align="center"><%=revista.getId()%></td>
      <td width="400px" align="center"><%=revista.getNome() %></td>
      <td width="400px" align="center"><%=revista.getAno() %></td>
      <td width="400px" align="center"><%=revista.getMes()%></td>
      <td width="400px" align="center"><%=revista.getQtdpg()%></td>
    </tr>
    
  <% } %>
    </tbody>
</table>
</div>

	<form  action="CadastroRevista.jsp" method="post">

		<br> <input type="submit" value="Voltar"  />
	</form>
 
</body>
</html>