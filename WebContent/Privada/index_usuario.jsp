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
    
</head>

<body>
	<c:set var ="telefono" value = "${requestScope['telefonos']}" />
	<c:set var="usuario" value="${requestScope['usuario']}" />

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
                              <li class="nav-item active">
                                    <a class="nav-link" href="/AgendaJPA/index.jsp">Inicio</a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link" href="">Sobre Nosotros</a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link" href="/AgendaJPA/ListarUsuarios?usuarios=all">Agenda Telefónica</a>
                                </li>
                                
                                <li class="nav-item">
                                    <a class="nav-link" href="">Contactenos</a>
                                </li>
                                </li>
                                
                                <li class="d-none d-lg-block">
 <div class="dropdown">
  <button class="btn_1" type="button" id="dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
    Mi cuenta
  </button>
  <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
    <a class="dropdown-item"  data-toggle="modal" data-target="#modificarUsuario">Modificar Datos Personales</a>
    <a class="dropdown-item" data-toggle="modal" data-target="#modificarContrasena">Modificar Contrasena</a>
    <a class="dropdown-item" href="/AgendaJPA/CerrarSesion">Cerrar Sesion</a>
  </div>
</div>
                                </li>
                            </ul>
                        </div>
                    </nav>
                </div>
            </div>
        </div>
    </header>


    <div class="container3"> 
        <div class="row">
          
          <div class="col-12" >
          <h3 align="center">BIENVENIDO ${usuario.nombre} ${usuario.apellido} </h3>
          
            <h3 class="titulo-tabla" align="center">Lista de telefonos agendados </h3>
             <!-- Modal -->
             
        <div class="modal fade" id="exampleModalCenter" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
            <div class="modal-dialog modal-dialog-centered" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title" id="exampleModalCenterTitle">Agregar un telefono</h5>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                    </div>
                    <form action="AgregarTelefono" method="POST">
                        <div class="modal-body">
                            <div class="form-group">
                                <label for="numero">Numero</label>
                                <input type="text" class="form-control" id="numero" name="numero" required="" placeholder="0958763254" minlength="9" maxlength="10" pattern="[0-9]+"/>
                            </div>
                            <div class="form-row">
                                <div class="form-group col-md-6">
                                    <label for="tipo">Tipo</label>
                                    <input type="text" class="form-control" id="tipo" name="tipo" required="" placeholder="Movil o Fijo" pattern="[A-Za-z]{4,}" title="Solo Letras">
                                </div>
                                <div class="form-group col-md-6">
                                    <label for="operadora">Operadora</label>
                                    <input type="text" class="form-control" id="operadora" name="operadora" required="" placeholder="Movistar" pattern="[A-Za-z]{4,}" title="Solo Letras">
                                </div>
                            </div>
                        </div>
                        <div class="modal-footer">
                            <button type="button" class="btn btn-secondary" data-dismiss="modal">Cerrar</button>
                            <button type="submit" class="btn btn-primary">Guardar</button>
                        </div>
                    </form>
                </div>
            </div>
        </div>   
        <div class="btn-group" role="group" aria-label="Basic example">
  <button type="button" class="btn btn-primary btn-sm" data-toggle="modal" data-target="#exampleModalCenter"><i class="fas fa-phone-square-alt"></i> Nuevo Contacto</button>
</div>       
         <br>
            
            <table id="ejemplo" align="center" class="table table-striped table-bordered" style="width:80%" >
              <thead>
                  <tr>
                      <th>Tipo</th>
                      <th>Operadora</th>
                      <th>Numero</th>
                      <th>Accion </th>
                  </tr>
              </thead>
              <tbody>
               <c:set var="i" value = "${0}"/>
                  <c:forEach var="tel" items="${telefono}">
                  <c:set var="i" value = "${i+1}"/>
								<tr>
									<td>${tel.tipo}</td>
									<td>${tel.operadora}</td>
									<td>${tel.numero}</td>
									<td>
									
                                            <div class="btn btn-primary btn-sm" data-toggle="modal" data-target="#exampleModalCenter${i}">
                                                <i class="fas fa-edit"></i> Editar
                                            </div>
                                            <div class="btn btn-primary btn-sm" data-toggle="modal" data-target="#confirmarEliminarTelefono${i}" >
                                                <i class="fas fa-phone-slash"></i> Eliminar
                                            </div>
                                            
            <div class="modal fade" id="exampleModalCenter${i}" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
            <div class="modal-dialog modal-dialog-centered" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title" id="exampleModalCenterTitle">Editar Telefono</h5>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                    </div>
                    <form action="EditarTelefono" method="POST">
                        <div class="modal-body">
                            <div class="form-group">
                                <label for="numero">Numero</label>
                                <input type="hidden" class="form-control" id="operadora" name="codigotelefono" value ="${tel.codigo}">
                                <input type="text" class="form-control" id="numero" name="numero" required="" value ="${tel.numero}" pattern="[0-9]+">
                            </div>
                            <div class="form-row">
                                <div class="form-group col-md-6">
                                    <label for="tipo">Tipo</label>
                                    <input type="text" class="form-control" id="tipo" name="tipo" required="" value ="${tel.tipo}">
                                </div>
                                <div class="form-group col-md-6">
                                    <label for="operadora">Operadora</label>
                                    <input type="text" class="form-control" id="operadora" name="operadora" required="" value ="${tel.operadora}">
                                </div>
                            </div>
                        </div>
                        <div class="modal-footer">
                            <button type="button" class="btn btn-secondary" data-dismiss="modal">Cerrar</button>
                            <button type="submit" class="btn btn-primary">Guardar</button>
                        </div>
                    </form>
                </div>
            </div>
        </div>           
               
               
               
               
               
                           <div class="modal fade" id="confirmarEliminarTelefono${i}" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
            <div class="modal-dialog modal-dialog-centered" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title" id="exampleModalCenterTitle">Eliminar Telefono</h5>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                    </div>
                    <form action="EliminarTelefono" method="POST">
                        <div class="modal-body">
                        <h3>Esta seguro de eliminar el sigiente Telefono:${tel.numero} </h3>
                       <input type="hidden" class="form-control" id="operadora" name="codigotelefono" value ="${tel.codigo}">
                        </div>
                        <div class="modal-footer">
                            <button type="button" class="btn btn-secondary" data-dismiss="modal">Cancelar</button>
                            <button type="submit" class="btn btn-primary">Confirmar</button>
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
        
  <div class="modal fade" id="modificarUsuario" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
            <div class="modal-dialog modal-dialog-centered" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title" id="exampleModalCenterTitle">Modificar Datos Personales</h5>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                    </div>
                    <form action="/AgendaJPA/ModificarUsuario" method="POST">
                        <div class="modal-body">
                            <div class="form-group">
                                <label for="numero">Nombres</label>
                                <input type="hidden" class="form-control" id="operadora" name="codigoUsuario" value ="${usuario.cedula}">
                                <input type="text" class="form-control" id="numero" name="nombre" required="" value ="${usuario.nombre}" >
                            </div>
                            <div class="form-group">

                                    <label for="tipo">Apellidos</label>
                                    <input type="text" class="form-control" id="tipo" name="apellido" required="" value ="${usuario.apellido}">

                                <div class="form-group ">
                                    <label for="operadora">Correo</label>
                                    <input type="text" class="form-control" id="operadora" name="correo" required="" value ="${usuario.correo}">
                                </div>
                            </div>
                        </div>
                        <div class="modal-footer">
                            <button type="button" class="btn btn-secondary" data-dismiss="modal">Cerrar</button>
                            <button type="submit" class="btn btn-primary">Guardar</button>
                        </div>
                    </form>
                </div>
            </div>
        </div>         
        
        
        
        
        
        <div class="modal fade" id="modificarContrasena" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
            <div class="modal-dialog modal-dialog-centered" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title" id="exampleModalCenterTitle">Modificar Contrasena</h5>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                    </div>
                    <form action="/AgendaVirtual2.0/MoficarContrasena method="POST">
                        <div class="modal-body">
                            <div class="form-group">
                                <label for="numero">Nueva Contrasena</label>
                                <input type="hidden" class="form-control" id="operadora" name="codigoUsuario" value ="${usuario.cedula}">
                                <input type="text" class="form-control" id="numero" name="contrasena" required="" equired pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}"
  title="Debe contener 8 o más caracteres que tengan al menos un número y una letra mayúscula y minúscula" >
                            </div>
                            <div class="form-group">
                                
                                    <label for="tipo">Repetir Nueva Contrasena</label>
                                    <input type="text" class="form-control" id="tipo" name="rNuevaContrasena" required="" >
                                                          
                            </div>
                        </div>
                        <div class="modal-footer">
                            <button type="button" class="btn btn-secondary" data-dismiss="modal">Cerrar</button>
                            <button type="submit" class="btn btn-primary">Guardar</button>
                        </div>
                    </form>
                </div>
            </div>
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