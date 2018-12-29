<%@page import="br.com.revista.dados.RevistaBD"%>
<%@page import="br.com.revista.entidade.Revista"%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Cadastro de Revistas</title>

</head>

<body bgcolor="lightgray">
	
	      <h1><i>Cadastro de Revistas</i></h1>
	
	<form action = "RevistaCtrl" method="post">
         
         <div><br>
              <label for="id"><i>Código:*</i></label>
              <input type="text" name="id" />
         </div>
  
         <div><br>
	          <label for="nome"><i>Nome:*</i></label>  
              <input type="text" name="nome" />
         </div>
  
         <div><br>
              <label for="nome"><i>Ano:*</i></label>
              <input type="text" name="ano" />
         </div>
    
         <div><br>
              <label for="nome"><i>Mês:*</i></label>
              <input type="text" name="mes" />
         </div>
 
         <div><br>
              <label for="nome"><i>Quantidade de Páginas:*</i></label>
              <input type="text" name="qtdpg" />
         </div>

         <br><input type="submit" value="Salvar"/>
    
	</form>

               <h1>Consultar Revista</h1>
	
	<form action="ConsultaRevista.jsp" method="post">

          <div><br>
			   <label  for="nome" ><i>Consultar Revista:*</i></label>
			   <input  type="text" name="idconsulta" />
		  </div>
		  
		  <br> <input type="submit" value="Consultar" />
    </form>
	


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
    
                <% for(Revista revista : new RevistaBD().getAll()){ %>
    
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


</body>
</html>