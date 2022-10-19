<<%@ page language='java' contentType="text/html" %>

<%@page import="com.miguel.libreria.model.Asignatura"%>
<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>


<%@page session="true" %>

<%
    String codigo = request.getParameter("codigo");

    Asignatura asignatura = new Asignatura();
    asignatura.setCodigo(codigo);


    List<Asignatura> asignaturas = (List) session.getAttribute("asignaturas");

    asignaturas.remove(asignatura);

    session.setAttribute("asignaturas", asignaturas);

    response.sendRedirect("asignaturas.jsp");

%>