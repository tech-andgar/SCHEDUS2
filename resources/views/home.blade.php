<!DOCTYPE html>
<html lang="es">



<head>
    <title>Horario de formación</title>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no , maximum-scale=1, user-scalable=no">
    <meta name="description" content="Sistema de control de horario SCHEDUS">
    <meta name="author" content="Andres Garcia">
    <meta name="author" content="Johann Amaya">
    <meta name="keyword" content="Sistema de control de horario SCHEDUS, SCHEDUS">

    <!-- FAVICON -->
    <link rel="icon" type="image/webp" sizes="32x32" href="{{ asset('images/favicon-32x32.webp') }}">


    <!-- CSS -->
    <link rel="stylesheet" href="{{ asset('css/app.css') }}">

    <!-- SCRIPTS -->
    <script defer src="{{ asset('js/app.js') }}"></script>

    {{--
    <!-- Plugins and scripts required by all views -->
    <script src="./assets/js/coreui/pace.min.js"></script>
    <script src="./assets/js/coreui/perfect-scrollbar.min.js"></script>
    <script src="./assets/js/coreui/coreui.min.js"></script>
    <!-- Plugins and scripts required by this view-->
    <script src="./assets/js/coreui/Chart.min.js"></script>
    <script src="./assets/js/coreui/custom-tooltips.min.js"></script>
    <script src="./assets/js/coreui/main.js"></script>
    --}}
</head>

<body class="app header-fixed sidebar-fixed aside-menu-fixed">

    <header class="app-header navbar">
        <a class="navbar-brand" href="#">
            <img class="navbar-brand-full" src="{{ asset('images/Logo_SCHEDUS.svg') }}" width="134" height="38" alt="SCHEDUS Logo">
        </a>
        <ul class="nav navbar-nav flex-row justify-content-between ml-auto">
            <li class="dropdown order-1">
                <a class="nav-link mr-3" href="/admin/login"><i class="fas fa-sign-in-alt"></i> Login <span class="caret"></span></a>
            </li>
        </ul>
    </header>

    <div class="app-body">
        <!-- Contenido Principal -->
        <main class="main">
            <div class="container h-100">
                <div class="row align-items-center h-100">
                    <div class="col-12 mx-auto">
                        <section class="bg-light">
                            <div class="row">
                                <div class="col-md-12">
                                    <h2 class="text-center p-5">HORARIO DE FORMACIÓN CEET</h2>
                                </div>
                                <div class="col-12 d-flex justify-content-center text-center p-5">
                                    <form action="#" method="post">
                                        <label for="num_ficha">Numero de Ficha</label>
                                        <div id="textbox-search" class="input-group">
                                            <input class="form-control border-secondary py-2" type="search" placeholder="Busqueda">
                                            <div class="input-group-append">
                                                <button class="btn btn-outline-info form-control" type="submit">
                                                    <i class="fa fa-search"></i>
                                                </button>
                                            </div>
                                        </div>
                                        <small id="helpId" class="form-text text-muted">Ingresa su numero de ficha para
                                            buscar horario asignado</small>
                                    </form>
                                </div>
                            </div>
                        </section>
                    </div>
                </div>
            </div>
            <!-- Fin ejemplo de tabla Listado -->
        </main>
        <!-- /Fin del contenido principal -->
    </div>

    <!-- FOOTER -->
    <footer class="app-footer"  style="margin-left:0;">
        <span><a href="#">SCHEDUS</a> &copy; 2019</span>
        <span class="ml-auto mr-2">Desarrollado por <a href="https://github.com/andgar2010">Andres Garcia</a></span>&amp;&nbsp;&nbsp;<span
            class="my-auto"><a href="https://github.com/johannbulls">Johann Amaya</a></span>
    </footer>
    <!-- END FOOTER -->

</body>
<!-- END BODY -->

</html>
