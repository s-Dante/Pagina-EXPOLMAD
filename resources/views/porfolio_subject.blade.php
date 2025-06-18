@extends('Templates/headerStruct')

@section('content')
    
<header class="header-index row justify-content-center mx-auto" id="header-index" style="">
    <div style="position: relative; width: 100%; height:70%;">
        <video autoplay loop muted class="header-gif-expo img-fluid" id="video-header">
            <source src="{{asset('images/expolmad.mp4')}}" type="video/mp4">
            Tu navegador no admite el elemento de video.
        </video>
    </div>

    <div style="width: 50%; height: 70%;">
        <img src="{{asset('images/LMAD_BLOOM.png')}}" class="header-logo-lmad img-fluid" height="270" width="522"
            onclick="window.location.href = '{{ url('/') }}'">
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



<div class="portfolio-body" id="portfolio-body" style="height: fit-content">
    <div class="title-portfolio">
        <p class="porfolio-text">{{$title}}</p>
        <!--hr class="hr-gradient" /-->
        <center><input type="text" disabled class="hr-gradient"></center>
        <div class="row justify-content-center mx-auto" style="margin-bottom: 0.1rem;">
            <div class="col-sm-12 mb-5 d-flex align-items-center justify-content-center">
                <button class="portfolio-btn" data-category="todos">Todos</button>
                <button class="portfolio-btn" data-category="arte">Arte</button>
                <button class="portfolio-btn" data-category="videojuegos">Videojuegos</button>
                <button class="portfolio-btn" data-category="rv">Realidad virtual</button>
                <button class="portfolio-btn" data-category="programacion">Programación</button>
            </div>
        </div>
    </div>
    @php
        $style_card = "";
        $style_card_text = "";
        $style_card_text_shadow = "";
        $style_card_img = "";
        switch ($title) {
            case 'Programaci贸n':
                $style_card = "card-progra-portfolio";
                $style_card_text = "card-progra-text-portfolio";
                $style_card_text_shadow = "card-progra-shadow-text-portfolio";
                $style_card_img = "card-progra-portfolio-img img-fluid";
                break;
            case 'Arte':
                $style_card = "card-arte-portfolio";
                $style_card_text = "card-arte-text-portfolio";
                $style_card_text_shadow = "card-arte-shadow-text-portfolio";
                $style_card_img = "card-arte-portfolio-img img-fluid";
                break;
            case 'Realidad virtual':
                $style_card = "card-rv-portfolio";
                $style_card_text = "card-rv-text-portfolio";
                $style_card_text_shadow = "card-rv-shadow-text-portfolio";
                $style_card_img = "card-rv-portfolio-img img-fluid";
                break;
            case 'Videojuegos':
                $style_card = "card-portfolio";
                $style_card_text = "card-text-portfolio";
                $style_card_text_shadow = "card-shadow-text-portfolio";
                $style_card_img = "card-portfolio-img img-fluid";
                break;
        }
       
    @endphp
        <div class="row justify-content-center mx-auto" id="project-container" style="width: 100%; margin-bottom:3rem">
            @foreach ($projectdataFinal as $project)
                <div class="col-sm-5 mb-5 d-flex align-items-center justify-content-center">
                    <div class="card-portfolio-container" onclick="window.location.href='{{ route('Portfolio.show', ['Portfolio' => $project->id]) }}'">
                        <div class="card-portfolio" style="background-image: url({{ asset('storage/eventImages/'.$project->imagen_url) }});">
                            <div class="card-portfolio-filter d-flex align-content-end flex-wrap">
                                <p class="card-text-portfolio">{{ $project->subject }}</p>
                                <p class="card-portfolio-subtittle">{{ $project->nameProject }}</p>
                            </div>
                        </div>
                    </div>
                </div>
            @endforeach
        </div>

            <div class="footer-card"  onclick="window.location.href = '{{route('expo.index')}}'">
                <p class="footer-card-text" >EXPO LMAD 2024 - <i>CRONOGRAMA</i></p>
                <img width="17" height="17" src="{{asset('images/icon-arrow-down.png')}}" alt="expand-arrow--v2" class="arrow-footer"/>
            </div>

</div>

     <!--script>
        const image = document.querySelector('.card-proyect-portfolio');
        const shadowBox = document.querySelector('.card-subject-portfolio');
        const shadowText = document.querySelector('.card-proyect-portfolio-text');

        image.onload = function () {
            const canvas = document.createElement('canvas');
            const context = canvas.getContext('2d');
            canvas.width = image.width;
            canvas.height = image.height;
            context.drawImage(image, 0, 0, canvas.width, canvas.height);

            const imageData = context.getImageData(0, 0, canvas.width, canvas.height).data;

            let maxColor = 0;
            for (let i = 0; i < imageData.length; i += 4) {
                const brightness = (imageData[i] + imageData[i + 1] + imageData[i + 2]) / 3;
                maxColor = Math.max(maxColor, brightness);
            }

            const shadowColor = `rgba(${maxColor}, ${maxColor}, ${maxColor}, 0.5)`;
            shadowBox.style.boxShadow = `0 0 20px ${shadowColor}`;
            shadowText.style.boxShadow = `0 0 20px ${shadowColor}`;
            shadowText.style.color = `0 0 20px ${shadowColor}`;
        };
    </script--->

<script>
    document.querySelectorAll('.portfolio-btn').forEach(button => {
        button.addEventListener('click', function() {
            const category = this.dataset.category;

            fetch(`/filtrar-proyectos/${category}`)
                .then(response => response.json())
                .then(data => {
                    const container = document.getElementById('project-container');
                    container.innerHTML = ''; // Limpiar los proyectos

                    if (data.length === 0) {
                        container.innerHTML = '<p class="text-center">No hay proyectos en esta categoría.</p>';
                        return;
                    }

                    data.forEach(project => {
                        const card = `
                            <div class="col-sm-5 mb-5 d-flex align-items-center justify-content-center">
                                <div class="card-portfolio-container" onclick="window.location.href='/Portfolio/${project.id}'">
                                    <div class="card-portfolio" style="background-image: url('/storage/eventImages/${project.imagen_url}');">
                                        <div class="card-portfolio-filter d-flex align-content-end flex-wrap">
                                            <p class="card-text-portfolio">${project.subject}</p>
                                            <p class="card-portfolio-subtittle">${project.nameProject}</p>
                                        </div>
                                    </div>
                                </div>
                            </div>`;
                        container.innerHTML += card;
                    });
                })
                .catch(error => console.error('Error cargando proyectos:', error));
        });
    });
</script>
    
@endsection