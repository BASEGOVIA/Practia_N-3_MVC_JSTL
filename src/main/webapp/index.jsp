<%@page import="clases.Categorias" %>
<%@page import="clases.Libros" %>
<%@page import="java.util.ArrayList" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
if(session.getAttribute("almacen")==null){
ArrayList<Libros> lisaux=new ArrayList<Libros>();
session.setAttribute("almacen",lisaux);}
    if(session.getAttribute("cates")==null){
    ArrayList<Categorias> liscat=new ArrayList<Categorias>();
    liscat.add(new Categorias(1,"Novela"));
    liscat.add(new Categorias(2,"Historia"));
    liscat.add(new Categorias(3,"Cuento"));
    session.setAttribute("cates",liscat);}
%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <center><h1>BIBLIOTECA</h1></center>
        <ul>
            <li><a href="libros.jsp">Libros</a></li>
            <li><a href="categorias.jsp">Categorias</a></li>
        </ul>
    </body>
</html>
