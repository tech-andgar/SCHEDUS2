@section('code', '404')
@section('title', __('404 ERROR - No encontrada página'))
<head>
	<!-- Required meta tags -->
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

	<!-- Bootstrap CSS -->
    <link rel="stylesheet" href="{{ asset('css/app.css') }}">
	<link rel="stylesheet" type="text/css" href="{{ asset('/css/400.css') }}">
</head>

<body>
    <div id="container" class="container clear" style="margin-top: -5%">
        <div class="wrapper row">
            <section id="fof" class="clear">
                <a class="go-back" href="javascript:history.go(-1)">Volver
                    <br>&laquo;</a>
                <div class="positioned" style="text-align: center">
                    <picture>
                        <img class="img-fluid"src="{{ asset('/svg/Plantilla_Blog_naranjaceet.png') }}" class="img-responsive" alt="Image">
                        <source media="(max-width: 799px)" srcset="{{ asset('/svg/Logo_SCHEDUS.svg') }}">
                        <source media="(min-width: 800px)" srcset="{{ asset('/svg/Logo_SCHEDUS.svg') }}">
                    </picture>
                    <!-- <picture>
                        <source media="(max-width: 799px)" srcset="../assets/images/LogoV2_256.png">
                        <source media="(min-width: 800px)" srcset="../assets/images/LogoV2_512.png">
                        <img src="../assets/images/LogoV2_512.png" class="img-responsive" alt="Image">
                    </picture> -->
                    <hr>
                    <br>
                    <h1>
                        <i class="fa fa-frown-o"></i>&nbsp;Ooooops!!!</h1>
                    <!-- <h2>No pudimos encontrar lo que estás buscando en</h2> -->
                    <h2>La página que estás buscando no existe.</h2>
                    <h3>Error 404: Recurso no encontrado </h3>
                    <br>
                    <div class="row">
                        <div class="col-md-6">
                            <h4>¿Qué ha pasado?</h4>
                            <hr>
                            <p>
                                Un estado de error 404 implica que no se pudo encontrar el archivo o la página que está
                                buscando.
                            </p>
                            <p>
                                La URL de la página que le ha remitido parece ser errónea o estar obsoleta.
                            </p>
                            <br>
                        </div>
                        <div class="col-md-6">
                            <h4>¿Qué puedo hacer?</h4>
                            <hr>
                            <!-- <h5>Si usted es un visitante del sitio</h5> -->
                            <p>
                                Por favor, utilice el botón Volver de su navegador y compruebe que está en el lugar
                                correcto.
                                <!-- Si necesita ayuda inmediata, por favor envíenos un correo electrónico. -->
                            </p>
                            <p>
                                Si cree que algo está roto
                            </p>
                            Por favor, informe del error al autor de esa página.
                            <br>
                            <a class="btn btn-warning" href="mailto:soportenewreset@gmail.com" role="button">REPORTAR
                                PROBLEMA</a>
                            <!-- <br>
                            <h5>Si usted es el propietario del sitio</h5>
                            <p>
                                Por favor, compruebe que está en el lugar correcto y póngase en contacto con el proveedor de su sitio web si cree que se
                                trata de un error.
                            </p> -->
                        </div>
                    </div>

                    <!--
                    <p>
                        Por alguna razón la página que usted solicitó no pudo ser encontrada en nuestro servidor.
                    </p>
                    La URL de la página que le ha remitido parece ser errónea o estar obsoleta.
                    <p>
                        Es posible que desee volver a la página principal.
                    </p>
                    <p>
                        Si cree que algo está roto
                    </p>
                    Por favor, informe del error al autor de esa página.
                    <p>
                        No se ha podido encontrar el recurso solicitado, pero es posible que vuelva a estar disponible en el futuro.
                    </p>
                    <p>
                        Si usted cree que esto es un error del servidor, por favor comuníqueselo al administrador del portal.
                    </p>
                    -->

                </div>
                <a class="go-home" href="/admin/login">Inicio
                    <br>&raquo;</a>
            </section>
        </div>
    </div>
    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
        crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49"
        crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.2/js/bootstrap.min.js" integrity="sha384-o+RDsa0aLu++PJvFqy8fFScvbHFLtbvScb8AjopnFD+iEQ7wo/CG0xlczd+2O/em"
        crossorigin="anonymous"></script>
    {{-- <script defer src="{{ asset('js/app.js') }}"></script> --}}
</body>
