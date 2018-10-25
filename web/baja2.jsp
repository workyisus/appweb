<%-- 
    Document   : baja2
    Created on : 24-oct-2018, 11:37:34
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
        <form action="bajaAccion.jsp" method="get">  
                <input name="txtID" type="hidden" value=<%=strID%>>
                <br>
                <b>Nombre: <%=Nombre%></b>
                <br>
                <b>Carrera: <%=Carrera%></b>
                <br>
                <input type="submit" name="btnContinuar" value="Aceptar">
                <br>
                <a href="principal.jsp">volver</a>
        </form>
    </body>
</html>
