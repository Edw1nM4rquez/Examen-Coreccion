<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE HTML>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>Edina</title>
      <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.0/css/all.css"
    integrity="sha384-lZN37f5QGtY3VHgisS14W3ExzMWZxybE1SJSEsQp9S+oqd12jhcu+A56Ebc1zFSJ" crossorigin="anonymous">
  <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
    integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
    crossorigin="anonymous"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"
    integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49"
    crossorigin="anonymous"></script>
  <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"
    integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy"
    crossorigin="anonymous"></script>
  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css"
    integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
    <link rel="icon" href="/AgendaVirtual2.0/config/img/favicon.png">
    <link rel="stylesheet" href="/AgendaVirtual2.0/config/css/bootstrap.min.css">
    <link rel="stylesheet" href="/AgendaVirtual2.0/config/css/animate.css">
    <link rel="stylesheet" href="/AgendaVirtual2.0/config/css/owl.carousel.min.css">
    <link rel="stylesheet" href="/AgendaVirtual2.0/config/css/themify-icons.css">
    <link rel="stylesheet" href="/AgendaVirtual2.0/config/css/flaticon.css">
    <link rel="stylesheet" href="/AgendaVirtual2.0/config/css/magnific-popup.css">
    <link rel="stylesheet" href="/AgendaVirtual2.0/config/css/slick.css">
    <link rel="stylesheet" href="/AgendaVirtual2.0/config/css/style.css">
    <link rel="stylesheet" href="/AgendaVirtual2.0/config/fonts/material-icon/css/material-design-iconic-font.min.css">
    <link rel="stylesheet" href="/AgendaVirtual2.0/config/vendor/jquery-ui/jquery-ui.min.css">
    <script src="https://kit.fontawesome.com/277369b883.js" crossorigin="anonymous"></script>
    <script src="https://static.codepen.io/assets/common/stopExecutionOnTimeout-157cd5b220a5c80d4ff8e0e70ac069bffd87a61252088146915e8726e5d9f147.js"></script>
<script src='https://cdnjs.cloudflare.com/ajax/libs/jquery/3.1.1/jquery.min.js'></script>

<link rel="stylesheet" href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
<script src="//ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>


  

    
</head>

<body>
<c:if test="${not empty Message}">
   <c:out value="${Message}"/>
</c:if>
    <header class="main_menu home_menu">
        <div class="container">
            <div class="row align-items-center">
                <div class="col-lg-12">
                    <nav class="navbar navbar-expand-lg navbar-light">
                        <a class="navbar-brand" href="/AgendaJPA/index.jsp"> <img src="/AgendaVirtual2.0/config/img/logo.png" alt="logo"> </a>
                        <button class="navbar-toggler" type="button" data-toggle="collapse"
                            data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent"
                            aria-expanded="false" aria-label="Toggle navigation">
                            <span class="navbar-toggler-icon"></span>
                        </button>

                        <div class="collapse navbar-collapse main-menu-item justify-content-end"
                            id="navbarSupportedContent">
                            <ul class="navbar-nav align-items-center">
                                <li class="nav-item active">
                                    <a class="nav-link" href="/PedidosJPA/index.jsp">Inicio</a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link" href="/PedidosJPA/CrearTarjeta?tarjetas=all">Crear/Listar Tarjeta Credito</a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link" href="/PedidosJPA/ListarPedidos?pedidos=all">Buscar/Listar Pedidos</a>
                                </li>
                                
                                <li class="nav-item">
                                    <a class="nav-link" href="/PedidosJPA/Privada/CrearPedido.jsp">Crear Pedido</a>
                                </li>           
                               
                            </ul>
                        </div>
                    </nav>
                </div>
            </div>
        </div>
    </header>

    <div class="container3"> 
    <h3 align="center">CREAR PEDIDO</h3>
                    <form action="/PedidosJPA/CrearPedido" method="POST" >
                       
                        <div class="form-row">
                            <div class="form-group">
                                <label for="nombres">Cliente</label>
                                <input type="text" class="form-input" name="cliente"  placeholder="Juan Esteban"   required />
                            </div>
                            <div class="form-group">
                                <label for="apellidos">Observaciones</label>
                                <input type="text" class="form-input" name="observaciones" placeholder="Observaciones" required />
                            </div>
                            <div class="form-group">
                                <label for="apellidos"># Tarjeta Credito</label>
                                <input type="text" class="form-input" name="tarjetaCredito"  required="" placeholder="5346798798546" minlength="14" maxlength="16" pattern="[0-9]+" />
                            </div>
                        </div>
						<h3 align="center">Agregar Comidas</h3>

                        <div class="form-row">
                            <div class="form-group">
                                <label for="nombres">Nombre</label>
                                <input type="text" class="form-input" name="nombre1"  placeholder="chaulafan"   required />
                            </div>
                            <div class="form-group">
                                <label for="apellidos">Precio</label>
                                <input type="text" class="form-input" name="precio1" placeholder="10.99" required />
                            </div>
                        </div>
                                                <div class="form-row">
                            <div class="form-group">
                                <label for="nombres">Nombre</label>
                                <input type="text" class="form-input" name="nombre2"  placeholder="chaulafan"    />
                            </div>
                            <div class="form-group">
                                <label for="apellidos">Precio</label>
                                <input type="text" class="form-input" name="precio2" placeholder="10.99"  />
                            </div>
                        </div>
                                                <div class="form-row">
                            <div class="form-group">
                                <label for="nombres">Nombre</label>
                                <input type="text" class="form-input" name="nombre3"  placeholder="chaulafan"    />
                            </div>
                            <div class="form-group">
                                <label for="apellidos">Precio</label>
                                <input type="text" class="form-input" name="precio3" placeholder="10.99"  />
                            </div>
                        </div>
                        

                        <div class="form-group">
                            <input type="submit" name="crearPedido" id="submit" class="form-submit" value="Crear Pedido"/>
                        </div>
                    </form>
 </div>        
            

     <footer class="footer-area">
        <div class="container">
            <div class="row justify-content-between">
                <div class="col-sm-6 col-md-4 col-xl-3">
                    <div class="single-footer-widget footer_1">
                        <a href="index.jsp"> <img src="/AgendaVirtual2.0/config/img/logo.png" alt=""> </a>
                        <p>Buscar el número telefónico de una persona nunca fue tan facil, unete y mantente siempre comunicado
                        
                         </p>
                     
                    </div>
                </div>
                <div class="col-sm-6 col-md-4 col-xl-4">
                    <div class="single-footer-widget footer_2">
                        <h4>Noticias</h4>
                        <p>Manténgase al día con nuestras últimas actualizaciones de telefonos</p>
                        <form action="#">
                            <div class="form-group">
                                <div class="input-group mb-3">
                                    <input type="text" class="form-control" placeholder='Ingrese su correo'
                                        onfocus="this.placeholder = ''"
                                        onblur="this.placeholder = 'Correo'">
                                    <div class="input-group-append">
                                        <button class="btn btn_1" type="button"><i class="ti-angle-right"></i></button>
                                    </div>
                                </div>
                            </div>
                        </form>
                        <div class="social_icon">
                            <a href="#"> <i class="ti-facebook"></i> </a>
                            <a href="#"> <i class="ti-twitter-alt"></i> </a>
                            <a href="#"> <i class="ti-instagram"></i> </a>
                            <a href="#"> <i class="ti-skype"></i> </a>
                        </div>
                    </div>
                </div>
                <div class="col-xl-3 col-sm-6 col-md-4">
                    <div class="single-footer-widget footer_2">
                        <h4>Contactenos</h4>
                        <div class="contact_info">
                            <p><span> Dirección: </span> Cuenca - Ecuador </p>
                            <p><span> Teléfono: </span> +593995467863</p>
                            <p><span> Correo: </span>info@inda.com </p>
                        </div>
                    </div>
                </div>
            </div>

        </div>
        <div class="container-fluid">
            <div class="row">
                <div class="col-lg-12">
                    <div class="copyright_part_text text-center">
                        <div class="row">
                            <div class="col-lg-12">
                                <p class="footer-text m-0">
Copyright &copy;<script>document.write(new Date().getFullYear());</script> Todos los Derechos Reservados by <a href="" target="_blank">Edina</a>
</p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </footer>

    <!-- jquery plugins here-->
    <!-- jquery -->
    <script src="js/jquery-1.12.1.min.js"></script>
    <script src="js/prrueba.js"></script>
    <!-- popper js -->
    <script src="js/popper.min.js"></script>
    <!-- bootstrap js -->
    <script src="js/bootstrap.min.js"></script>
    <!-- easing js -->
    <script src="js/jquery.magnific-popup.js"></script>
    <!-- swiper js -->
    <script src="js/swiper.min.js"></script>
    <!-- swiper js -->
    <script src="js/masonry.pkgd.js"></script>
    <!-- particles js -->
    <script src="js/owl.carousel.min.js"></script>
    <script src="js/jquery.nice-select.min.js"></script>
    <!-- swiper js -->
    <script src="js/slick.min.js"></script>
    <script src="js/jquery.counterup.min.js"></script>
    <script src="js/waypoints.min.js"></script>
    <!-- custom js -->
    <script src="js/custom.js"></script>
    <script src="vendor/jquery/jquery.min.js"></script>
    <script src="vendor/jquery-ui/jquery-ui.min.js"></script>
    <script src="vendor/jquery-validation/dist/jquery.validate.min.js"></script>
    <script src="vendor/jquery-validation/dist/additional-methods.min.js"></script>
    <script src="js/main.js"></script>
</body>

</html>