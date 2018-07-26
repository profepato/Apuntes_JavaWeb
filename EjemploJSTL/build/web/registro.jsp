<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@taglib prefix="sql" uri="http://java.sun.com/jstl/sql" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <!-- Para los tildes y símbolos-->
        <fmt:requestEncoding value="UTF-8" />
        <!-- Para los tildes y símbolos-->
        
        <jsp:useBean id="persona" class="model.Persona" />
        <jsp:setProperty name="persona" property="*"/>

        <h1>Con Scriptlet</h1>
        <%
            out.println(persona.getDNI() + "<br>");
            out.println(persona.getNombre());
        %>

        <h1>Con Scriptlet 2</h1>
        <%= persona.getDNI()%><br>
        <%= persona.getNombre()%>

        <h1>Con expresiones</h1>
        ${persona.DNI}<br>
        ${persona.nombre}

        <h1>Con param</h1>
        ${param.DNI}
        <br>
        ${param.nombre}

        <h1>Con c:out</h1>
        <c:out value="${param.DNI}" />
        <c:out value="${param.nombre}" />

        <h1>If con c:if</h1>
        <c:if test="${persona.DNI == '11-1'}">
            Usted es ${persona.DNI}
        </c:if>

        <!-- Un ejemplo de uso de JSTL -->
        <select name="year">
            <c:forEach begin="1900" end="2018" var="anio">
                <option><c:out value="${anio}"/></option>
            </c:forEach>
        </select>
    </body>
</html>
