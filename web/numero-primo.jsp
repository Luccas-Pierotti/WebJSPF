<%-- 
    Document   : numero-primo
    Created on : 24 de set. de 2024, 13:47:00
    Author     : piero
--%>

<%
    
    int n1 = 0;
    int contador = 0;
    String result = "";
    int[] multi = null;
    
    
    try {
            if (request.getParameter("envio")!=null) {
                n1 = Integer.parseInt(request.getParameter("n1"));
                contador = 0;
                
                
                for (int i = 1; i <= n1; i++) {
                
                    if (n1%i==0) {
                            contador++;
                        }
                    }
                    
                    multi = new int[contador];
                    int index = 0;
                    
                if (contador== 2) {
                    
                    result = "É Primo";
                     for (int i = 1; i <= n1; i++) {
                
                    if (n1%i==0) {
                        multi[index] = i;
                            index++;
                            
                        }
                    }   
                    }
                else if(contador != 2){
                   result = "Não é primo";
                   
                   for (int i = 1; i <= n1; i++) {
                
                    if (n1%i==0) {
                        multi[index] = i;
                            index++;
                            
                        }
                    }
                   
                    }
                
                }
        } catch (Exception e) {
        }
%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="jspf/header.jspf" %>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Descubra se um número é primo</h1>
        <form action="numero-primo.jsp">
            <input placeholder="Digite um número" name="n1" type="number">
            <input placeholder="Enviar" name="envio" type="submit">
            <h3>Resultado:<%=result%></h3>
            
             <h3>Divisores:</h3>
            <ul>
                <% 
                    if (multi != null) {
                        for (int i = 0; i < multi.length; i++) {
                            out.println("<li>" + multi[i] + "</li>");
                        }
                    }
                %>
        </form>
    </body>
</html>
