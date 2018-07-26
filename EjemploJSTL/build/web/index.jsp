<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <jsp:include page="header.jsp"/>
        <form action="registro.jsp" method="post">
            <input type="text" name="DNI" placeholder="DNI"/>
            <input type="text" name="nombre" placeholder="Nombre"/>
            <input type="submit" value="Buscar"/>
        </form>
        <jsp:include page="footer.jsp"/>
    </body>
</html>
