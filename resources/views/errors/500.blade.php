@section('code', '500')
@section('title', __('500 Error'))

<head>
    <title>500 ERROR</title>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.2/css/bootstrap.min.css" integrity="sha384-Smlep5jCw/wG7hdkwQ/Z5nLIefveQRIY9nfy6xoR1uRYBtpZgI6339F5dgvm/e9B"
        crossorigin="anonymous">
    <link rel="stylesheet" type="text/css" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" type="text/css" href="{{ asset('/css/500.css') }}">
</head>

<body>
    <div class="container">
        <div class="row">
            <div id="wrapper">
                <div class="content">
                <picture>
                    <img class="img-fluid"src="{{ asset('/svg/Plantilla_Blog_naranjaceet.png') }}" alt="Image">                    
                    <source media="(max-width: 799px)" srcset="{{ asset('/svg/Logo_SCHEDUS.svg') }}">
                    <source media="(min-width: 800px)" srcset="{{ asset('/svg/Logo_SCHEDUS.svg') }}">
                </picture>
                <!-- <picture>
                    <source media="(max-width: 799px)" srcset="../assets/images/LogoV2_256.png">
                    <source media="(min-width: 800px)" srcset="../assets/images/LogoV2_512.png">
                    <img src="../assets/images/LogoV2_512.png" class="img-responsive" alt="Image">
                </picture> -->
                <hr>
                    <h2><i class="fa fa-wrench"></i>&nbsp;Mantenimiento Temporal</h2>
                </div>
                <br>
                <div class="grid">
                    <span class="server"></span>
                    <span class="server"></span>
                    <span class="server"></span>
                    <span class="server"></span>
                    <span class="server"></span>
                </div>
                <br>

                <div class="content">
                    <!-- <h1>Actualmente realizando tareas de mantenimiento.</h1>
                                <br> -->
                    <h1>El servidor web para SCHEDUS está actualmente en mantenimiento.</h1>
                    <!--
                    <h5>Estamos haciendo un breve mantenimiento programado.</h5>
                    -->
                    <br>
                    <p>
                        Disculpe las molestias.
                        <br> Estaremos de vuelta en marcha tan rápido como sea posible.
                    </p>
                </div>
            </div>

        </div>
    </div>
</body>

</html>