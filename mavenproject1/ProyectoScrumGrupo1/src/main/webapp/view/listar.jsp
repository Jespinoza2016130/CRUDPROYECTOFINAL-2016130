<%-- 
    Document   : listar
    Created on : 01-sep-2020, 23:00:19
    Author     : BuchW
--%>

<%@page import="java.util.Iterator"%>
<%@page import="java.util.List"%>
<%@page import="modelo.Persona"%>
<%@page import="modeloDAO.PersonaDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="css/css/bootstrap.css" rel="stylesheet" type="text/css"/>
        <title>Pagina de Listar</title>
    </head>
    <body>
        <div class="container">
            <h1 class="text-center">Personas</h1>
            <a class="btn-success " href="Controlador?accion=add">Agregar Nuevo</a><br><br>
            <table class="table table-bordered">
                <thead>
                    <tr>
                        <td class="text-center text-primary"><Strong>CODIGO PERSONA</Strong></td>
                        <td class="text-center text-primary"><Strong>DPI</Strong></td>
                        <td class="text-center text-primary"><Strong>NOMBRES</Strong></td>
                        <td class="text-center text-primary"><Strong>ACCIONES</Strong></td>
                    </tr>
                </thead>
                <% 
                    PersonaDAO dao = new PersonaDAO();
                    List<Persona> listaPersona = dao.listar();
                    Iterator<Persona> iterator = listaPersona.iterator();
                    Persona per = null;
                    while (iterator.hasNext()){
                        per = iterator.next();
                    
                %>
                <tbody>
                    <tr>
                        <td class="text-center active"><%=per.getCodigoPersona()  %></td>
                        <td class="text-center"><%=per.getDPI()  %></td>
                        <td class="text-center active"><%=per.getNombrePersona()  %></td>
                        <td class="text-center">
                            <a class="btn btn-warning" href="Controlador?accion=editar&codigoPersona=<%= per.getCodigoPersona()%>"> Editar </a>
                            <a class="btn btn-danger" href= "Controlador?accion=eliminar&codigoPersona=<%= per.getCodigoPersona()%>"> Eliminar </a>
                                
                        </td>
                    </tr>
                    <% } %>
                </tbody>
            </table>
        </div> 
    </body>
</html>
