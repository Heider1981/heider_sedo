<%-- 
    Document   : 05ingresar_actualizar_productos
    Created on : 17/07/2024, 12:26:20 p. m.
    Author     : jedab
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Registrar Usuario</title>
    
    <style>
        *{
    margin: 0;
    padding: 0;
    box-sizing: border-box;
}

body{
    background-image: url(img/upload-816230812391.png);
    display: inline-block;
    margin: 0 450px;
    background-repeat: no-repeat;
    background-size: 100% 100%;
    background-attachment: fixed;
}

h1{
    margin-top: 90px;
    text-align: center;
    color: rgb(187, 255, 0);
    font-size: 35px;
    text-shadow: 2px 2px 0 rgb(17, 16, 16), 2px -2px 0 rgb(7, 7, 7), -1px -1px 0 rgb(0, 0, 0);
}

form{
    width: 400px;
    background: rgb(0, 0, 0);
    padding: 25px;
    margin: auto;
    margin-top: 40px;
    border-radius: 4px;
    font-family: 'Times New Roman', Times, serif;
    color: rgb(255, 255, 255);
    box-shadow: 7px 13px 37px #000;
}

H4{
    font-size: 22px;
    margin-bottom: 20px;
    text-align: center;

}

.controls{
    width: 100%;
    background: rgb(179, 255, 0);
    padding: 5px;
    border: 4px;
    margin-bottom: 16px;
    border: 1px solid #00d9ff;
    font-family: 'Times New Roman', Times, serif;
    font-size: 14px;

}

p{
    height: 40px;
    text-align: center;
    font-size: 18px;
    line-height: 40px;

}

a:hover{
    color: white;
    text-decoration: underline;
}

button{
    width: 100%;
    background: #1900ff;
    border: none;
    padding: 10px;
    color: white;
    margin: 5px 0;
    font-size: 16px;
    font-family: 'Times New Roman', Times, serif;

}

b{
    width: 100%;
    background: rgb(179, 255, 0);
    padding: 5px;
    border: 4px;
    margin-bottom: 10px;
    border: 1px solid #00d9ff;
    font-family: 'Times New Roman', Times, serif;
    font-size: 14px;
    color: rgb(0, 0, 0);

}

select{
    width: 60%;
    background: rgb(255, 255, 255);
    padding: 5px;
    border: 4px;
    margin-bottom: 16px;
    border: 1px solid #00d9ff;
    font-family: 'Times New Roman', Times, serif;
    font-size: 14px;
    color: rgb(0, 0, 0);
}

footer {
    margin-top: -20px;
    font-size: 70%;
    color: rgb(0, 255, 0);
    text-align: center;

}
    </style>
</head>
<body>
    <h1>ASADOS ANGELICA</h1>
   
    <form action="actualizar" method="post">
        <h4>ACTUALIZAR PRODUCTOS</h4>
        <b>Tipo De Producto</b>
            <select name="tipoProducto">
                <option value="">---------</option>
                <option value="Fritos">Fritos</option>
                <option value="Asados">Asados</option>
                <option value="Arepas">Arepas</option>
                <option value="Bebidas">Bebidas</option>
                <option value="Otos">Otos</option>
            </select>
            
            <input class="controls" type="text" name="idProducto" id="productos" placeholder="idProducto">
            <input class="controls" type="text" name="nombreProducto" id="nombres" placeholder="nombreProducto">
            <input class="controls" type="num" name="precioProducto" id="precio" placeholder="precioProducto">
        
        

            
            <button type="submit" name="action" value="registrar">Registrar</button>
            <button type="submit" name="action" value="actualizar">Actualizar</button>
            <button type="submit" name="action" value="eliminar">Eliminar</button>
    </form>
    <div id="piepagina">
        <footer>
            SEDO-CRA V1.0. 2024
        </footer>        
    </div>
</body>
</html>