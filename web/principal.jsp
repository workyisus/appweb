<%-- 
    Document   : principal
    Created on : 1/10/2018, 02:26:44 PM
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
            String strUsuario=(String)session.getAttribute("varSUsuario");
            
            if (strUsuario == null) {
                    String mensaje="Necesitas loguearte primero";
                    response.sendRedirect("index.jsp?msj="+mensaje);
                }
        %>
        <h1>Bienvenido <%=strUsuario%></h1>
        <a href="alta.jsp">alta</a>
        <a href="baja.jsp">baja</a>
        <a href="modificar.jsp">modificar</a>
        <a href="mostrar.jsp">mostrar</a>
        <a href="salir.jsp"> Cerrar Sesion </a>
    </body>
</html>
