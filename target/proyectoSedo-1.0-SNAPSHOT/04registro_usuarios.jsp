<%-- 
    Document   : 04registrar_actualizar_usuarios
    Created on : 17/07/2024, 12:24:58 p. m.
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
    /*CSS Estilo: Se utilizan estilos CSS para dar formato y diseño a los elementos de la página. Aquí se 
    establecen propiedades como márgenes, tamaños de letra, colores de fondo, sombras y bordes redondeados.*/
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
                margin-top: 1%;
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
                margin-top: 5px;
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
                margin-bottom: 10px;
                border: 1px solid #00d9ff;
                font-family: 'Times New Roman', Times, serif;
                font-size: 14px;

            }

            p{
                margin-top: -10px;
                height: 40px;
                text-align: center;
                font-size: 18px;
                line-height: 40px;

            }


            button{
                width: 100%;
                background: #1900ff;
                border: none;
                padding: 10px;
                color: white;
                margin: 3px 0;
                font-size: 16px;

            }

            b{
                width: 100%;
                background: rgb(179, 255, 0);
                padding: 5px;
                border: 4px;
                margin-bottom: 16px;
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
        <!--<h1> muestra el nombre de la empresa con un efecto de sombra y color verde.-->
        <form action="UserRegistration" method="post">
            <h4>REGISTRO / ACTUALIZACION</h4>
            <b>Tipo De Documento</b>
            <select name="tipoDocumento">
                <option value="">---------</option>
                <option value="Cedula de Ciudadania">Cedula de Ciudadania</option>
                <option value="Cedula de Extrangeria">Cedula de Extrangeria</option>
                <option value="Tarjeta de Identidad">Tarjeta de Identidad</option>
                <option value="Registro Civil">Registro Civil</option>
                <option value="Pasaporte">Pasaporte</option>
            </select>

            <input class="controls" name="documento" id="documento" placeholder="Ingrese Numero de Documento">
            <input class="controls" type="text" name="nombres" id="nombres" placeholder="Ingrese sus Nombres">
            <input class="controls" type="text" name="apellidos" id="apellidos" placeholder="Ingrese sus Apellidos">
            <input class="controls" type="text" name="direccion" id="direccion" placeholder="Ingrese su Direccion">
            <input class="controls" type="text" name="telefono" id="telefono" placeholder="Ingrese su Numero de Telefono">
            <input class="controls" type="email" name="correo" id="correo" placeholder="Ingrese su Email">
            <input class="controls" type="password" name="contraseña" id="contraseña" placeholder="Ingrese su Contraseña">
            <p>Estoy de acuerdo con <a href="otros/terminosycondiciones.jsp">Terminos y Condiciones</a></p>
            <button class="btn-a" name="role" value="Administrador">Registrar</button>
            <button class="btn-a" name="role" value="Administrador">Actualizar</button>
            <button class="btn-a" name="role" value="Administrador">Eliminar</button>
            <p><a href="01index.jsp">¿Ya tengo Cuenta?</a></p>
        </form>

        <div id="piepagina">
            <footer>
                SEDO-CRA V1.0. 2024
            </footer>        
        </div>
    </body>
</html>