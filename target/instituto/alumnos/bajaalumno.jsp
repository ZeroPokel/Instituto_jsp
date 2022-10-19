<<%@ page language='java' contentType="text/html" %>

<%@page import="com.miguel.libreria.model.Alumno"%>
<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>


<%@page session="true" %>

<%
    String dni = request.getParameter("dni");

    Alumno alumno = new Alumno();
    alumno.setDni(dni);


    List<Alumno> alumnos = (List) session.getAttribute("alumnos");

    alumnos.remove(alumno);

    session.setAttribute("alumnos", alumnos);

    response.sendRedirect("alumnos.jsp");

%>