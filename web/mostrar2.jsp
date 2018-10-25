<%-- 
    Document   : mostrar2
    Created on : 25-oct-2018, 13:38:53
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
        <%@page import="java.sql.*" %>
        <%            
            String strID= request.getParameter("txtID");
            String Nombre = "";
            String Carrera = "";
            
            Class.forName("com.mysql.jdbc.Driver");
            
            Connection conexion = null;
            Statement comando = null;
            
            try
            {
                conexion=DriverManager.getConnection("jdbc:mysql://localhost:3306/itson", "root", "root");
                
                comando = conexion.createStatement();
                comando.execute("SELECT NombreAlumno, Carrera FROM alumnos WHERE idalumnos = " + strID);
                comando.getResultSet().next();
                Nombre = comando.getResultSet().getString("NombreAlumno").toString();
                Carrera = comando.getResultSet().getString("Carrera").toString();
            }
            catch(SQLException ex)
            {
                
            }
        
        %>
                <b>ID: </b><input name="txtID" type="text" value=<%=strID%> disabled>
                <br>
                <b>Nombre: </b><input name="txtNombre" type="text" value=<%=Nombre%> disabled>
                <br>
                <b>Carrera: </b><input name="txtNombre" type="text" value=<%=Carrera%> disabled>
                <br>                
                <a href="principal.jsp">volver</a>
    </body>
</html>
