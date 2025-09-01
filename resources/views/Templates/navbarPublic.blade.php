<navbarPublic>

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

</navbarPublic>