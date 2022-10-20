<%@ page language='java' contentType="text/html" %>

<%@page import="com.franlina.Coche"%>
<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>


<%@page session="true" %>

<%
    String matricula = request.getParameter("matricula");
    String revisado = request.getParameter("revisado");

    Coche coche = new Coche();
    coche.setMatricula(matricula);
    if(revisado == "N")
        coche.setRevisado("S");
    else
        coche.setRevisado("N");

    List<Coche> coches = (List) session.getAttribute("coches");

    coches.remove(coche);
    coches.add(coche);

    session.setAttribute("coches", coches);

    response.sendRedirect("coches.jsp");

%>