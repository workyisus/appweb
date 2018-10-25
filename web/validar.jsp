<%-- 
    Document   : validar
    Created on : 24/09/2018, 02:34:47 PM
    Author     : lab2
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.io.PrintWriter" %>
<%@page import="java.sql.*" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            String usuario = request.getParameter("varUsuario");
            String password = request.getParameter("varPassword");
            
            Class.forName("com.mysql.jdbc.Driver");
            
            Connection conexion = null;
            Statement comando = null;            
            try
            {
                conexion=DriverManager.getConnection("jdbc:mysql://localhost:3306/itson", "root", "root");
                
                comando = conexion.createStatement();
                comando.execute("SELECT * FROM usuarios");
                while(comando.getResultSet().next())
                {
                    if (comando.getResultSet().getString("Nombre").equals(usuario) && comando.getResultSet().getString("Password").equals(password)) {
                           PrintWriter salida = response.getWriter();
                            salida.println("<h1>Bienvenido " + usuario + "</h1>");


                            Cookie guardar =new Cookie("cUsuario", usuario);
                            guardar.setMaxAge(10000);
                            response.addCookie(guardar);

                            HttpSession sesion = request.getSession(true);
                            sesion.setAttribute("varSUsuario", usuario);

                            response.sendRedirect("principal.jsp"); 
                            conexion.close();
                            break;
                        }
                }
                if (!response.isCommitted()) {
                     String mensaje="Usuario o Contraseña Invalida!";
                    response.sendRedirect("index.jsp?msj="+mensaje);   
                    }
                
            }catch(SQLException ex)
                    {
                        PrintWriter salida = response.getWriter();
                        salida.println(ex.getMessage());
                    }
            
                
        %>
        
    </body>
</html>
