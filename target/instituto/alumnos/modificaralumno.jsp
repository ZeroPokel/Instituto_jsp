<%@ page language='java' contentType="text/html" %>

<%@page import="com.miguel.libreria.model.Alumno"%>
<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>


<%@page session="true" %>

<%
    String dni = request.getParameter("dni");
    String nombre = request.getParameter("nombre");
    String apellido = request.getParameter("apellido");
    String direccion = request.getParameter("direccion");
    String email = request.getParameter("email");

    Alumno alumno = new Alumno();
    alumno.setDni(dni);
    alumno.setNombre(nombre);
    alumno.setApellido(apellido);
    alumno.setDireccion(direccion);
    alumno.setEmail(email);


    List<Alumno> alumnos = (List) session.getAttribute("alumnos");

    alumnos.remove(alumno);
    alumnos.add(alumno);

    session.setAttribute("alumnos", alumnos);

    response.sendRedirect("alumnos.jsp");


%>