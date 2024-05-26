<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <style>
    body {
        font-family: Arial, sans-serif;
        background-color: #f8f9fa;
        margin: 0;
        padding: 20px;
        display: flex;
        flex-direction: column;
        align-items: center;
    }
    .container {
        width: 80%;
        max-width: 800px;
        background-color: #ffffff;
        padding: 20px;
        box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        border-radius: 5px;
        margin-top: 20px;
    }
    h1, h3 {
        text-align: center;
        margin: 0;
        padding: 10px 0;
    }
    input[type="date"],
    textarea {
        width: 100%;
        padding: 10px;
        border: 1px solid #ccc;
        border-radius: 4px;
        box-sizing: border-box;
        font-size: 16px;
        margin-bottom: 10px;
    }
    input[type="text"] {
        width: calc(100% - 40px); /* Resta el ancho del padding y el borde */
        padding: 10px 20px 10px 10px; /* Padding ajustado */
        border: 1px solid #ccc;
        border-radius: 4px;
        box-sizing: border-box;
        font-size: 16px;
        margin-bottom: 10px;
    }
    input[type="submit"] {
        display: inline-block;
        padding: 10px 20px;
        font-size: 16px;
        cursor: pointer;
        text-align: center;
        text-decoration: none;
        color: #fff;
        background-color: #007BFF;
        border: none;
        border-radius: 5px;
        transition: background-color 0.3s;
        margin-bottom: 20px;
    }
    input[type="submit"]:hover {
        background-color: #0056b3;
    }
</style>

    </head>
    <body>
        <h1>
            <c:if test="${posteo.id == 0}">Nueva Entrada</c:if>
            <c:if test="${posteo.id != 0}">Editar Post</c:if>
            </h1>
            <form action="Inicio" method="post">
                <input type="hidden" name="id" value="${posteo.id}" />
            <table>
                <tr>
                    <td>Fecha:</td>
                    <td><input type="date" name="fecha" value="${posteo.fecha}"/></td>
                </tr>
                <tr>
                    <td>Titulo:</td>
                    <td><input type="text" name="titulo" value="${posteo.titulo}" style="width: 299%;"/></td>
                </tr>
                <tr>
                    <td>Contenido:</td>
                    <td><textarea name="contenido" rows="4" cols="20">${posteo.contenido}</textarea></td>
                </tr>
                <tr>
                    <td></td>
                    <td><input type="submit" /></td>
                </tr>
            </table>
        </form>
    </body>
</html>
