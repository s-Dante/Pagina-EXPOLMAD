@extends('Templates/headerStruct')

@section('content')
<body>

    <header class="header-index-schedule row justify-content-center mx-auto" id="header-index">
        <div class="header-container" style="position: relative;">
            <video autoplay loop muted  class="header-gif-expo-2 un-inclined img-fluid" id="video-header">
                <source src="{{asset('images/expolmad.mp4')}}" type="video/mp4" class="header-gif-expo-2" >
                Tu navegador no admite el elemento de video.
            </video>
        </div>
        <div class="row mx-auto un-inclined  d-flex align-items-center px-5" style="position: relative; top: -55%; ">
            <div class="col-sm-3 mb-1" style="">
                <img src="{{asset('images/LOGOEXPO2.png')}}" class="header-logo-lmad-expo img-fluid" onclick="window.location.href = '{{ url('/') }}'">
            </div>
            
            <div class="timer-expo col-sm-9 text-right" id="timer-expo"  style="">
                <div class="Timer-days-style" id="Timer-days">
                    <p id="dias-left" class="">200 DÍAS</p>
                </div>
                <div class="Timer-clock-style" id="Timer-clock">
                    <p id="horas-left" class="">19:06:49</p>
                </div>
            </div>
        </div>

        <div class="panel-header-buttons un-inclined notDisplay d-md-none" id="panelShow" style="z-index: 0 !important;"> </div>

        <div class="un-inclined">
            @extends('Templates/navbarPublic')
        </div>

        <div class="white-line-2" style="position: relative; top: -40%; "></div>
    </header>

    <div class="body-container-expo-schedule">
        <center>
            <div class="white-line"></div>

            <!--VERSIÓN DESKTOP-->

            <div class="schedules-container-expo un-inclined row mx-auto mt-5 d-md-block">
                <div class="row justify-content-center align-items-center mx-auto mt-5 mb-5">
                <div class="schedule-container-title m-0 p-0 d-md-none">
                <div class="schedule-container-title-inner row justify-content-center align-items-center p-0 m-0">
                    <p class="scheduletitle m-0 p-0">HORARIO</p>
                </div>
            </div>

            <div class="row justify-content-center align-items-center p-4 m-0 d-sm-block d-lg-none">
                <div class="img-card-expo-one mx-3 p-0 mt-3">
                    <img class="m-0 p-0 img-fluid" id="ImageSchedule1"
                    src="{{asset('images/CRONOGRAMA1.png')}}" alt="">
                </div>
                <div class="img-card-expo-two mx-3 p-0 mt-3">
                    <img class="m-0 p-0 img-fluid" src="{{asset('images/HORARIOS2_Cancilleres.png')}}" alt="">
                </div>
                <div style="display: none !important;" class="img-card-expo-three mx-3 p-0 mt-2">
                    <img class="m-0 p-0 img-fluid" src="{{asset('images/Room1.jpg')}}" alt="">
                </div>
            </div>
                    <div class="schedule-container m-1 me-0 p-0 d-none d-lg-block">
                                   

                        <div class="schedule-container-inner row justify-content-center align-items-center p-0 m-0">
                            <div class="img-card-expo-one mx-3 p-0 mt-3">
                                <img class="m-0 p-0 img-fluid" id="ImageSchedule1"
                                src="{{asset('images/CRONOGRAMA1.png')}}" alt="">
                            </div>
                            <div class="img-card-expo-two mx-3 p-0 mt-3">
                                <img class="m-0 p-0 img-fluid" src="{{asset('images/HORARIOS2_Cancilleres.png')}}" alt="">
                            </div>
                            <div style="display: none !important;" class="img-card-expo-three mx-3 p-0 mt-2">
                                <img class="m-0 p-0 img-fluid" src="{{asset('images/Room1.jpg')}}" alt="">
                            </div>
                        </div>

                    </div>
                    <div class="schedule-container-title m-0 p-0 d-none d-lg-block">
                        <div class="schedule-container-title-inner row justify-content-center align-items-center p-0 m-0">
                            <p class="scheduletitle m-0 p-0">HORARIO</p>
                        </div>
                    </div>
                </div>
            </div>
            <!--VERSIÓN DESKTOP-- (hacia arriba) !!Resuelto con img-fluid-->

            <div class="row justify-content-center align-items-center mx-auto un-inclined mt-5">

            <!-- versión móvil-->
            <div class="d-sm-block d-lg-none m-0 p-0 mt-5">
                    <div class="col align-self-center" >
                        <div class="carusel-container-title m-0 p-0" >
                            <div class="carusel-container-title-inner row justify-content-center align-items-center m-0 p-0">
                                <div class="row justify-content-around p-0">
                                    <p class="col-6 carusel-title m-0 p-0 ps-2">CONFERENCIAS</p>
                                    <div class="col-3 offset-md-3">
                                        <div class="row justify-content-end align-items-center m-0 pt-1">
                                            <div class="col-container circle-pink m-1 p-0"></div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="carusel-container m-0 p-0" style="height: 46rem;">
                            <div class="carusel-container-inner row justify-content-center align-items-center m-0 p-2">
                                <div class="card-img-conferencias multiple-items p-0 m-0">
                                @foreach ($allEvents as $event)
                                    @if($event->typeEvent == "Master Class" || $event->typeEvent == "Conferencia")
                                        <div class="card-a m-0 p-0" style="width:10%; height: 90%;">
                                            <center>
                                                <img src="{{asset('storage/eventImages/'.$event->image)}}" class="img-card-taller-expo img-fluid" style="height: fit-content;">
                                                <p class="text-card-conferencias-expo-text m-0 p-0 mb-1 mt-4">{{$event->eventName}}</p>
                                                <p class="text-card-conferencias-hor mb-1">{{$event->startTime}} a {{$event->endTime}} horas</p>
                                                <p class="text-card-conferencias-hor mb-1">{{$event->date}}</p>
                                            </center>
                                        </div>
                                                                    
                                    @endif
                                @endforeach
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

<!-- versión desk-->
                <div class="col-9 m-0 p-0 mt-5 d-none d-lg-block">
                    <div class="col align-self-center">
                        <div class="carusel-container-title m-0 p-0">
                            <div class="carusel-container-title-inner row justify-content-center align-items-center m-0 p-0">
                                <div class="row justify-content-around p-0">
                                    <p class="col-6 carusel-title m-0 p-0 ps-2">CONFERENCIAS</p>
                                    <div class="col-3 offset-md-3">
                                        <div class="row justify-content-end align-items-center m-0 pt-1">
                                            <div class="col-container circle-pink m-1 p-0"></div>
                                            <div class="col-container circle-green m-1 p-0"></div>
                                            <div class="col-container circle-yellow m-1 me-0 p-0"></div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="carusel-container m-0 p-0">
                            <div class="carusel-container-inner row justify-content-center align-items-center m-0 p-2">
                                <div class="card-img-conferencias multiple-items p-0 m-0">
                                @foreach ($allEvents as $event)
                                    @if($event->typeEvent == "Master Class" || $event->typeEvent == "Conferencia")
                                        <div class="card-a m-0 p-0" style="width:10%; height: 90%;">
                                            <center>
                                                <img src="{{asset('storage/eventImages/'.$event->image)}}" class="img-card-taller-expo img-fluid" style="height: 78%;">
                                                <p class="text-card-conferencias-expo-text m-0 p-0 mb-1 mt-4">{{$event->eventName}}</p>
                                                <p class="text-card-conferencias-hor mb-1">{{$event->startTime}} a {{$event->endTime}} horas</p>
                                                <p class="text-card-conferencias-hor mb-1">{{$event->date}}</p>
                                            </center>
                                        </div>
                                                                    
                                    @endif
                                @endforeach
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-3">

                </div>
            </div>

            <!-- versión móvil-->
             <div style="display: none !important;" class="d-sm-block d-lg-none row justify-content-center align-items-center mx-auto un-inclined mt-5">
                <div class="col-3 m-0 p-0 mt-5">
                    
                </div>
                <div class="d-sm-block d-lg-none m-0 p-0 mt-5">
                    <div class="col align-self-center">
                        <div class="carusel-container-title-left m-0 p-0">
                            <div class="carusel-container-title-inner-left row justify-content-center align-items-center m-0 p-0">
                                <div class="row justify-content-around p-0">
                                    <p class="col-6 carusel-title-left m-0 p-0 ps-2">TALLERES</p>
                                    <div class="col-3 offset-md-3">
                                        <div class="row justify-content-end align-items-center m-0 pt-1">
                                            <div class="col-container circle-pink m-1 p-0"></div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="carusel-container-left m-0 p-0" style="height: 32rem;" >
                            <div class="carusel-container-inner-left row justify-content-center align-items-center m-0 p-0">
                                @if(count($allEvents) > 0)
                                <div id="myCarousel" class="carousel slide" data-ride="carousel">
                                    @php
                                        $counter = 0;
                                    @endphp
                                    
                                    <div class="carousel-inner carousel-container mx-auto" style="width:60%;">
                                        @foreach ($allEvents as $event)
                                            @if($event->typeEvent != "Master Class" && $event->typeEvent != "Conferencia")
                                                <div class="item @if($counter < 1) active @endif" style="width:100%;">
                                                    <img src="{{ asset('storage/eventImages/'.$event->image) }}" class="img-card-taller-expo carousel-image img-fluid m-0 p-0" style="heigth: fit-content;">
                                                    <p class="text-card-taller-expo-text mt-2">{{$event->eventName}}</p> 
                                                </div>
                                                @php
                                                    $counter++;
                                                @endphp
                                            @endif
                                        @endforeach
                                    </div>

                                    <a class="carousel-control-prev" href="#myCarousel" data-slide="prev">
                                        <svg xmlns="http://www.w3.org/2000/svg" width="80" height="150" viewBox="0 0 50 80" fill="none">
                                            <text x="10" y="60" font-family="'Bebas Neue', sans-serif" font-size="70" fill="transparent" stroke="#BBE1C2" stroke-width="0.2rem">
                                                &lt;
                                            </text>
                                        </svg>
                                    </a>
                                    <a class="carousel-control-next" href="#myCarousel" data-slide="next">
                                    <svg xmlns="http://www.w3.org/2000/svg" width="80" height="150" viewBox="0 0 50 80" fill="none">
                                            <text x="10" y="60" font-family="'Bebas Neue', sans-serif" font-size="70" fill="transparent" stroke="#E1BBD4" stroke-width="0.2rem">
                                                &gt;
                                            </text>
                                        </svg>
                                    </a>
                                </div>

                                @endif
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <!-- versión deskt-->
            <div style="display: none !important;" class="row justify-content-center align-items-center mx-auto un-inclined mt-5 d-none d-lg-block">
                <div class="col-3 m-0 p-0 mt-5">
                    
                </div>
                <div class="col-9 m-0 p-0 mt-5">
                    <div class="col align-self-center">
                        <div class="carusel-container-title-left m-0 p-0">
                            <div class="carusel-container-title-inner-left row justify-content-center align-items-center m-0 p-0">
                                <div class="row justify-content-around p-0">
                                    <p class="col-6 carusel-title-left m-0 p-0 ps-2">TALLERES</p>
                                    <div class="col-3 offset-md-3">
                                        <div class="row justify-content-end align-items-center m-0 pt-1">
                                            <div class="col-container circle-pink m-1 p-0"></div>
                                            <div class="col-container circle-green m-1 p-0"></div>
                                            <div class="col-container circle-yellow m-1 me-0 p-0"></div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="carusel-container-left m-0 p-0">
                            <div class="carusel-container-inner-left row justify-content-center align-items-center m-0 p-0">
                                @if(count($allEvents) > 0)
                                <div id="myCarousel" class="carousel slide" data-ride="carousel">
                                    @php
                                        $counter = 0;
                                    @endphp
                                    
                                    <div class="carousel-inner carousel-container mx-auto" style="width:60%;">
                                        @foreach ($allEvents as $event)
                                            @if($event->typeEvent != "Master Class" && $event->typeEvent != "Conferencia")
                                                <div class="item @if($counter < 1) active @endif" style="width:100%;">
                                                    <img src="{{ asset('storage/eventImages/'.$event->image) }}" class="img-card-taller-expo carousel-image img-fluid m-0 p-0">
                                                    <p class="text-card-taller-expo-text mt-2">{{$event->eventName}}</p> 
                                                </div>
                                                @php
                                                    $counter++;
                                                @endphp
                                            @endif
                                        @endforeach
                                    </div>

                                    <a class="carousel-control-prev" href="#myCarousel" data-slide="prev">
                                        <svg xmlns="http://www.w3.org/2000/svg" width="80" height="150" viewBox="0 0 50 80" fill="none">
                                            <text x="10" y="60" font-family="'Bebas Neue', sans-serif" font-size="70" fill="transparent" stroke="#BBE1C2" stroke-width="0.2rem">
                                                &lt;
                                            </text>
                                        </svg>
                                    </a>
                                    <a class="carousel-control-next" href="#myCarousel" data-slide="next">
                                    <svg xmlns="http://www.w3.org/2000/svg" width="80" height="150" viewBox="0 0 50 80" fill="none">
                                            <text x="10" y="60" font-family="'Bebas Neue', sans-serif" font-size="70" fill="transparent" stroke="#E1BBD4" stroke-width="0.2rem">
                                                &gt;
                                            </text>
                                        </svg>
                                    </a>
                                </div>

                                @endif
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </center>

        

    </div>

    <script>
        $(document).ready(function(){
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
                customPaging: function(slider, i) {
                    return '<button class="custom-dot"></button>';
                },
            });
        });

        function ampliarImagen(_id){
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

        const fechaObjetivo = new Date(2025, 5, 7); // Meses en JavaScript son de 0 a 11, así que 8 representa septiembre.

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
        
        if(diasFaltantes <= 0 && horas <= 0 && minutos <= 0 && segundos <= 0)
        {
            var timerA = document.getElementById('timer-expo');
            timerA.innerHTML = "<div class='Timer-clock-style' id='Timer-clock'><p>¡LA EXPO HA COMENZADO!</p></div>";
            console.log("aaa");
        }
        else
        {
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