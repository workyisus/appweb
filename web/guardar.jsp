<%-- 
    Document   : guardar
    Created on : 3/10/2018, 02:45:04 PM
    Author     : lab2
--%>

<%@page import="java.sql.*" %>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            String Usuario = (String)session.getAttribute("varSUsuario");
            String ID = request.getParameter("txtID");
            String Nombre = request.getParameter("txtNombre");
            String Carrera = request.getParameter("sctCarrera");
        %>
        
        <%@page import="java.io.*"%>
        <%
            /*
            BufferedReader reader = new BufferedReader(new FileReader("C:\\datos\\DatosUsuarios.txt"));
            StringBuilder sb = new StringBuilder();
            String line;

            while((line = reader.readLine())!= null){
                sb.append(line+"\n");
                if (true) {

                    }
            }
            */
        %>
        <%
            /*
         //File creation
         String strPath = "C:\\datos\\DatosUsuarios.txt";
         File strFile = new File(strPath);
         //boolean fileCreated = strFile.createNewFile();
         //File appending
         Writer objWriter = new PrintWriter(new FileOutputStream(new File(strPath),true));
         //Writer objWriter = new BufferedWriter(new FileWriter(strFile));
         //objWriter.flush();
         objWriter.write("\n" + Usuario +"\t\t" + "|" + ID +"\t\t" + "|" + Nombre + "\t\t" + "|" + Carrera);           
         objWriter.close();
            */
        %> 
        
        <%
            Class.forName("com.mysql.jdbc.Driver");
            
            Connection conexion = null;
            Statement comando = null;
            ResultSet resultado = null;
            try
            {
                conexion=DriverManager.getConnection("jdbc:mysql://localhost:3306/itson", "yisus", "bowsette");
                
                comando = conexion.createStatement();
                comando.execute("");
            }
            catch(SQLException ex)
            {
                
            }
        %>
        <h1>Se ha guardado exitosamente!</h1>
        <a href="principal.jsp">volver</a>
    </body>
</html>
