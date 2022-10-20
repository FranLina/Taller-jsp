<%@ page language='java' contentType="text/html" %>

<%@page import="com.franlina.Coche"%>
<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>


<%@page session="true" %>

<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Listado de Coches</title>

    <style>
        table, th, td {
        border: 1px solid;
        }
    </style>

</head>
<body>
    <h2>Coches</h2>
    <table>
        <tr>
            <th>Matricula</th>
            <th>Marca</th>
            <th>Modelo</th>
            <th>Color</th>
            <th>Revisado</th>
            <th colspan="3"><a href="nuevoCoche.jsp">Nuevo</a> <a href="borraTodo.jsp">Eliminar Todos</a></th>
        </tr>
            <%

                List<Coche> coches = (List) session.getAttribute("coches");

                for(Coche coche: coches) {
                    out.print("<tr>");
                    out.print("<td>" + coche.getMatricula() + "</td>");
                    out.print("<td>" + coche.getMarca() + "</td>");
                    out.print("<td>" + coche.getModelo() + "</td>");
                    out.print("<td>" + coche.getColor() + "</td>");
                    out.print("<td>" + coche.getRevisado() + "</td>");
                    out.print("<td><a href=\"revisacoche.jsp?matricula=" + coche.getMatricula() + "\">Revisar</a></td>");
                    out.print("<td><a href=\"coche.jsp?matricula=" + coche.getMatricula() + "\">Editar</a></td>");
                    out.print("<td><a href=\"bajacoche.jsp?matricula=" + coche.getMatricula() + "\">Eliminar</a></td>");
                    out.print("</tr>");
                }
            %>
    </table>
</body>
</html>