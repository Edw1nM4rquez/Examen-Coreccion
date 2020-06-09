<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!doctype html>
<html lang="en">

<head>
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
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>Etrain</title>
    <link rel="icon" href="/AgendaVirtual2.0/config/img/favicon.png">
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="/AgendaVirtual2.0/config/css/bootstrap.min.css">
    <!-- animate CSS -->
    <link rel="stylesheet" href="/AgendaVirtual2.0/config/css/animate.css">
    <!-- owl carousel CSS -->
    <link rel="stylesheet" href="/AgendaVirtual2.0/config/css/owl.carousel.min.css">
    <!-- themify CSS -->
    <link rel="stylesheet" href="/AgendaVirtual2.0/config/css/themify-icons.css">
    <!-- flaticon CSS -->
    <link rel="stylesheet" href="/AgendaVirtual2.0/config/css/flaticon.css">
    <!-- font awesome CSS -->
    <link rel="stylesheet" href="/AgendaVirtual2.0/config/css/magnific-popup.css">
    <!-- swiper CSS -->
    <link rel="stylesheet" href="/AgendaVirtual2.0/config/css/slick.css">
    <!-- style CSS -->
    <link rel="stylesheet" href="/AgendaVirtual2.0/config/css/style.css">
    
    <link rel="stylesheet" href="fonts/material-icon/css/material-design-iconic-font.min.css">
    <link rel="stylesheet" href="vendor/jquery-ui/jquery-ui.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    
    <style>

    * {
      box-sizing: border-box;
    }
    
    /* Style the search field */
    form.example input[type=text] {
      padding: 10px;
      font-size: 17px;
      border: 1px solid grey;
      float: left;
      width: 50%;
      background: #ffffff;
    }
    form{margin: 0 auto; 
      width:70%;}
    /* Style the submit button */
    form.example button {
      float: left;
      width: 20%;
      padding: 10px;
      background: #f47a07;
      color: white;
      font-size: 17px;
      border: 1px solid grey;
      border-left: none; /* Prevent double borders */
      cursor: pointer;
    }
    
    form.example button:hover {
      background: #f47a07;
    }
    
    /* Clear floats */
    form.example::after {
      content: "";
      clear: both;
      display: table;
    }
</style>
</head>

<body>
	<c:set var="LUsuario" value="${requestScope['Listusuarios']}" />
	<c:set var="LTelefono" value="${requestScope['Listtelefonos']}" />
    <c:set var = "usuarioS" value = "${sessionScope['usuarioID']}" />
    <!--::header part start::-->
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
                                    <a class="nav-link" href="/AgendaJPA/index.jsp">Inicio</a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link" href="">Sobre Nosotros</a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link" href="/AgendaJPA/Publica/agenda_telefonica.jsp">Agenda Telefónica</a>
                                </li>
                                
                                <li class="nav-item">
                                    <a class="nav-link" href="">Contactenos</a>
                                </li>
                                <c:choose>
                        <c:when test="${usuarioS == null}">
                              <li class="d-none d-lg-block">
                                    <a class="btn_1" href="/AgendaJPA/Publica/inicia_usuario.jsp">Iniciar sesión</a>
                                </li>
                        </c:when>    
                        <c:otherwise>
                            <li class="d-none d-lg-block">
                                    <a class="btn_1" href="/AgendaJPA/IniciarSesion?usuario=${usuarioS}">Mi Agenda</a>
                                </li>
                        </c:otherwise>
                    </c:choose>
                            </ul>
                        </div>
                    </nav>
                </div>
            </div>
        </div>
    </header>
    <!-- Header part end-->

    <div class="main">

        <section class="signup">
            <!-- <img src="images/signup-bg.jpg" alt=""> -->
            <div class="container1">
                <div class="signup-content">
                    <h3  align="center">Agenda Telefónica</h3>
                    <h4>  Realizar busqueda:</h4>
                    <form class="example" action="/AgendaJPA/BuscarAgenda" method="POST" align="center">
                        <input type="text" placeholder="Correo o Cédula" name="search">
                        <button type="submit"><i class="fa fa-search"></i></button>
                      </form>
                     <br>  

                    <table id="ejemplo" align="center" class="table table-striped table-bordered" style="width:80%" >
                        <thead>
                            <tr>
                                <th>Usuario</th>
                                <th>Acciones</th>
                            
                            </tr>
                        </thead>
                        <tbody>
<c:set var="i" value = "${0}"/>
                  <c:forEach var="lUsu" items="${LUsuario}">
                  <c:set var="i" value = "${i+1}"/>

								<tr>
									<td>${lUsu.nombre} ${lUsu.apellido}</td>
									<td>
									<div class="btn btn-primary btn-sm" data-toggle="modal" data-target="#exampleModalCenter${i}">
                                                <i class="edit icon"></i> Ver Telefonos
                                            </div>
									 
                                            
            <div class="modal fade" id="exampleModalCenter${i}" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
            <div class="modal-dialog modal-dialog-centered" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title" id="exampleModalCenterTitle">Lista de Telefonos de ${lUsu.nombre} ${lUsu.apellido}</h5>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                    </div>
                    <form action="EditarTelefono" method="POST">
                    <div class="meta">
                                                   <i class="envelope icon"></i> <a href="mailto:${lUsu.correo}"> ${lUsu.correo}</a>
                                                </div>
                 
                       <c:choose>
                                                        <c:when test="${LTelefono.size() > 0}">
                                                        <c:set var = "TR1" value="${lUsu.cedula}"/>

                                                            <c:forEach var="ltel" items="${LTelefono}">
                                                            <c:set var = "TR2" value="${ltel.usuario.cedula}"/>
                                                            <c:if test = "${ TR2 eq TR1 }"> 
                                                            <p><i class="phone icon"></i> <a href="tel:${ltel.numero}">${ltel.numero}</a>  &#9679; ${ltel.tipo} &#9679; ${ltel.operadora}</p>
                                                            </c:if>
                                                                
                                                            </c:forEach>
                                                        </c:when>    
                                                        <c:otherwise>
                                                            <p>Este Usuario aun no registra telefonos.</p>
                                                        </c:otherwise>
                                                    </c:choose> 
                        <div class="modal-footer">
                            <button type="button" class="btn btn-secondary" data-dismiss="modal">Cerrar</button>
                        </div>
                    </form>
                </div>
            </div>
        </div>           	
        </td>
								</tr>
							</c:forEach>
                        </tbody>              
                    </table>
                </div>
            </div>
        </section>

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