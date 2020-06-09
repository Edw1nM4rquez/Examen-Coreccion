<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!doctype html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>Edina</title>
    <link rel="icon" href="/AgendaVirtual2.0/config/img/favicon.png">
    <link rel="stylesheet" href="/AgendaVirtual2.0/config/css/bootstrap.min.css">
    <link rel="stylesheet" href="/AgendaVirtual2.0/config/css/animate.css">
    <link rel="stylesheet" href="/AgendaVirtual2.0/config/css/owl.carousel.min.css">
    <link rel="stylesheet" href="/AgendaVirtual2.0/config/css/themify-icons.css">
    <link rel="stylesheet" href="/AgendaVirtual2.0/config/css/flaticon.css">
    <link rel="stylesheet" href="/AgendaVirtual2.0config/css/magnific-popup.css">
    <link rel="stylesheet" href="/AgendaVirtual2.0/config/css/slick.css">
    <link rel="stylesheet" href="/AgendaVirtual2.0/config/css/style.css">
</head>

<body>
<c:set var = "usuarioS" value = "${sessionScope['usuarioID']}" />

    <header class="main_menu home_menu">
        <div class="container">
            <div class="row align-items-center">
                <div class="col-lg-12">
                    <nav class="navbar navbar-expand-lg navbar-light">
                        <a class="navbar-brand" href="index.jsp"> <img src="/AgendaVirtual2.0/config/img/logo.png" alt="logo"> </a>
                        <button class="navbar-toggler" type="button" data-toggle="collapse"
                            data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent"
                            aria-expanded="false" aria-label="Toggle navigation">
                            <span class="navbar-toggler-icon"></span>
                        </button>

                        <div class="collapse navbar-collapse main-menu-item justify-content-end"
                            id="navbarSupportedContent">
                            <ul class="navbar-nav align-items-center">
                                <li class="nav-item active">
                                    <a class="nav-link" href="/ExamenCoreccion/index.jsp">Inicio</a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link" href="/ExamenCoreccion/CrearTarjeta?tarjetas=all">Crear/Listar Tarjeta Credito</a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link" href="/ExamenCoreccion/ListarPedidos?pedidos=all">Buscar/Listar Pedidos</a>
                                </li>
                                
                                <li class="nav-item">
                                    <a class="nav-link" href="/ExamenCoreccion/Publica/crear_pedido.jsp">Crear Pedido</a>
                                </li>
               
                            </ul>
                        </div>
                    </nav>
                </div>
            </div>
        </div>
    </header>

    <section class="banner_part">
        <div class="container">
            <div class="row align-items-center">
                <div class="col-lg-6 col-xl-6">
                    <div class="banner_text">
                        <div class="banner_text_iner">
                            <h5>Creada para facilitilar la busqueda de contacto</h5>
                            <h1>Mantengase siempre actualizado y comunicado</h1>
                            <p>Facilita encontrar el telefono de una persona deseada, de forma rapida y sencilla, ademas 
                                usted podra registrase con el fin de ayuda a los demas usuarios a contactarse con usted </p>
                                 <c:choose>
                        <c:when test="${usuarioS == null}">
<a href="/AgendaJPA/Publica/registro_usuario.jsp" class="btn_1">Registrase </a>
                            <a href="/AgendaJPA/ListarUsuarios?usuarios=all" class="btn_2">Ver Agenda Telefónica</a>
                        </c:when>    
                        <c:otherwise>
                             <a href="/AgendaJPA/ListarUsuarios?usuarios=all" class="btn_2">Ver Agenda Telefónica</a>
                        </c:otherwise>
                    </c:choose>
                            
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
  
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

    <script src="/AgendaVirtual/config/js/jquery-1.12.1.min.js"></script>
    <script src="/AgendaVirtual/config/js/popper.min.js"></script>
    <script src="/AgendaVirtual/config/js/bootstrap.min.js"></script>
    <script src="/AgendaVirtual/config/js/jquery.magnific-popup.js"></script>
    <script src="/AgendaVirtual/config/js/swiper.min.js"></script>
    <script src="/AgendaVirtual/config/js/masonry.pkgd.js"></script>
    <script src="/AgendaVirtual/config/js/owl.carousel.min.js"></script>
    <script src="/AgendaVirtual/config/js/jquery.nice-select.min.js"></script>
    <script src="/AgendaVirtual/config/js/slick.min.js"></script>
    <script src="/AgendaVirtual/config/js/jquery.counterup.min.js"></script>
    <script src="/AgendaVirtual/config/js/waypoints.min.js"></script>
    <script src="/AgendaVirtual/config/js/custom.js"></script>
</body>

</html>