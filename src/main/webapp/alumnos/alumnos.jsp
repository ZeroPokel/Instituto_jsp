<%@ page language='java' contentType="text/html" %>

<%@page import="com.miguel.libreria.model.Alumno"%>
<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>


<%@page session="true" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Listado de alumnos</title>

    <style>
        table, th, td {
        border: 1px solid;
        }
    </style>

</head>
<body>
    <h2>Alumnos</h2>
    <table>
        <tr>
            <th>Nombre</th>
            <th>Apellidos</th>
            <th>DNI</th>
            <th>Email</th>
            <th>Dirección</th>
            <th colspan="2"><a href="nuevoalumno.jsp">Nuevo</a></th>
        </tr>
            <%

                List<Alumno> alumnos = (List) session.getAttribute("alumnos");

                for(Alumno alumno: alumnos) {
                    out.print("<tr>");
                    out.print("<td>" + alumno.getNombre() + "</td>");
                    out.print("<td>" + alumno.getApellido() + "</td>");
                    out.print("<td>" + alumno.getDni() + "</td>");
                    out.print("<td>" + alumno.getEmail() + "</td>");
                    out.print("<td>" + alumno.getDireccion() + "</td>");
                    out.print("<td><a href=\"alumno.jsp?dni=" + alumno.getDni() + "\">editar</a></td>");
                    out.print("<td><a href=\"bajaalumno.jsp?dni=" + alumno.getDni() + "\">eliminar</a></td>");
                    out.print("</tr>");
                }
            %>
    </table>
</body>
</html>