<%@ page language='java' contentType="text/html" %>

<%@page import="com.franlina.Coche"%>
<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>


<%@page session="true" %>

<%
    String matricula = request.getParameter("matricula");
    List<Coche> coches = (List) session.getAttribute("coches");
    for(int i=0;i<coches.size();i++){
        if(coches[i].getMatricula.equals(matricula)){
            if(coches[i].getRevisado == "N")
                coches[i].setRevisado("S")
            else
                coches[i].setRevisado("N")
        }
    }
    session.setAttribute("coches", coches);

    response.sendRedirect("coches.jsp");

%>