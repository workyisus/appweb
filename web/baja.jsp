<%-- 
    Document   : baja
    Created on : 5/10/2018, 02:25:20 PM
    Author     : lab2
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Eliminar Datos</title>
    </head>
    <body>
        <%            
            String strUsuario= (String)session.getAttribute("varSUsuario");
            
        %>
        <form action="baja2.jsp" method="get">
            <div>
                <h1><%=strUsuario%></h1>
                <br>
                ID: <input type="text" name="txtID">
                <br>                
                <input type="submit" name="btnContinuar" value="Continuar">
                <br>
                <a href="principal.jsp">volver</a>
            </div>
        </form>
    </body>
</html>
