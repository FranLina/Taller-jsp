<%@ page language='java' contentType="text/html" %>

<%@page import="com.franlina.Coche"%>
<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>


<%@page session="true" %>

<%

  Coche coche = new Coche();
  coche.setMatricula("1234ABC");
  coche.setMarca("Seat");
  coche.setModelo("Ibiza");
  coche.setColor("Negro");
  coche.setRevisado("N");

  List<Coche> coches = new ArrayList<Coche>();
  coches.add(coche);

  session.setAttribute("coches", coches);

%>

<!DOCTYPE html>
<html lang="es">
<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Taller</title>
</head>
<body>

<h1>Menu principal</h1>
<p><a href="coches/coches.jsp">Coches</a></p>
</body>
</html>