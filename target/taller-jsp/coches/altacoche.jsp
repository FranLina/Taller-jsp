<%@ page language='java' contentType="text/html" %>

<%@page import="com.franlina.Coche"%>
<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>


<%@page session="true" %>

<%
    String matricula = request.getParameter("matricula");
    String marca = request.getParameter("marca");
    String modelo = request.getParameter("modelo");
    String color = request.getParameter("color");

    Coche coche = new Coche();
    coche.setMatricula(matricula);
    coche.setMarca(marca);
    coche.setModelo(modelo);
    coche.setColor(color);
    coche.setRevisado("N");

    List<Coche> coches = (List) session.getAttribute("coches");

    coches.add(coche);

    session.setAttribute("coches", coches);

    response.sendRedirect("coches.jsp");

%>