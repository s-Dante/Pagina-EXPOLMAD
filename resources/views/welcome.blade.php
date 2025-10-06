@extends('Templates/headerStruct')

@section('content')

    <link rel="stylesheet" href="{{ asset('css/cronograma.css') }}">
    <link rel="stylesheet" href="{{ asset('css/glassimorfismo.css') }}">

    <body>

        <header class="header-index-schedule row justify-content-center mx-auto" id="header-index">
            <div class="header-container" style="position: relative;">
            </div>
            <div class="row mx-auto d-flex align-items-center px-5" style="position: relative; top: -55%; ">
                <div class="col-sm-3 mb-1" style="">
                    <img src="{{asset('images/LOGOEXPO2.png')}}" class="header-logo-lmad-expo img-fluid"
                        onclick="window.location.href = '{{ url('/') }}'">
                </div>

                <div class="timer-expo col-sm-9 text-right" id="timer-expo" style="">
                    <div class="Timer-days-style" id="Timer-days">
                        <p id="dias-left" class="">200 DÍAS</p>
                    </div>
                    <div class="Timer-clock-style" id="Timer-clock">
                        <p id="horas-left" class="">19:06:49</p>
                    </div>
                </div>
            </div>

            <div class="panel-header-buttons notDisplay d-md-none" id="panelShow" style="z-index: 0 !important;"> </div>

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

        <div class="body-container-expo-schedule">
            <img src="{{asset('images/Cancha_v1.png')}}" class="header-expo-3" style="padding: 0;">

            <div class="container-gradient">

                <h1 class="title"> HORARIO </h1>

                <div class="row px-20 mx-auto">

                    <div class="row" style="margin: 0rem;">

                        <div style="width: auto; height: auto;">
                            <div class="glassContainer" style="width: auto; height: auto;">
                                <div style="z-index: 0; padding: 3rem;">
                                    <img src="{{asset('images/MapaInteractivo.svg')}}">
                                </div>
                            </div>

                            <div class="d-flex row">
                                <button style="width: 1rem; height: 1rem;"></button>
                                <button style="width: 1rem; height: 1rem;"></button>
                            </div>
                        </div>

                        <div style="width: auto;">
                            <img src="{{asset('images/AmbassadorSchedules.jpg')}}" style="width: 60rem; border-radius: 30px;" class="img-fluid">
                        </div>


                    </div>


                    <svg style="display: none">
                        <filter id="container-glass" x="0%" y="0%" width="100%" height="100%">
                            <feTurbulence type="fractalNoise" baseFrequency="0.008 0.008" numOctaves="2" seed="92"
                                result="noise" />
                            <feGaussianBlur in="noise" stdDeviation="0.02" result="blur" />
                            <feDisplacementMap in="SourceGraphic" in2="blur" scale="77" xChannelSelector="R"
                                yChannelSelector="G" />
                        </filter>
                        <filter id="btn-glass" primitiveUnits="objectBoundingBox">
                            <feGaussianBlur in="SourceGraphic" stdDeviation="0.02" result="blur"></feGaussianBlur>
                            <feDisplacementMap id="disp" in="blur" in2="map" scale="1" xChannelSelector="R"
                                yChannelSelector="G" />
                            </feDisplacementMap>
                        </filter>
                    </svg>

                </div>

                <h1> CONFERENCIAS </h1>

            </div>

        </div>

        <script>
            $(document).ready(function () {
                $('.multiple-items').slick({
                    slidesToShow: 2,
                    responsive: [
                        /*{
                        breakpoint: 992, // Cambia a 2 slides cuando el ancho de la pantalla es 992px o menos (pantalla más pequeña)
                        settings: {
                            slidesToShow: 2,
                        },
                        },*/
                        {
                            breakpoint: 768, // Cambia a 1 slide cuando el ancho de la pantalla es 768px o menos (pantalla más pequeña)
                            settings: {
                                slidesToShow: 1,
                            },
                        },
                    ],
                    slidesToScroll: 1,
                    draggable: true,
                    arrows: true,
                    prevArrow: '<button class="slick-prev custom-prev"><a class="carousel-control-prev m-0 p-0 z-3" href="#myCarousel" data-slide="prev"> <span><svg xmlns="http://www.w3.org/2000/svg" width="40" height="70" viewBox="0 0 50 80" fill="none"> <text x="10" y="60" font-family=""Bebas Neue", sans-serif" font-size="70" fill="transparent" stroke="#BBE1C2" stroke-width="0.2rem"> &lt; </text></svg></a></button>',
                    nextArrow: '<button class="slick-next custom-next"><a class="carousel-control-prev m-0 p-0 z-3" href="#myCarousel" data-slide="prev"> <span><svg xmlns="http://www.w3.org/2000/svg" width="40" height="70" viewBox="0 0 50 80" fill="none"> <text x="10" y="60" font-family=""Bebas Neue", sans-serif" font-size="70" fill="transparent" stroke="#E1BBD4" stroke-width="0.2rem"> &gt; </text></svg></a></button>',
                    dots: true,
                    appendDots: $('.circles-imgs-conferencias'),
                    customPaging: function (slider, i) {
                        return '<button class="custom-dot"></button>';
                    },
                });
            });

            function ampliarImagen(_id) {
                // Obtener la referencia de la imagen original y la imagen ampliada
                var imagenOriginal = document.getElementById(_id);
                var imagenAmpliada = document.getElementById('big' + _id);

                // Cambiar el src de la imagen ampliada por el src de la imagen original
                imagenAmpliada.getElementsByTagName("img")[0].src = imagenOriginal.src;

                // Mostrar la imagen ampliada
                imagenAmpliada.style.display = "block";
            }
            function cerrarImagenAmpliada(_id) {
                document.getElementById(_id).style.display = "none";
            }
        </script>

        <script>

            function calcularTiempoRestante() {

                const fechaObjetivo = new Date(2026, 5, 10); // Meses en JavaScript son de 0 a 11, así que 8 representa septiembre.

                // Obtiene la fecha actual
                const fechaActual = new Date();

                // Calcula la diferencia en milisegundos
                const diferenciaMilisegundos = fechaObjetivo - fechaActual;

                // Convierte la diferencia en días
                const diasFaltantes = Math.ceil(diferenciaMilisegundos / (1000 * 60 * 60 * 24));
                const fechaObjetivoHoras = new Date(2025, 5, 7, 8, 0, 0);

                // Calcula los días, horas, minutos y segundos
                const dias = Math.floor(diferenciaMilisegundos / (1000 * 60 * 60 * 24));
                const horas = Math.floor((diferenciaMilisegundos % (1000 * 60 * 60 * 24)) / (1000 * 60 * 60));
                const minutos = Math.floor((diferenciaMilisegundos % (1000 * 60 * 60)) / (1000 * 60));
                const segundos = Math.floor((diferenciaMilisegundos % (1000 * 60)) / 1000);

                const diasFormateados = dias.toString().padStart(2, '0');
                const horasFormateadas = horas.toString().padStart(2, '0');
                const minutosFormateados = minutos.toString().padStart(2, '0');
                const segundosFormateados = segundos.toString().padStart(2, '0');

                if (diasFaltantes <= 0 && horas <= 0 && minutos <= 0 && segundos <= 0) {
                    var timerA = document.getElementById('timer-expo');
                    timerA.innerHTML = "<div class='Timer-clock-style' id='Timer-clock'><p>¡LA EXPO HA COMENZADO!</p></div>";
                    console.log("aaa");
                }
                else {
                    var daysl = document.getElementById('dias-left');
                    daysl.innerHTML = dias + " DÍAS";
                    var horasl = document.getElementById('horas-left');
                    horasl.innerHTML = horasFormateadas + ":" + minutosFormateados + ":" + segundosFormateados;
                }
            }

            // Actualiza el tiempo restante cada segundo
            setInterval(calcularTiempoRestante, 1000);

            // Llama a la función inicialmente para mostrar el tiempo restante
            calcularTiempoRestante();

        </script>
@endsection