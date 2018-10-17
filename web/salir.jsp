<%-- 
    Document   : salir
    Created on : 1/10/2018, 02:35:04 PM
    Author     : lab2
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <% 
            HttpSession sesion=request.getSession(false);
            sesion.invalidate(); 
        %>
        <h1>La sesion ha terminado</h1>
    </body>
</html>
