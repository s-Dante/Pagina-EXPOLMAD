@extends('Templates/headerStruct')

@section('content')

<link rel="stylesheet" href="{{ asset('css/admin.css') }}">
<link rel="stylesheet" href="{{ asset('css/adminEvent.css') }}"> <!-- importante para poner el borderContainer -->

<header class="header-index row justify-content-center mx-auto" id="header-index">
    <div style="position: relative; width: 100%; height:70%; padding: 0px;">
        <video autoplay loop muted class="header-gif-expo img-fluid" id="video-header">
            <source src="{{asset('images/expolmad.mp4')}}" type="video/mp4">
            Tu navegador no admite el elemento de video.
        </video>
    </div>

    <div class="row align-items-center justify-content-center"
        style="margin-left: auto; margin-right: auto; position: relative; top: -60%">
        <div class="col-4 w-auto p-0 center">
            <img src="{{asset('images/LOGOEXPO2.png')}}" class="header-logo-lmad-expo img-fluid"
                onclick="window.location.href = '/'">
        </div>
        <div class="col-8 center w-auto">
            <div class="h1 h-30 my-0 text-center" style="font-weight: bold; color: #ffffff;">Mapa</div>
        </div>
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

<div class="BodyContainer col p-3 min-vh-100 w-50 backgroundImg tab-pan" style="height: fit-content;">

    <div class="d-flex text-center">
        <h2 style="d-md-none; font-weight: bold;" class="mx-auto">Centro de Internacionalización</h2>
    </div>

    <!--
            <div class="row mx-auto d-flex align-items-center">
                <div class="col-sm-3 col-lg-6 mb-1 text-center">
                    <img src="{{asset('images/EXPOLOGOinclinado.png')}}" class="header-logo-lmad-expo img-fluid">
                </div>
                <div class="MapCIcarrusel-header col-sm-9 col-lg-3 mb-1 text-center">
                    <h2 style="d-md-none; font-weight: bold;">Centro de Internacionalización</h2>
                </div>
            </div>
            -->

    <div class="carouselContainer col-12">
        <div id="carouselExampleControls" class="carousel slide" data-bs-ride="carousel"
            style="padding-top: 0px; padding-bottom: 0px;">
            <div class="carousel-inner d-flex justify-content-start" style="padding-top: 0px;">
                @foreach ($renders as $index => $chunk)
                    <div class="carousel-item @if($index == 0) active @endif"
                        style="padding-top: 0px; padding-bottom: 0px;">
                        <div class="row gapCarousel" style="padding-top: 0px; padding-bottom: 0px;">
                            <div class="d-flex justify-content-between eventCard"
                                style="padding-top: 0px; padding-bottom: 0px;">
                                <div class="mx-auto" style="padding-top: 0px; padding-bottom: 0px;">
                                    <h4>{{$chunk['info']}}</h4>
                                </div>
                            </div>
                            <div class="d-flex">
                                <img src="{{ $chunk['render'] }}" style="width: 70%; height: auto;" class="mx-auto"> </img>
                            </div>
                        </div>
                    </div>
                @endforeach
            </div>
            <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleControls"
                data-bs-slide="prev">
                <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                <span class="visually-hidden">Previous</span>
            </button>
            <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleControls"
                data-bs-slide="next">
                <span class="carousel-control-next-icon" aria-hidden="true"></span>
                <span class="visually-hidden">Next</span>
            </button>
        </div>
    </div>

    <form action="{{route('MapCI.index')}}">
        <div class="col my-6 d-flex">
            <button type="submit" class="col-md-4 col-sm-12 btn btn-primary my-4 mx-auto">
                <img src="{{asset('images/pointer.png')}}"> </img>
                Mapa de distribución de proyectos</button>
        </div>
    </form>

    <!--
            <div class="carouselContainer col-12">
                <div class="carouselExampleControls" class="carousel slide" data-bs-ride="carousel" style="padding-top: 0px;">
                    <div class="carousel-inner d-flex jusify-content-start">
                            @foreach ($renders as $index => $chunk)
                                <div class="carouselExampleControls carousel-item @if($index==0) active @endif" style="padding-top: 0px; padding-bottom: 0px;">
                                    <div class="row gapCarousel" style="padding-top: 0px; padding-bottom: 0px;">
                                        <div class="d-flex justify-content-between eventCard" style="padding-top: 0px; padding-bottom: 0px;">
                                            <div class="col-sm-12 col-md-3 col-lg-2 mb-2 row justify-content-between eventCard">
                                                <div class="h4">{{$chunk['info']}}</div>
                                            </div>
                                        </div>
                                        <div class="d-flex">
                                            <img src="{{ $chunk['render'] }}" style="width: 50%; height: auto;" class="mx-auto"> </img>
                                        </div>
                                    </div>
                                </div>
                            @endforeach
                        </div>
                        <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleControls"  data-bs-slide="prev">
                            <span class="carousel-control-prev-icon" aria-hidden="true" style="height: 32px;width: 32px;margin-top: 0px;"></span>
                            <span class="visually-hidden"></span>
                        </button>
                        <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleControls"  data-bs-slide="next">
                            <span class="carousel-control-next-icon" aria-hidden="true" style="height: 32px;width: 32px;margin-top: 0px;"></span>
                            <span class="visually-hidden"></span>
                        </button>
                    </div>
                </div>
            </div>
            
        </div>
        -->

</div>
</div>

@endsection