<%@page import="com.miguel.libreria.model.Alumno"%>
<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>

<%@page session="true" %>

<%

    String dni = request.getParameter("dni");
    
    List<Alumno> alumnos = (List) session.getAttribute("alumnos");

    Alumno alumno = new Alumno();
    alumno.setDni(dni);

    int index = alumnos.indexOf(alumno);

    alumno = alumnos.get(index);

%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Alumno</title>
</head>
<body>

    <form action="modificaralumno.jsp" method="post">
        <label for="dni">DNI</label>
        <input type="text" name="dni" id="dni" value="<%= alumno.getDni()%>">
        <label for="nombre">Nombre</label>
        <input type="text" name="nombre" id="nombre" value="<%= alumno.getNombre()%>">
        <label for="apellido">Apellidos</label>
        <input type="text" name="apellido" id="apellido" value="<%= alumno.getApellido()%>">
        <label for="direccion">Dirección</label>
        <input type="text" name="direccion" id="direccion" value="<%= alumno.getDireccion()%>">
        <label for="email">Email</label>
        <input type="text" name="email" id="email" value="<%= alumno.getEmail()%>">
        <input type="submit" value="Modificar">
    </form>
    
</body>
</html>