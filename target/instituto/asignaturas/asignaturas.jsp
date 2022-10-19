<%@ page language='java' contentType="text/html" %>

<%@page import="com.miguel.libreria.model.Asignatura"%>
<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>


<%@page session="true" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Listado de asignaturas</title>

    <style>
        table, th, td {
        border: 1px solid;
        }
    </style>

</head>
<body>
    <h2>Asignaturas</h2>
    <table>
        <tr>
            <th>Codigo</th>
            <th>Descripcion</th>
            <th colspan="2"><a href="nuevoasignatura.jsp">Nuevo</a></th>
        </tr>
            <%

                List<Asignatura> asignaturas = (List) session.getAttribute("asignaturas");

                for(Asignatura asignatura: asignaturas) {
                    out.print("<tr>");
                    out.print("<td>" + asignatura.getCodigo() + "</td>");
                    out.print("<td>" + asignatura.getDescripcion() + "</td>");
                    out.print("<td><a href=\"asignatura.jsp?codigo=" + asignatura.getCodigo() + "\">editar</a></td>");
                    out.print("<td><a href=\"bajaasignatura.jsp?codigo=" + asignatura.getCodigo() + "\">eliminar</a></td>");
                    out.print("</tr>");
                }
            %>
    </table>
</body>
</html>