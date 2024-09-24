<%-- 
    Document   : fibonacci
    Created on : 24 de set. de 2024, 14:28:24
    Author     : piero
--%>
<%
    int n = 0;
    int a = 0;
    int b = 1;
    int c = 0;
    
    int[] multi = null;
    
try {
        if (request.getParameter("envio")!=null) {
        n = Integer.parseInt(request.getParameter("n1"));
        int index = 0;   
        multi = new int[n];
            if (n > 0) {
                multi[0] = a;
            }
            if (n > 1) {
                multi[1] = b; 
            }
            
           
            for (int i = 2; i < n; i++) {
                c = a + b; 
                multi[i] = c;
                a = b; 
                b = c; 
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
        <h1>Fibonacci</h1>
        <form action="fibonacci.jsp">
            <input placeholder="Digite um número" name="n1" type="number">
            <input placeholder="Enviar" name="envio" type="submit">
            
            <h2>Sequência de Fibonacci:</h2>
        <ul>
            <% 
                if (multi != null) {
                    for (int i = 0; i < multi.length; i++) {
                        out.println("<li>" + multi[i] + "</li>");
                    }
                }
            %>
        </ul>
            
        </form>
    </body>
</html>
