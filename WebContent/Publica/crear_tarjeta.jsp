<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE HTML>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>Tarjetas de Credito</title>
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
    
     <title>Liquor Store - Free Bootstrap 4 Template by Colorlib</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    
    <link href="https://fonts.googleapis.com/css2?family=Spectral:ital,wght@0,200;0,300;0,400;0,500;0,700;0,800;1,200;1,300;1,400;1,500;1,700&display=swap" rel="stylesheet">

    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">

	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">

    <link rel="stylesheet" href="css/animate.css">
    
    <link rel="stylesheet" href="css/owl.carousel.min.css">
    <link rel="stylesheet" href="css/owl.theme.default.min.css">
    <link rel="stylesheet" href="css/magnific-popup.css">
    
    <link rel="stylesheet" href="css/flaticon.css">
    <link rel="stylesheet" href="css/style.css">
</head>

<body>
	<c:set var ="tarjetasCredito" value = "${requestScope['tarjetas']}" />

    <div class="wrap">
			<div class="container">
				<div class="row">
					<div class="col-md-6 d-flex align-items-center">
						<p class="mb-0 phone pl-md-2">
							<a href="#" class="mr-2"><span class="fa fa-phone mr-1"></span> +00 1234 567</a> 
							
							<a href="#"><span class="fa fa-paper-plane mr-1"></span>emarquezl@est.ups.edu.ec</a>
						</p>
					</div>
					<div class="col-md-6 d-flex justify-content-md-end">
						
		        
					</div>
				</div>
			</div>
		</div>
    
	  <nav class="navbar navbar-expand-lg navbar-dark ftco_navbar bg-dark ftco-navbar-light" id="ftco-navbar">
	    <div class="container">
	      <a class="navbar-brand" href="index.html">Ped  <span>idos </span></a>
	      <div class="order-lg-last btn-group">
         
        </div>

	      <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#ftco-nav" aria-controls="ftco-nav" aria-expanded="false" aria-label="Toggle navigation">
	        <span class="oi oi-menu"></span> Inicio
	      </button>

	      <div class="collapse navbar-collapse" id="ftco-nav">
	        <ul class="navbar-nav ml-auto">
			  <li class="nav-item active"><a href="index.html" class="nav-link">Inicio</a></li>
	          <li class="nav-item active"><a href="/ExamenCoreccion/CrearTarjeta?tarjetas=all" class="nav-link">Crear/Listar Tarjeta de credito</a></li>
	          <li class="nav-item active"><a href="/ExamenCoreccion/Publica/crear_pedido.jsp">Crear Pedido</a></li>
	          <li class="nav-item active"><a  href="/ExamenCoreccion/ListarPedidos?pedidos=all" class="nav-link">Buscar/Listar Precios</a></li>
	          
	        </ul>
	      </div>
	    </div>
	  </nav>
    <!-- END nav -->
    
    <div class="hero-wrap" style="background-image: url('images/flores.jpg');" data-stellar-background-ratio="0.5">
      <div class="overlay"></div>
      <div class="container">
        <div class="row no-gutters slider-text align-items-center justify-content-center">
          <div class="col-md-8 ftco-animate d-flex align-items-end">
          	<div class="text w-100 text-center">
	            <h1 class="mb-4">Tarjeta<span>Pedidos</span> Comida <span> (JPA)</span>.</h1>
	           <!-- <p><a href="#" class="btn btn-primary py-2 px-4">Shop Now</a> <a href="#" class="btn btn-white btn-outline-white py-2 px-4">Read more</a></p>
				-->
			</div>
          </div>
        </div>
      </div>
    </div>

    <div class="container3"> 
        <div class="row">
          
          <div class="col-12" >
        
            <h3 class="titulo-tabla" align="center">Lista de Tarjetas Almacenadas</h3>
             <!-- Modal -->
             
        <div class="modal fade" id="exampleModalCenter" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
            <div class="modal-dialog modal-dialog-centered" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title" id="exampleModalCenterTitle">Agregar Tarjeta Credito</h5>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                    </div>
                    <form action="/ExamenCoreccion/CrearTarjeta" method="POST">
                        <div class="modal-body">
                            <div class="form-group">
                                <label for="numero">Numero</label>
                                <input type="text" class="form-control" id="numero" name="numero" required="" placeholder="5346798798546" minlength="14" maxlength="16" pattern="[0-9]+"/>
                            </div>
                            
                             <div class="form-group">
                                <label for="numero">Propietario</label>
                                <input type="text" class="form-control" id="propietario" name="propietario" required="" placeholder="Juan Alvarez" />
                            </div>
                            <div class="form-row">
                                <div class="form-group col-md-6">
                                    <label for="tipo">Fecha Caducidad</label>
                                    <input type="text"  id="fechaCaducidad" name="fechaCaducidad" required="" placeholder="03/22" >
                                </div>
                                <div class="form-group col-md-6">
                                    <label for="operadora">CVV</label>
                                    <input type="text" class="form-control" id="cvv" name="cvv" required="" placeholder="568" minlength="3" maxlength="3" pattern="[0-9]+">
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
  <button type="button" class="btn btn-primary btn-sm" data-toggle="modal" data-target="#exampleModalCenter"><i class="fas fa-phone-square-alt"></i> Nueva Tarjeta</button>
</div>       
         <br>
            
            <table id="ejemplo" align="center" class="table table-striped table-bordered" style="width:80%" >
              <thead>
                  <tr>
                      <th>Numero</th>
                      <th>Propietario</th>
                      <th>Fecha Caducidad</th>
                      <th>CVV</th>
                      <th>Accion</th>
                  </tr>
              </thead>
              <tbody>
               <c:set var="i" value = "${0}"/>
                  <c:forEach var="tar" items="${tarjetasCredito}">
                  <c:set var="i" value = "${i+1}"/>
								<tr>
									<td>${tar.numero}</td>
									<td>${tar.propietario}</td>
									<td>${tar.fechaCaducidad}</td>
									<td>${tar.cvv}</td>
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
                        <h5 class="modal-title" id="exampleModalCenterTitle">Editar Numero </h5>
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
        
            

    <section class="ftco-section ftco-no-pb">
			<div class="container">
				<div class="row">
					<div class="col-lg-2 col-md-4 ">
						<div class="sort w-100 text-center ftco-animate">
							<div class="img" style="background-image: url(images/kind-1.jpg);"></div>
							<h3>Bandera</h3>
						</div>
					</div>
					<div class="col-lg-2 col-md-4 ">
						<div class="sort w-100 text-center ftco-animate">
							<div class="img" style="background-image: url(images/kind-2.jpg);"></div>
							<h3>Chaulafan</h3>
						</div>
					</div>
					<div class="col-lg-2 col-md-4 ">
						<div class="sort w-100 text-center ftco-animate">
							<div class="img" style="background-image: url(images/kind-3.jpg);"></div>
							<h3>Arroz con pollo</h3>
						</div>
					</div>
					<div class="col-lg-2 col-md-4 ">
						<div class="sort w-100 text-center ftco-animate">
							<div class="img" style="background-image: url(images/kind-4.jpg);"></div>
							<h3>Cuy</h3>
						</div>
					</div>
					<div class="col-lg-2 col-md-4 ">
						<div class="sort w-100 text-center ftco-animate">
							<div class="img" style="background-image: url(images/kind-5.jpg);"></div>
							<h3>Menestra</h3>
						</div>
					</div>
					<div class="col-lg-2 col-md-4 ">
						<div class="sort w-100 text-center ftco-animate">
							<div class="img" style="background-image: url(images/kind-6.jpg);"></div>
							<h3>Salchipapa</h3>
						</div>  
					</div>

				</div>
			</div>
		</section>

		
  


    <footer class="ftco-footer">
      <div class="container">
        <div class="row mb-5">
          <div class="col-sm-12 col-md">
            <div class="ftco-footer-widget mb-4">
              <h2 class="ftco-heading-2 logo"><a href="#">categories <span>Flowers </span></a></h2>
              <p>Machine learning!</p>
              <ul class="ftco-footer-social list-unstyled mt-2">
                <li class="ftco-animate"><a href="#"><span class="fa fa-twitter"></span></a></li>
                <li class="ftco-animate"><a href="#"><span class="fa fa-facebook"></span></a></li>
                <li class="ftco-animate"><a href="#"><span class="fa fa-instagram"></span></a></li>
              </ul>
            </div>
          </div>
          
          
         
          <div class="col-sm-12 col-md">
            <div class="ftco-footer-widget mb-4">
            	<h2 class="ftco-heading-2">Any questions ?</h2>
            	<div class="block-23 mb-3">
	              <ul>
	                <li><span class="icon fa fa-map marker"></span><span class="text">Cuenca - Ecuador</span></li>
	                <li><a href="#"><span class="icon fa fa-phone"></span><span class="text">+2 392 3929 210</span></a></li>
					
					<li><a href="#"><span class="icon fa fa-paper-plane pr-4"></span><span class="text">emarquez@est.ups.edu.ec </span></a></li>
	              </ul>
	            </div>
            </div>
          </div>
        </div>
      </div>
	  
	  
	  <div class="container-fluid px-0 py-5 bg-black">
		<div class="container">
			<div class="row">
			<div class="col-md-12">
	  
			  <p class="mb-0" style="color: rgba(255,255,255,.5);"><!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
	Copyright &copy;<script>document.write(new Date().getFullYear());</script> All rights reserved | This is a design made by : <a href="https://colorlib.com" target="_blank"> Edwin Marquez</a>
	<!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. --></p>
			</div>
		  </div>
		</div>
	</div>

    </footer>
    
  

  <!-- loader -->
  <div id="ftco-loader" class="show fullscreen"><svg class="circular" width="48px" height="48px"><circle class="path-bg" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke="#eeeeee"/><circle class="path" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke-miterlimit="10" stroke="#F96D00"/></svg></div>


  <script src="js/jquery.min.js"></script>
  <script src="js/jquery-migrate-3.0.1.min.js"></script>
  <script src="js/popper.min.js"></script>
  <script src="js/bootstrap.min.js"></script>
  <script src="js/jquery.easing.1.3.js"></script>
  <script src="js/jquery.waypoints.min.js"></script>
  <script src="js/jquery.stellar.min.js"></script>
  <script src="js/owl.carousel.min.js"></script>
  <script src="js/jquery.magnific-popup.min.js"></script>
  <script src="js/jquery.animateNumber.min.js"></script>
  <script src="js/scrollax.min.js"></script>
  <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBVWaKrjvy3MaE7SQ74_uJiULgl1JY0H2s&sensor=false"></script>
  <script src="js/google-map.js"></script>
  <script src="js/main.js"></script>
    
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