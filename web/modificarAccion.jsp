<%-- 
    Document   : modificarAccion
    Created on : 25-oct-2018, 12:35:07
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
            String Nombre = request.getParameter("txtNombre");
            String Carrera = request.getParameter("sctCarrera");
            
            Class.forName("com.mysql.jdbc.Driver");
            
            Connection conexion = null;
            Statement comando = null;
            
            try
            {
                conexion=DriverManager.getConnection("jdbc:mysql://localhost:3306/itson", "root", "root");
                
                comando = conexion.createStatement();
                comando.execute("UPDATE alumnos SET NombreAlumno = '"+ Nombre + "', Carrera = '"+ Carrera +"' WHERE idalumnos = " + strID + ";");                
            }
            catch(SQLException ex)
            {
                
            }
            finally
            {
                conexion.close();
            }
        %>
        <h1>Se ha modificado exitosamente!</h1>
        <a href="principal.jsp">volver</a>
    </body>
</html>
