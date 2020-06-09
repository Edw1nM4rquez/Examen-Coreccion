<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
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
    <link rel="stylesheet" href="/AgendaVirtual2.0/config/css/magnific-popup.css">
    <link rel="stylesheet" href="/AgendaVirtual2.0/config/css/slick.css">
    <link rel="stylesheet" href="/AgendaVirtual2.0/config/css/style.css">
    <link rel="stylesheet" href="/AgendaVirtual2.0/config/fonts/material-icon/css/material-design-iconic-font.min.css">
    <link rel="stylesheet" href="/AgendaVirtual2.0/config/vendor/jquery-ui/jquery-ui.min.css">
    <script type="text/javascript" src="/AgendaVirtual2.0/config/JS1/validaciones.js"></script>
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
                        <a class="navbar-brand" href="/AgendaVirtual2.0/Publica/index.jsp"> <img src="/AgendaVirtual2.0/config/img/logo.png" alt="logo"> </a>
                        <button class="navbar-toggler" type="button" data-toggle="collapse"
                            data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent"
                            aria-expanded="false" aria-label="Toggle navigation">
                            <span class="navbar-toggler-icon"></span>
                        </button>

                        <div class="collapse navbar-collapse main-menu-item justify-content-end"
                            id="navbarSupportedContent">
                            <ul class="navbar-nav align-items-center">
                                <li class="nav-item">
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
                                <li class="d-none d-lg-block">
                                    <a class="btn_1" href="/AgendaJPA/Publica/inicia_usuario.jsp">Iniciar sesión</a>
                                </li>
                            </ul>
                        </div>
                    </nav>
                </div>
            </div>
        </div>
    </header>


        <div class="main">

        <section class="signup">
            <div class="container1">
                <div class="signup-content">
                    <h1 align="center">REGISTRARSE</h1>
                    ${Message}
                    <form action="/AgendaJPA/RegistrarUsuario" method="POST" id="signup-form" class="signup-form" oninput='re_password.setCustomValidity(re_password.value != contrasena.value ? "Las contrasenas no coinciden" : "")' >
                       
                        <div class="form-group">
                            <label for="cedula">Cédula</label>
                            <div id="salida"></div>
                            <input type="text" class="form-input"  name="cedula"  id="ced" placeholder="1401069131" maxlength="10" minlength="10" pattern="[0-9]+" onkeypress="validar()" required />
                        </div>
                        <div class="form-row">
                            <div class="form-group">
                                <label for="nombres">Nombres</label>
                                <input type="text" class="form-input" name="nombres" id="first_name" placeholder="Juan Esteban" pattern="[A-Za-z]{4,}" title="Solo Letras"  required />
                            </div>
                            <div class="form-group">
                                <label for="apellidos">Apellidos</label>
                                <input type="text" class="form-input" name="apellidos"  id="last_name" pattern="[A-Za-z]{4,}" title="Solo Letras" placeholder="Martinez Rojas" required />
                            </div>
                        </div>

                        <div class="form-group">
                            <label for="email">Correo</label>
                            <input type="email" class="form-control" name= "correo" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="ejemplo@ejemplo.com" required>
                            <small id="emailHelp" class="form-text text-muted"></small>
                        </div>
                        <div class="form-row">
                            <div class="form-group">
                                <label for="psw">Contraseña</label>
                                <input type="password" class="form-input" name="contrasena" id="password" placeholder="********" required pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}"
  title="Debe contener 8 o más caracteres que tengan al menos un número y una letra mayúscula y minúscula" />
                            </div>
                            <div class="form-group">
                                <label for="re_password">Repetir Contraseña</label>
                                <input type="password" class="form-input" name="re_password" id="re_password" placeholder="********" required/>
                            </div>
                        </div>

                        <div class="form-group">
                            <input type="submit" name="registrarUsr" id="submit" class="form-submit" value="Registrarse"/>
                        </div>
                    </form>
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
    
    <script src="js/jquery-1.12.1.min.js"></script>
    <script src="js/popper.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/jquery.magnific-popup.js"></script>
    <script src="js/swiper.min.js"></script>
    <script src="js/masonry.pkgd.js"></script>
    <script src="js/owl.carousel.min.js"></script>
    <script src="js/jquery.nice-select.min.js"></script>
    <script src="js/slick.min.js"></script>
    <script src="js/jquery.counterup.min.js"></script>
    <script src="js/waypoints.min.js"></script>
    <script src="js/custom.js"></script>
    <script src="vendor/jquery/jquery.min.js"></script>
    <script src="vendor/jquery-ui/jquery-ui.min.js"></script>
    <script src="vendor/jquery-validation/dist/jquery.validate.min.js"></script>
    <script src="vendor/jquery-validation/dist/additional-methods.min.js"></script>
    <script src="js/main.js"></script>    
    
    <script type="text/javascript">
      function validar() {
        var cad = document.getElementById("ced").value.trim();
        var total = 0;
        var longitud = cad.length;
        var longcheck = longitud - 1;

        if (cad !== "" && longitud === 10){
          for(i = 0; i < longcheck; i++){
            if (i%2 === 0) {
              var aux = cad.charAt(i) * 2;
              if (aux > 9) aux -= 9;
              total += aux;
            } else {
              total += parseInt(cad.charAt(i)); // parseInt o concatenará en lugar de sumar
            }
          }

          total = total % 10 ? 10 - total % 10 : 0;

          if (cad.charAt(longitud-1) == total) {
            document.getElementById("salida").innerHTML = ("");
          }else{
            document.getElementById("salida").innerHTML = ("Cedula Inválida");
          }
        }
      }
    </script>
    
</body>

</html>