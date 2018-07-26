<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <jsp:useBean id="persona" class="model.Persona" />
        <jsp:setProperty name="persona" property="*"/>
        
        <h1>Con Scriptlet</h1>
        <%
        out.println(persona.getDNI()+"<br>");
        out.println(persona.getNombre());
        %>
        
        <h1>Con ...</h1>
        ${persona.DNI}<br>
        ${persona.nombre}
    </body>
</html>
