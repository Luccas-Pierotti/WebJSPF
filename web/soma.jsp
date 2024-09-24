<%-- 
    Document   : soma
    Created on : 24 de set. de 2024, 14:42:46
    Author     : piero
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="jspf/header.jspf" %>

<%
    int n1 = 0;
    int soma = 0;
    
try {
        if (request.getParameter("envio")!=null) {
        n1 = Integer.parseInt(request.getParameter("n1"));
        
        for (int i = 1; i <= n1; i++) {
        
        soma = soma +i;
                
            }
        }
    } catch (Exception e) {
    }
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Soma Entre Números</h1>
         <form action="soma.jsp">
            <input placeholder="Digite um número" name="n1" type="number">
            <input placeholder="Enviar" name="envio" type="submit">
            <h2>Soma de 0 até <%=n1%>: <%=soma%></h2>
         </form>
    </body>
</html>
