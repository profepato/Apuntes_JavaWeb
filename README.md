# JSTL

Redireccionar desde JSP
```html
<jsp:forward page="index.html"/>
```

Formulario:
```html
<form action="procesar.jsp" method="post">
  <input type="text" name="nombre" placeholder="Nombre"/>
  <input type="text" name="edad" placeholder="Edad"/>
  <input type="submit" value="Enviar"/>
</form>
```

id = nombre del objeto
class = tipo del objeto
```html
<jsp:useBean id="persona" class="model.Persona" />
```
Rescata todos los datos enviados desde un formulario
```html
<jsp:setProperty name="persona" property="*" />
```

Tambien se pueden rescatar uno a uno

```html
<jsp:setProperty name="persona" property="edad"/>
<jsp:setProperty name="persona" property="nombre"/>
```

Rescatar los datos del objeto
```html
<jsp:getProperty name="persona" property="edad" />
<jsp:getProperty name="persona" property="nombre" />
```

Tambien se puede mostrar el objeto "persona" desde un scriptlet
```java
<%
    out.println("Nombre --> "+persona.getNombre()+"<br/>");
    out.println("Edad: --> "+persona.getEdad());
%>
```
