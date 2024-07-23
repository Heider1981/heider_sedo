<%-- 
    Document   : error
    Created on : 22/07/2024, 4:31:06 p. m.
    Author     : jedab
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        
         <style>
            *{
    margin: 0px;
    padding: 0px;
    font-family: Georgia, 'Times New Roman', Times, serif;
    text-align: center;
}


body{

    display: inline-block;
    margin: 70px;
    background: url(img/fondo_error.jpg);
    background-repeat: no-repeat;
    background-size: 100% 100%;
    background-attachment: fixed;
}


h1{
   margin-top: 120px; 
   font-size: 250%;
}

.btn{
    font-size: 200%;
    background-color: rgb(190, 248, 97)
}
        </style>
    </head>
    <body>
        <h1>Error al iniciar sesion</h1>
        <form action="procesar formulario" method="post" autocomplete="off" novalidate
              class="<%=request.getAttribute("errorExists")!= null ? "error-bg" : ""%>">
              <button type="submit"><a class="btn" type="" href="02ingreso_clientes.jsp">Regresar</a></button> 
        </form>
        <% String error = (String)request.getAttribute("error");
        if (error != null){
                
                
        %>
        <p class=" error"><%=error%></p>
        <%
                }
        %>

    </body>
</html>
