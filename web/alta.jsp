<%-- 
    Document   : alta
    Created on : 3/10/2018, 02:12:25 PM
    Author     : lab2
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Guardar Datos</title>
    </head>
    <body>
        <%            
            String strUsuario= (String)session.getAttribute("varSUsuario");
            
        %>
        <form action="guardar.jsp" method="get">
            <div>
                <h1><%=strUsuario%></h1>
                <br>
                ID: <input type="text" name="txtID">
                <br>
                Nombre: <input type="text" name="txtNombre">
                <br>
                Carrera: <select name="sctCarrera">
                    <option value ="Software">Software </option>
                    <option value ="Educacion">Educacion Infantil </option>
                    <option value ="Psicologia">Psicologia </option>
                </select>
                <br>
                <input type="submit" name="btnGuardar" value="Guardar">
            </div>
        </form>        
    </body>
</html>
