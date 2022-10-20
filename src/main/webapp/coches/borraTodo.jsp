<<%@ page language='java' contentType="text/html" %>

<%@page import="com.franlina.Coche"%>
<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>


<%@page session="true" %>

<%
    List<Coche> coches = new ArrayList<Coche>();
    session.setAttribute("coches", coches);
    response.sendRedirect("coches.jsp");

%>