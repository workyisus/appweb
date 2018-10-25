<%-- 
    Document   : modificar
    Created on : 25-oct-2018, 12:13:48
    Author     : EDDNO_25
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
            String strUsuario= (String)session.getAttribute("varSUsuario");
            
        %>
        <form action="modificar2.jsp" method="get">
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
