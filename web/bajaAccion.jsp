<%-- 
    Document   : bajaAccion
    Created on : 25-oct-2018, 11:34:32
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
            String strID = request.getParameter("txtID");
            Class.forName("com.mysql.jdbc.Driver");
            
            Connection conexion = null;
            Statement comando = null;
            
            try
            {
                conexion=DriverManager.getConnection("jdbc:mysql://localhost:3306/itson", "root", "root");
                
                comando = conexion.createStatement();
                comando.execute("DELETE FROM alumnos WHERE idalumnos = " + strID);
                
            }
            catch(SQLException ex)
            {
                
            }
        %>
        <h1>Se ha eliminado exitosamente!</h1>
        <a href="principal.jsp">volver</a>
    </body>
</html>
