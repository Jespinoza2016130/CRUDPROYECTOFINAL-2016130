<%-- 
    Document   : editar
    Created on : 15-sep-2020, 12:46:47
    Author     : Asus
--%>

<%@page import="modelo.Persona"%>
<%@page import="modeloDAO.PersonaDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Página Web - Editar</title>
    </head>
    <body>
        <div class="container">
            <div class="col-lg-5">
            <%
                PersonaDAO nuevaPersonaDao =new PersonaDAO();
                int codPersona = Integer.parseInt((String)request.getAttribute("codPer"));
                Persona nuevaPersona = (Persona)nuevaPersonaDao.list(codPersona);
            %>
            <h1>Modificar Persona</h1>
            <form action="Controlador">
                <strong>DPI:<br>
                <input class="form-control" type="text" name="txtDPI" value="<%= nuevaPersona.getDPI() %>" required><br>
                <strong>Nombres:<br>
                <input class="form-control" type="text" name="txtNombre" value="<%= nuevaPersona.getNombrePersona() %>" required><br><br>
                <input type="hidden" name="txtCodigoPersona" value="<%= nuevaPersona.getCodigoPersona() %>">
                <input class="btn btn-primary" type="submit" name="accion" value="Actualizar"><br>
            </form>
            </div>
        </div>
    </body>
</html>
