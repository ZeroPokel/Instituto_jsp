<%@ page language='java' contentType="text/html" %>

<%@page import="com.miguel.libreria.model.Alumno"%>
<%@page import="com.miguel.libreria.model.Asignatura"%>
<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>


<%@page session="true" %>

<%

  Alumno alumno1 = new Alumno();
  alumno1.setDni("1");
  alumno1.setNombre("Miguel Angel");
  alumno1.setApellido("Femenia Vazquez");
  alumno1.setDireccion("Calle Falsa 123");
  alumno1.setEmail("emailfalso@gmail.com");

  List<Alumno> alumnos = new ArrayList<Alumno>();
  alumnos.add(alumno1);

  Asignatura asig1 = new Asignatura();
  asig1.setCodigo("1");
  asig1.setDescripcion("Programacion");
  List<Asignatura> asignaturas = new ArrayList<Asignatura>();
  asignaturas.add(asig1);

  session.setAttribute("asignaturas", asignaturas);
  session.setAttribute("alumnos", alumnos);

%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Instituto</title>
</head>
<body>
    <h1>Menu principal</h1>
    <p><a href="alumnos/alumnos.jsp">Alumnos</a></p>
    <p><a href="asignaturas/asignaturas.jsp">Asignaturas</a></p>
</body>
</html>