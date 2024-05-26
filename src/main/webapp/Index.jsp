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
            .btn {
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
            .btn:hover {
                background-color: #0056b3;
            }
            .post {
                background-color: #ffffff;
                border: 1px solid #dee2e6;
                border-radius: 5px;
                padding: 15px;
                margin-bottom: 20px;
            }
            .post h2 {
                margin: 0 0 10px 0;
                font-size: 24px;
            }
            .post p {
                margin: 5px 0;
            }
            .post-actions {
                text-align: right;
            }
            .post-actions a {
                margin-left: 10px;
                color: #007bff;
                text-decoration: none;
                font-size: 14px;
            }
            .post-actions a:hover {
                text-decoration: underline;
            }
            .btn {
                display: inline-block;
                padding: 10px 20px;
                font-size: 16px;
                cursor: pointer;
                text-align: right;
                text-decoration: none;
                color: #fff;
                background-color: #007BFF;
                border: none;
                border-radius: 5px;
                transition: background-color 0.3s;
            }
            .btn:hover {
                background-color: #0056b3;
            }
        </style>
    </head>
    <body>
        <h1>Blog de Tecnología</h1>
        <h3>Autor: Jhoel Brandon Quispe Coila</h3>
        <p><a href="Inicio?action=add">Nueva Entrada</a></p>

        <c:forEach var="item" items="${posteos}">
            <div class="post">
                <h2>${item.titulo}</h2>
                <p>Fecha: ${item.fecha}</p>
                <p>${item.contenido}</p>
                <div class="post-actions" style="text-align: right;">
                    <a href="Inicio?action=edit&id=${item.id}">Editar</a>
                    <a href="Inicio?action=delete&id=${item.id}" onclick="return (confirm('¿Estás seguro?'))">Eliminar</a>
                </div>
            </div>
            <hr>
        </c:forEach>
    </body>
</html>
