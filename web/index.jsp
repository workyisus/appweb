<%-- 
    Document   : index
    Created on : 24/09/2018, 02:52:56 PM
    Author     : lab2
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Cookies y Sesiones</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
    </head>
    <body>
        <%
            String varMensaje=(String)request.getParameter("msj");
            if (varMensaje==null) {
                    varMensaje="";
                }
            Cookie[] listaCookies = request.getCookies();
            Cookie cookie;
            String valorUsuario="";
            for (int i = 0; i < listaCookies.length; i++) {
                    cookie = listaCookies[i];
                    if (cookie.getName().equals("cUsuario")) 
                    {
                        valorUsuario = cookie.getValue();
                    }
                }
        %>
        <form action="validar.jsp" method="get">
            Ingrese su usuario: <input type="text" name="varUsuario" value=<%=valorUsuario%>>    
            <br>            
            Ingrese su password: <input type="password" name="varPassword"/>
            <br>
            <input type="submit" name="varEnviarServidor" value="Enviar"/>
            <div>
                <%=varMensaje%>
            </div>
        </form>
    </body>
</html>
