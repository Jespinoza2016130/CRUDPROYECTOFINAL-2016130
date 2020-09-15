<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="css/bootstrap.css" rel="stylesheet" type="text/css"/>
        <title>Página de agregar</title>
    </head>
    <body>
        <div class="container">
            <div class="col-lg-5">
                <h1>Agregar un registro</h1>
                <form action="Controlador">
                    <strong>DPI:<br>
                    <input class="form-control" type="text" name="txtDPI"><br>
                    <strong>Nombres:<br>
                    <input class="form-control" type="text" name="txtNombre"><br><br>
                    <input class="btn btn-primary" type="submit" name="accion" value="Agregar"><br>
                </form>
            </div>
        </div>
    </body>
</html>
