@extends('Templates/headerStruct')

@section('content')



<header class="header-index row justify-content-center mx-auto h-100" id="header-index" style="">
    <div style="position: relative; width: 100%; height:80%;;padding-left: 0px;padding-right: 0px;">
        <video autoplay loop muted class="header-gif-expo img-fluid" id="video-header">
            <source src="{{asset('images/expolmad.mp4')}}" type="video/mp4">
            Tu navegador no admite el elemento de video.
        </video>
    </div>

    <div style="width: 50%; height: 0%;">
        <img src="{{asset('images/LMAD_BLOOM.png')}}" class="header-logo-lmad img-fluid" height="270" width="522">
    </div>

    <div class="panel-header-buttons notDisplay d-md-none" id="panelShow"> </div>

    <div class="header-buttons-div">

        <img src="{{asset('images/btn-burger-grad.png')}}" id="arrowShow" onclick="showButtons()"
            class="arrow-header notDisplay" />

        <div class="col-12 d-md-none"></div>

        <button class="header-btn-eventMap notDisplay" id="mapButton"
            onclick="window.location.href = '{{route('MapCI.index')}}'">Mapa del Evento</button>

        <div class="col-12 d-md-none"></div>

        <button class="header-btn-assistance notDisplay" id="assistanceButton"
            onclick="window.location.href = '{{route('AfiRegister.index')}}'">Asistencia</button>

        <div class="col-12 d-md-none"></div>

        <button class="header-btn-portfolio d-md-none notDisplay" id="portfolioButton"
            onclick="window.location.href = '{{route('Portfolio.index')}}'">Portafolio</button>

        <div class="col-12 d-md-none"></div>

        <button class="header-btn-Login d-md-none notDisplay" id="LoginButton"
            onclick="window.location.href = '{{route('inicioSesion.index')}}'">Iniciar
            Sesión</button>

        <div class="col-12 d-md-none"></div>

        <button class="header-btn-portfolio d-none d-md-block"
            onclick="window.location.href = '{{route('Portfolio.index')}}'">Portafolio</button>

        <div class="col-12 d-md-none"></div>

        <button class="header-btn-Login d-none d-md-block"
            onclick="window.location.href = '{{route('inicioSesion.index')}}'">Iniciar
            Sesión</button>

    </div>

</header>

<div class="BodyContainer" style="height: 50rem;">

    <div class="container Container-carrera-section">

        <div class="row">
            <div class="carrera-section mx-auto" style="height: auto;">
                <p class="carrea-title">ACERCA DE</p>
                <p class="carrera-description">
                    La Licenciatura en Multimedia y Animación Digital es un programa educativo diseñado para formar profesionistas con conocimientos de técnicas y expresiones artísticas y socioculturales, así como un dominio de metodologías de desarrollo y mantenimiento de tecnologías de información y comunicaciones.
                </p>
            </div>

            <div class="card-videojuegos row justify-content-center mx-auto col-md-12" style="margin-top: 10%;">
                <div class="card-videojuegos-text row justify-content-center col-md-4 d-flex align-items-center">
                    <div class="mt-4"></div>
                    <div class="card-videojuegos-title mt-5 fs-1">Videojuegos</div>
                    <div class="card-videojuegos-desc fs-4" style="height: auto;">
                        En LMAD nuestros estudiantes desarrollan las aptitudes necesarias para colaborar en equipo y desenvolverse como profesionales de la industria en la creación de videojuegos, te invitamos a descubrir los mundos extraordinarios que nuestros estudiantes han creado a lo largo de su estancia estudiantil.
                    </div>
                    <a class="card-videojuegos-link d-flex" style="margin-bottom: 20%;"
                        href="{{route('Portfolio.index')}}">Ver proyectos <i
                            class="gg-arrow-right d-flex" style="display: inline; 
                                    position: relative; left: 2%; top: 50%;  transform: translate(0%, -50%);"></i></a>
                </div>
                <div class="row justify-content-center col-md-8 d-flex align-items-center" style="padding: 0px;">
                    <img src="{{asset('images/EXPOLMAD-Vid.jpg')}}" class="card-videojuegos-img-i">
                </div>

            </div>


            <div class="card-arte row justify-content-center mx-auto col-md-12" style="margin-top: 10%;">
                <div class="row col-md-8 art-container-img" style="">
                    <img src="{{asset('images/EXPOLMAD-ARTE.jpg')}}" class="card-arte-img-i">
                </div>
                <div class="card-arte-text row justify-content-center col-md-4 d-flex align-items-center">
                    <div class="mt-4"></div>
                    <div class="card-arte-title mt-5 fs-1">Arte</div>
                    <div class="card-arte-desc fs-4" style="height: auto;">
                        Los artistas digitales están divididos en tres: arte 2D, arte 3D y VFX. Todos comparten algo en común: el límite es la imaginación. Nuestros artistas digitales crean contenido que da vida a sus ideas más creativas, haciendo uso de sus habilidades y la pasión por el arte, manejando las herramientas estándares en la industria.
                    </div>
                    <a class="card-arte-link d-flex" style="margin-bottom: 20%;"
                        href="{{route('Portfolio.index')}}">Ver
                        proyectos <i class="gg-arrow-right d-flex" style="display: inline; 
                                position: relative; left: 2%; top: 50%;  transform: translate(0%, -50%);"></i></a>
                </div>
            </div>

            <div class="card-progra row justify-content-center mx-auto col-md-12" style="margin-top: 10%;">
                <div class="card-progra-text row justify-content-center col-md-4 d-flex align-items-center">
                    <div class="mt-4"></div>
                    <p class="card-progra-title mt-5 fs-1">Programación</p>
                    <p class="card-progra-desc fs-4" style="height: auto;">
                        En LMAD nos sumergimos en un mundo donde la creatividad y la lógica se fusionan para dar vida a soluciones innovadoras. La programación es el lenguaje del futuro, y nosotros somos sus maestros. Desde aplicaciones web y móviles hasta la creación de interfaces intuitivas y bases de datos eficientes. Imagina una idea y conviértela en realidad, en LMAD aprendes a dar forma a tus sueños a través del código.
                    </p>
                    <a class="card-progra-link d-flex" style="margin-bottom: 20%;"
                        href="{{route('Portfolio.index')}}">Ver proyectos <i
                            class="gg-arrow-right d-flex" style="display: inline; 
                                position: relative; left: 2%; top: 50%;  transform: translate(0%, -50%);"></i></a>
                </div>
                <div class="row justify-content-center col-md-8 d-flex align-items-center" style="padding: 0px;">
                    <img src="{{asset('images/EXPOLMAD-PROGRA.jpg')}}" class="card-progra-img-i">
                </div>
            </div>

        </div>


    </div>

    <div class="footer-card" onclick="window.location.href = '{{route('expo.index')}}'">
        <p class="footer-card-text">EXPO LMAD <i>EXPANDIENDO LA REALIDAD</i></p>
        <img width="17" height="17" src="{{asset('images/icon-arrow-down.png')}}" alt="expand-arrow--v2"
            class="arrow-footer" />
    </div>
</div>

<!--Intro>
    <section id="loading-screen">
        <video autoplay muted class="video-intro" id="videoIntro">
            <source src="{{asset('images/INTRO.mp4')}}" type="video/mp4" class="video-intro" >
            Tu navegador no admite el elemento de video.
        </video>
    </section>

    <script>

    </script-->
@endsection