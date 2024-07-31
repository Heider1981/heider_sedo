<%-- 
    Document   : modulo_productos
    Created on : 17/07/2024, 6:05:28 p. m.
    Author     : jedab
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.1/css/all.min.css" integrity="sha512-MV7K8+y+gLIBoVD59lQIYicR65iaqukzvf/nwasF0nqhPay5w/9lJmVM2hMDcnK1OnMGCdVK+iQrJ7lzPJQd1w==" crossorigin="anonymous" referrerpolicy="no-referrer" />
    
    <title>Carrito de Compras </title>

    <style>
        @import url('https://fonts.googleapis.com/css2?family=Open+Sans:wght@300;400;500;600&family=Titillium+Web:wght@200;300;400;600;700&display=swap');
*{
    margin: 0;
    padding:0;
    font-family: 'Times New Roman', Times, serif;
}
header{
    background: url(img/upload-816230812391.png);
    background-size: cover;
    background-position:center;
    height: 300px;
}
header h1{
    text-align: center;
    font-size: 50px;
    /* background-color: #000; */
    color: #bbff00;
    padding: 30px 0;
    text-shadow: 2px 2px 0 rgb(0, 0, 0), 2px -2px 0 rgb(0, 0, 0), -1px -1px 0 rgb(0, 0, 0);
}

.logo img{
    margin-left: 42%;
    
}
.contenedor{
    max-width: 1200px;
    padding: 10px;
    margin: auto;
    display: flex;
    justify-content: space-between;
    /* oculto lo que queda fuera del .contenedor */
    contain: paint;
}
/* SECCION CONTENEDOR DE ITEMS */
.contenedor .contenedor-items{
    margin-top: 20px;
    display: grid;
    grid-template-columns: repeat(auto-fit, minmax(220px, 1fr));
    grid-gap:0px;
    grid-row-gap: 10px;
    /* width: 60%; */
    width: 100%;
    transition: .3s;
}
.contenedor .contenedor-items .item{
    max-width: 100px;
    border: 1px solid #666;
    border-radius: 10px;
    padding: 15px;
    transition: .3s;
}
.contenedor .contenedor-items .item .img-item{
    width: 100%;
}
.contenedor .contenedor-items .item:hover{
    box-shadow: 0 0 10px #666;
    scale: 1.05;
}
.contenedor .contenedor-items .item .titulo-item{
    font-size: 14px;
    display: block;
    font-weight: bold;
    text-align: center;
    text-transform: uppercase;
}
.contenedor .contenedor-items .item .precio-item{
    display: block;
    text-align: center;
    font-weight: bold;
    font-size: 22px;
}

.contenedor .contenedor-items .item .boton-item{
    display: block;
    margin: 10px auto;
    border: none;
    background-color: black;
    color: #fff;
    padding: 5px 15px;
    border-radius: 5px;
    cursor: pointer;
}
/* seccion carrito */
.carrito{
    border: 1px solid #666;
    width: 35%;
    margin-top: 30px;
    border-radius: 10px;
    overflow: hidden;
    margin-bottom: auto;
    position: sticky !important;
    top: 0;
    transition: .3s;
    /* Estilos para ocultar */
    margin-right: -100%;
    opacity: 0;
}
.carrito .header-carrito{
    background-color: #000;
    color: #fff;
    text-align: center;
    padding: 30px 0;
}
.carrito .carrito-item{
    display: flex;
    align-items: center;
    /* justify-content: space-between; */
    position: relative;
    border-bottom: 1px solid #666;
    padding: 20px;
}
.carrito .carrito-item img{
    margin-right: 20px;
}
.carrito .carrito-item .carrito-item-titulo{
    display: block;
    font-weight: bold;
    margin-bottom: 10px;
    text-transform: uppercase;
}
.carrito .carrito-item .selector-cantidad{
    display: inline-block;
    margin-right: 25px;
}
.carrito .carrito-item .carrito-item-cantidad{
    border: none;
    font-size: 18px;
    background-color: transparent;
    display: inline-block;
    width:30px;
    padding: 5px;
    text-align: center;
}
.carrito .carrito-item .selector-cantidad i{
    font-size: 18px;
    width: 32px;
    height: 32px;
    line-height: 32px;
    text-align: center;
    border-radius: 50%;
    border: 1px solid #000;
    cursor: pointer;
}
.carrito .carrito-item .carrito-item-precio{
    font-weight: bold;
    display: inline-block;
    font-size: 18px;
    margin-bottom: 5px;
}
.carrito .carrito-item .btn-eliminar{
    position: absolute;
    right: 15px;
    top: 15px;
    color: #000;
    font-size: 20px;
    width: 40px;
    height: 40px;
    line-height: 40px;
    text-align: center;
    border-radius: 50%;
    border: 1px solid #000;
    cursor: pointer;
    display: block;
    background: transparent;
    z-index: 20;
}
.carrito .carrito-item .btn-eliminar i{
    pointer-events: none;
}

.carrito-total{
    background-color: #f3f3f3;
    padding: 30px;
}
.carrito-total .fila{
    display: flex;
    justify-content: space-between;
    align-items: center;
    font-size: 22px;
    font-weight: bold;
    margin-bottom: 10px;
}
.carrito-total .btn-pagar{
    display: block;
    width: 100%;
    border: none;
    background: #000;
    color: #fff;
    border-radius: 5px;
    font-size: 18px;
    padding: 20px;
    display: flex;
    justify-content: space-between;
    align-items: center;
    cursor: pointer;
    transition: .3s;
}
.carrito-total .btn-pagar:hover{
    scale: 1.05;
}

/* SECCION RESPONSIVE */
@media screen and (max-width: 850px) {
    .contenedor {
      display: block;
    }
    .contenedor-items{
        width: 100% !important;
    }
    .carrito{
        width: 100%;
    }
  }

 
    </style>

    <script>
        // Variable que mantiene el estado visible del carrito
var carritoVisible = false;

// Esperamos que todos los elementos de la página carguen para ejecutar el script
if (document.readyState == 'loading') {
    document.addEventListener('DOMContentLoaded', ready);
} else {
    ready();
}

function ready() {
    // Agregamos funcionalidad a los botones eliminar del carrito
    var botonesEliminarItem = document.getElementsByClassName('btn-eliminar');
    for (var i = 0; i < botonesEliminarItem.length; i++) {
        var button = botonesEliminarItem[i];
        button.addEventListener('click', eliminarItemCarrito);
    }

    // Agrego funcionalidad al botón sumar cantidad
    var botonesSumarCantidad = document.getElementsByClassName('sumar-cantidad');
    for (var i = 0; i < botonesSumarCantidad.length; i++) {
        var button = botonesSumarCantidad[i];
        button.addEventListener('click', sumarCantidad);
    }

    // Agrego funcionalidad al botón restar cantidad
    var botonesRestarCantidad = document.getElementsByClassName('restar-cantidad');
    for (var i = 0; i < botonesRestarCantidad.length; i++) {
        var button = botonesRestarCantidad[i];
        button.addEventListener('click', restarCantidad);
    }

    // Agregamos funcionalidad al botón Agregar al carrito
    var botonesAgregarAlCarrito = document.getElementsByClassName('boton-item');
    for (var i = 0; i < botonesAgregarAlCarrito.length; i++) {
        var button = botonesAgregarAlCarrito[i];
        button.addEventListener('click', agregarAlCarritoClicked);
    }

    // Agregamos funcionalidad al botón comprar
    document.getElementsByClassName('btn-pagar')[0].addEventListener('click', pagarClicked);
}

// Eliminamos todos los elementos del carrito y lo ocultamos
function pagarClicked() {
    alert("Su pedido fue enviado con éxito, gracias por su compra.");
    // Elimino todos los elementos del carrito
    var carritoItems = document.getElementsByClassName('carrito-items')[0];
    while (carritoItems.hasChildNodes()) {
        carritoItems.removeChild(carritoItems.firstChild);
    }
    actualizarTotalCarrito();
    ocultarCarrito();
}

// Función que controla el botón clickeado de agregar al carrito
function agregarAlCarritoClicked(event) {
    var button = event.target;
    var item = button.parentElement;
    var titulo = item.getElementsByClassName('titulo-item')[0].innerText;
    var precio = item.getElementsByClassName('precio-item')[0].innerText;
    var imagenSrc = item.getElementsByClassName('img-item')[0].src;
    console.log(imagenSrc);

    agregarItemAlCarrito(titulo, precio, imagenSrc);

    hacerVisibleCarrito();
}

// Función que hace visible el carrito
function hacerVisibleCarrito() {
    carritoVisible = true;
    var carrito = document.getElementsByClassName('carrito')[0];
    carrito.style.marginRight = '0';
    carrito.style.opacity = '1';

    var items = document.getElementsByClassName('contenedor-items')[0];
    items.style.width = '60%';
}

// Función que agrega un item al carrito
function agregarItemAlCarrito(titulo, precio, imagenSrc) {
    var item = document.createElement('div');
    item.classList.add('item');
    var itemsCarrito = document.getElementsByClassName('carrito-items')[0];

    // Controlamos que el item que intenta ingresar no se encuentre en el carrito
    var nombresItemsCarrito = itemsCarrito.getElementsByClassName('carrito-item-titulo');
    for (var i = 0; i < nombresItemsCarrito.length; i++) {
        if (nombresItemsCarrito[i].innerText == titulo) {
            alert("El item ya se encuentra en el carrito");
            return;
        }
    }

    var itemCarritoContenido = `
        <div class="carrito-item">
            <img src="${imagenSrc}" width="80px" alt="">
            <div class="carrito-item-detalles">
                <span class="carrito-item-titulo">${titulo}</span>
                <div class="selector-cantidad">
                    <i class="fa-solid fa-minus restar-cantidad"></i>
                    <input type="text" value="1" class="carrito-item-cantidad" disabled>
                    <i class="fa-solid fa-plus sumar-cantidad"></i>
                </div>
                <span class="carrito-item-precio">${precio}</span>
            </div>
            <button class="btn-eliminar">
                <i class="fa-solid fa-trash"></i>
            </button>
        </div>
    `;
    item.innerHTML = itemCarritoContenido;
    itemsCarrito.append(item);

    // Agregamos la funcionalidad eliminar al nuevo item
    item.getElementsByClassName('btn-eliminar')[0].addEventListener('click', eliminarItemCarrito);

    // Agregamos la funcionalidad restar cantidad del nuevo item
    var botonRestarCantidad = item.getElementsByClassName('restar-cantidad')[0];
    botonRestarCantidad.addEventListener('click', restarCantidad);

    // Agregamos la funcionalidad sumar cantidad del nuevo item
    var botonSumarCantidad = item.getElementsByClassName('sumar-cantidad')[0];
    botonSumarCantidad.addEventListener('click', sumarCantidad);

    // Actualizamos total
    actualizarTotalCarrito();
}

// Aumento en uno la cantidad del elemento seleccionado
function sumarCantidad(event) {
    var buttonClicked = event.target;
    var selector = buttonClicked.parentElement;
    console.log(selector.getElementsByClassName('carrito-item-cantidad')[0].value);
    var cantidadActual = parseInt(selector.getElementsByClassName('carrito-item-cantidad')[0].value);
    cantidadActual++;
    selector.getElementsByClassName('carrito-item-cantidad')[0].value = cantidadActual;
    actualizarTotalCarrito();
}

// Resto en uno la cantidad del elemento seleccionado
function restarCantidad(event) {
    var buttonClicked = event.target;
    var selector = buttonClicked.parentElement;
    console.log(selector.getElementsByClassName('carrito-item-cantidad')[0].value);
    var cantidadActual = parseInt(selector.getElementsByClassName('carrito-item-cantidad')[0].value);
    cantidadActual--;
    if (cantidadActual >= 1) {
        selector.getElementsByClassName('carrito-item-cantidad')[0].value = cantidadActual;
        actualizarTotalCarrito();
    }
}

// Elimino el item seleccionado del carrito
function eliminarItemCarrito(event) {
    var buttonClicked = event.target;
    buttonClicked.parentElement.parentElement.remove();
    // Actualizamos el total del carrito
    actualizarTotalCarrito();

    // La siguiente función controla si hay elementos en el carrito
    // Si no hay, elimino el carrito
    ocultarCarrito();
}

// Función que controla si hay elementos en el carrito. Si no hay, oculto el carrito.
function ocultarCarrito() {
    var carritoItems = document.getElementsByClassName('carrito-items')[0];
    if (carritoItems.childElementCount == 0) {
        var carrito = document.getElementsByClassName('carrito')[0];
        carrito.style.marginRight = '-100%';
        carrito.style.opacity = '0';
        carritoVisible = false;

        var items = document.getElementsByClassName('contenedor-items')[0];
        items.style.width = '100%';
    }
}

// Actualizamos el total de Carrito
function actualizarTotalCarrito() {
    // Seleccionamos el contenedor carrito
    var carritoContenedor = document.getElementsByClassName('carrito')[0];
    var carritoItems = carritoContenedor.getElementsByClassName('carrito-item');
    var total = 0;
    // Recorremos cada elemento del carrito para actualizar el total
    for (var i = 0; i < carritoItems.length; i++) {
        var item = carritoItems[i];
        var precioElemento = item.getElementsByClassName('carrito-item-precio')[0];
        // Quitamos el símbolo peso y el punto de milésimos.
        var precio = parseFloat(precioElemento.innerText.replace('$', '').replace('.', ''));
        var cantidadItem = item.getElementsByClassName('carrito-item-cantidad')[0];
        console.log(precio);
        var cantidad = parseInt(cantidadItem.value);
        total = total + (precio * cantidad);
    }
    total = Math.round(total * 100) / 100;

    document.getElementsByClassName('carrito-precio-total')[0].innerText = '$' + total.toLocaleString("es") + ",00";
}

    </script>
</head>
<body>
        
    <header>
        <h1>ASADOS ANGELICA</h1>
        <div class="container mt-3">
            <div class="row">        
                <div class="logo">                                 
                    <img src="img/Logo02.jpg" width="230px 230px">
                </div>           
            </div>
        </div>
    </header>
    <div class="seccion-asados">
        <h2>FRITOS</h2>
    </div>    
    <section class="contenedor">        
        <!-- Contenedor de elementos -->
        <div class="contenedor-items">            
            
            <div class="item">
                <span class="titulo-item">Papa Rellena</span>
                <img src="img/Papa-Rellena.jpg" alt="" class="img-item">
                <span class="precio-item">$3.500</span>
                <button class="boton-item">Agregar al Carrito</button>
            </div>
            <div class="item">
                <span class="titulo-item">Pastel de Pollo</span>
                <img src="img/Pastel pollo.jpg" alt="" class="img-item">
                <span class="precio-item">$3.500</span>
                <button class="boton-item">Agregar al Carrito</button>
            </div>
            <div class="item">
                <span class="titulo-item">Pastel de Yuca</span>
                <img src="img/PASTELES DE YUCA.jpg" alt="" class="img-item">
                <span class="precio-item">$3.000</span>
                <button class="boton-item">Agregar al Carrito</button>
            </div>
            <div class="item">
                <span class="titulo-item">Marranitas</span>
                <img src="img/Marranitas.jpg" alt="" class="img-item">
                <span class="precio-item">$3.000</span>
                <button class="boton-item">Agregar al Carrito</button>
            </div>
            <div class="item">
                <span class="titulo-item">Maduro Aborrajado</span>
                <img src="img/ABORRAJADOS MADURO.png" alt="" class="img-item">
                <span class="precio-item">$3.000</span>
                <button class="boton-item">Agregar al Carrito</button>
            </div>
            <div class="item">
                <span class="titulo-item">Papa Aborrajada</span>
                <img src="img/papas-aborrajada-con-aji-e1617639105444.jpg" alt="" class="img-item">
                <span class="precio-item">$1.500</span>
                <button class="boton-item">Agregar al Carrito</button>
            </div>
            <div class="item">
                <span class="titulo-item">Empanadas</span>
                <img src="img/EMPANADAS1.jpeg" alt="" class="img-item">
                <span class="precio-item">$1.000</span>
                <button class="boton-item">Agregar al Carrito</button>
            </div>            
        </div>
        <!-- Carrito de Compras -->
        <div class="carrito" id="carrito">
            <div class="header-carrito">
                <h2>Tu Carrito</h2>
            </div>
            <div class="carrito-items">
                <!-- 
                <div class="carrito-item">
                    <img src="img/boxengasse.png" width="80px" alt="">
                    <div class="carrito-item-detalles">
                        <span class="carrito-item-titulo">Box Engasse</span>
                        <div class="selector-cantidad">
                            <i class="fa-solid fa-minus restar-cantidad"></i>
                            <input type="text" value="1" class="carrito-item-cantidad" disabled>
                            <i class="fa-solid fa-plus sumar-cantidad"></i>
                        </div>
                        <span class="carrito-item-precio">$15.000,00</span>
                    </div>
                   <span class="btn-eliminar">
                        <i class="fa-solid fa-trash"></i>
                   </span>
                </div>
                <div class="carrito-item">
                    <img src="img/skinglam.png" width="80px" alt="">
                    <div class="carrito-item-detalles">
                        <span class="carrito-item-titulo">Skin Glam</span>
                        <div class="selector-cantidad">
                            <i class="fa-solid fa-minus restar-cantidad"></i>
                            <input type="text" value="3" class="carrito-item-cantidad" disabled>
                            <i class="fa-solid fa-plus sumar-cantidad"></i>
                        </div>
                        <span class="carrito-item-precio">$18.000,00</span>
                    </div>
                   <button class="btn-eliminar">
                        <i class="fa-solid fa-trash"></i>
                   </button>
                </div>
                 -->
            </div>
            <div class="carrito-total">
                <div class="fila">
                    <strong>Tu Total</strong>
                    <span class="carrito-precio-total">
                        $120.000,00
                    </span>
                </div>
                <button class="btn-pagar">Enviar<i class="fa-solid fa-bag-shopping"></i> </button>
            </div>
        </div>
        
    </section><br>
    <div class="seccion-asados">
        <h2>ASADOS</h2>
    </div>
    <section class="contenedor">
        
        <!-- Contenedor de elementos -->
        <div class="contenedor-items">
            
            <div class="item">
                <span class="titulo-item">Asada de Res</span>
                <img src="img/asada de res.jpg" alt="" class="img-item">
                <span class="precio-item">$30.000</span>
                <button class="boton-item">Agregar al Carrito</button>
            </div>
            <div class="item">
                <span class="titulo-item">Pincho de Cerdo</span>
                <img src="img/pincho cerdo.jpeg" alt="" class="img-item">
                <span class="precio-item">$15.000</span>
                <button class="boton-item">Agregar al Carrito</button>
            </div>
            <div class="item">
                <span class="titulo-item">Pincho de Pollo</span>
                <img src="img/pinchos de pollo.jpeg" alt="" class="img-item">
                <span class="precio-item">$15.000</span>
                <button class="boton-item">Agregar al Carrito</button>
            </div>
            <div class="item">
                <span class="titulo-item">Chorizo de Cerdo</span>
                <img src="img/chorizo de cerdo.jpg" alt="" class="img-item">
                <span class="precio-item">$12.000</span>
                <button class="boton-item">Agregar al Carrito</button>
            </div>
            
        </div>
                
    </section><br>
    <div class="seccion-asados">
        <h2>AREPAS</h2>
    </div>
    <section class="contenedor">
        
        <!-- Contenedor de elementos -->
        <div class="contenedor-items">
            
            <div class="item">
                <span class="titulo-item">Arepa con Queso</span>
                <img src="img/arepaqueso.jpg" alt="" class="img-item">
                <span class="precio-item">$5.000</span>
                <button class="boton-item">Agregar al Carrito</button>
            </div>
            <div class="item">
                <span class="titulo-item">Arepa Burguer</span>
                <img src="img/arepaburguer.jpg" alt="" class="img-item">
                <span class="precio-item">$10.000</span>
                <button class="boton-item">Agregar al Carrito</button>
            </div>           
        </div>

    </section><br>
    <div class="seccion-asados">
        <h2>BEBIDAS</h2>
    </div>
    <section class="contenedor">
        
        <!-- Contenedor de elementos -->
        <div class="contenedor-items">
            
            <div class="item">
                <span class="titulo-item">Coca-Cola</span>
                <img src="img/coca cola.jpg" alt="" class="img-item">
                <span class="precio-item">$4.000</span>
                <button class="boton-item">Agregar al Carrito</button>
            </div>
            <div class="item">
                <span class="titulo-item">Postobon</span>
                <img src="img/postobon2.jpg" alt="" class="img-item">
                <span class="precio-item">$4.000</span>
                <button class="boton-item">Agregar al Carrito</button>
            </div> 
            <div class="item">
                <span class="titulo-item">Ponymalta</span>
                <img src="img/pony malta.jpg" alt="" class="img-item">
                <span class="precio-item">$4.000</span>
                <button class="boton-item">Agregar al Carrito</button>
            </div>   
            <div class="item">
                <span class="titulo-item">Jugo Hit</span>
                <img src="img/JUGOS HIT X400 BOTELLA PLASTICA.png" alt="" class="img-item">
                <span class="precio-item">$5.000</span>
                <button class="boton-item">Agregar al Carrito</button>
            </div>   
            <div class="item">
                <span class="titulo-item">Cerveza Aguila Laigth</span>
                <img src="img/cerveza.png" alt="" class="img-item">
                <span class="precio-item">$5.000</span>
                <button class="boton-item">Agregar al Carrito</button>
            </div>   
                       
        </div>

    </section>
        
</body>
</html>