<%-- 
    Document   : listar
    Created on : 15-sep-2020, 12:47:00
    Author     : Asus
--%>

<%@page import="java.util.List"%>
<%@page import="java.util.Iterator"%>
<%@page import="modelo.Persona"%>
<%@page import="modeloDAO.PersonaDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="css/bootstrap.css" rel="stylesheet" type="text/css"/>
        <title>Página Web - Listar</title>
    </head>
    <body style="background-color: #e1e1e1;">
        
        <div class="container">
            <div class="jumbotron jumbotron-fluid text-center bg-light rounded" style="padding: 2rem;">
                <h1 class="display-4 text-uppercase"> <strong>Bievenido a la pagina de listar</strong></h1>
                <p class="lead text-muted">Aquí podras encontrar los datos ingresados.</p>
                <hr class="my-4">
                <p>Para agregar un nuevo dato, hacer click en el siguiente botón</p>
                <a class="btn btn-success btn-lg btn-block" href="Controlador?accion=add"> <strong>Agregar Nuevo</strong></a>
            </div>
                <table class="table table-bordered bg-light">
                    <thead>
                        <tr>

                            <td class=" btn-primary btn-lg text-center "><Strong>CODIGO PERSONA</Strong></td>
                            <td class="btn-primary btn-lg text-center"><Strong>DPI</Strong></td>
                            <td class="btn-primary btn-lg text-center"><Strong>NOMBRES</Strong></td>
                            <td class="btn-primary btn-lg text-center"><Strong>ACCIONES</Strong></td>

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
                            <td class="text-center "><%=per.getCodigoPersona()  %></td>
                            <td class="text-center"><%=per.getDPI()  %></td>
                            <td class="text-center "><%=per.getNombrePersona()  %></td>

                            <td class="text-center">
                            <a  class=" btn btn-primary "  href="Controlador?accion=editar&codigoPersona=<%= per.getCodigoPersona()%>"> Editar </a>
                            <a   class="btn btn-danger" href= "Controlador?accion=eliminar&codigoPersona=<%= per.getCodigoPersona()%>"> Eliminar </a>        
                            </td>

                        </tr>
                        <% } %>
                    </tbody>
                </table>       
        </div>
    </body>
 
</html>
