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
    
    <style type="text/css">
  th {background-color: black}
   td {background-color: yellow}
</style>

</head>

<body>
	<c:set var="listPedidos" value="${requestScope['ListPedidos']}" />
	
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
        <!-- Header part end-->

    <div class="main">

        <section class="signup">
            <!-- <img src="images/signup-bg.jpg" alt=""> -->
            <div class="container4">
                <div class="signup-content">
                <br>  
                <br>  
                <br>  
                <br>
                    <h3  align="center">Lista de Pedidos</h3>
                    <h4 align="center">  Realizar busqueda:</h4>
                    <form class="example" action="/PedidosJPA/ListarPedidos" method="POST" align="center">
                        <input type="text" placeholder="Comida o tarjeta" name="search">
                        <button type="submit"><i class="fa fa-search"></i></button>
                      </form>
                     <br>  

                    <table id="ejemplo" align="center" class="table table-striped table-bordered" style="width:80%" >
                        <thead>
                            <tr>
                                <th>Numero</th>
                                <th>Fecha</th>
                                <th>Cliente</th>
                                <th>Observaciones</th>
                                <th>Total</th>
                                <th>Tarjeta Credito</th>
                                <th>Comidas</th>
                            
                            </tr>
                        </thead>
                        <tbody>
<c:set var="i" value = "${0}"/>
                  <c:forEach var="listP" items="${listPedidos}">
                  <c:set var="i" value = "${i+1}"/>

								<tr>
									<td>${listP.numero} </td>
									<td>${listP.fecha} </td>
									<td>${listP.cliente} </td>
									<td>${listP.observaciones} </td>
									<td>${listP.total} </td>
									<td>${listP.tarjetaCredito.numero} </td>

									<td>
									<div class="btn btn-primary btn-sm" data-toggle="modal" data-target="#exampleModalCenter${i}">
                                                <i class="edit icon"></i> Ver
                                            </div>
									 
                                            
            <div class="modal fade" id="exampleModalCenter${i}" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
            <div class="modal-dialog modal-dialog-centered" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title" id="exampleModalCenterTitle">Lista de Comidas</h5>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                    </div>

                       <c:choose>
                                                        <c:when test="${listP.comidas.size() > 0}">

                                                            <c:forEach var="listComida" items="${listP.comidas}">
                                                            
                                                            <p>Nombre: ${listComida.nombre} Precio: ${listComida.precioUnitario}</p>
                                                           
                                                                
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