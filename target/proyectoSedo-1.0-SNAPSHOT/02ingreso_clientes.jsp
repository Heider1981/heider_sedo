<%-- 
    Document   : 02ingreso_clientes
    Created on : 17/07/2024, 12:22:47 p. m.
    Author     : jedab
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

    <head>
        <TItle>INICIO ASADOS ANGELICA DATABASE</TItle>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
        <meta charset="utf-8">
        
        <style>
    /*CSS Estilo: Se utilizan estilos CSS para dar formato y diseño a los elementos de la página. Aquí se 
    establecen propiedades como márgenes, tamaños de letra, colores de fondo, sombras y bordes redondeados.*/
            *{
                margin: 0px;
                padding: 0px;
                font-family: Georgia, 'Times New Roman', Times, serif;
                text-align: center;
            }


            div#general {
                width: 700px;
                height: 400px;
                background: url(img/0002.jpg) center 30px;
                background-repeat: no-repeat;
                background-size: 80% 100%;

            }


            body{

                display: inline-block;
                margin: 70px;
                background: url(img/upload-816230812391.png);
                background-repeat: no-repeat;
                background-size: 100% 100%;
                background-attachment: fixed;
            }

            h1 {
                margin: auto;
                margin-top: 0px;
                color: rgb(187, 255, 0);
                font-size: 3em;
                text-shadow: 2px 2px 0 rgb(17, 16, 16), 2px -2px 0 rgb(7, 7, 7), -1px -1px 0 rgb(0, 0, 0);

            }

            h2 {
                color: rgb(94, 255, 0);
                font-size: 1.5em;
                font-weight: 600;
                margin-top: 30px;
                padding-top: 60px;
                text-shadow: 2px 2px 0 rgb(255, 0, 0), 2px -2px 0 rgb(255, 0, 0), -1px -1px 0 rgb(255, 0, 0);

            }

            input {
                background-color: rgb(188, 250, 252);
                margin: 5px 5px 5px 5px;
            }

            label {

                font-size: 30px;
                color: rgb(0, 17, 255);
                margin-top: 30px;
                width: 220px;
                border-radius: 40px;
                text-shadow: 2px 2px 0 rgb(255, 255, 255), 2px -2px 0 rgb(255, 255, 255), -1px -1px 0 rgb(255, 255, 255);

            }

            .btn-a {
                display: inline-block;
                background-color: rgb(46, 112, 253);
                padding: 5px;
                font-size: 1.5em;
                color: rgb(0, 0, 0);
                font-weight: 400;
                margin-top: 20px;
                width: 150px;
                border-radius: 10px;
                text-decoration: none;
            }



            div#piepagina {
                font-size: 100%;
                margin-top: -60px;

            }



            input {
                width: 250px;
                height: 35px;
                border-radius: 10px;
                color: rgb(0, 0, 0);
                margin-right: auto;
                margin-top: 20px;

            }
            footer {
                margin-top: 10px;
                font-size: 70%;
                color: rgb(0, 255, 0);
            }

        </style>       

    </head>

    <body>
        <h1>ASADOS ANGELICA - SEDO</h1>  
        <!--<h1> muestra el nombre de la empresa con un efecto de sombra y color verde.-->  
        <div id="general">
            <h2>CLIENTES</h2>
            <!--<h2> es un encabezado secundario para el formulario de empleados, con un color verde 
            intenso y efectos de sombra.-->
            <div id="contenedor">            
                <form action="login" method="post">
                    <!--Un formulario (<form>) que envía datos a un destino llamado "iniciar" usando el método POST.-->
                    <label for="usuario">Usuario:</label>
                    <input type="text" id="usuario" name="usuario" placeholder="usuario" >
                    <!--Dos campos de entrada (<input>) para "Usuario" y "Clave", donde la clave se oculta como texto 
                    oculto (tipo password).-->
                    <label for="clave">Clave:</label>
                    <input type="password" id="clave" name="clave" placeholder="Clave">
                    <br>
                    <button class="btn-a" name="role" value="Clientes">Ingresar</button>
                    <!--Un botón (<button>) con la clase .btn-a para enviar el formulario, etiquetado como "Ingresar".-->
                </form>
                                      
            </div>        
        </div>
        <div id="piepagina"> 
            <!--Un área inferior (<div id="piepagina">) que incluye un enlace para recuperar la 
            contraseña y un pequeño pie de página con información adicional.-->  
            <a href="">¿Has olvidado tu contraseña?</a>
            <footer>
                <p><b>SEDO V1.0. 2022</b></p>
            </footer>
        </div>    
    </body>
</html>


