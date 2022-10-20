<%@ page language='java' contentType="text/html" %>

<%@page import="com.franlina.Coche"%>
<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>


<%@page session="true" %>

<%

    String matricula = request.getParameter("matricula");
    
    List<Coche> coches = (List) session.getAttribute("coches");

    Coche coche = new Coche();
    coche.setMatricula(matricula);

    int index = coches.indexOf(coche);

    coche = coches.get(index);

%>

<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>coche</title>
</head>
<body>

    <form action="modificarcoche.jsp" method="post">
        <label for="matricula">matricula</label>
        <input type="text" name="matricula" id="matricula" value="<%= coche.getMatricula()%>">
        <label for="marca">marca</label>
        <input type="text" name="marca" id="marca" value="<%= coche.getMarca()%>">
        <label for="modelo">modelo</label>
        <input type="text" name="modelo" id="modelo" value="<%= coche.getModelo()%>">
        <label for="color">color</label>
        <input type="text" name="color" id="color" value="<%= coche.getColor()%>">
        <input type="hidden" name="revisado" id="revisado" value="<%= coche.getRevisado()%>">
        <input type="submit" value="Modificar">
    </form>
    
</body>
</html>