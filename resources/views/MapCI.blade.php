@extends ('Templates/headerStruct')

@section('content')

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<link rel="stylesheet" href="{{ asset('css/admin.css') }}">
<link rel="stylesheet" href="{{ asset('css/adminEvent.css')}}">


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
            <div class="h1 h-30 my-0 text-center" style="font-weight: bold; color: #ffffff;">Mapa de distribución de
                proyectos</div>
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

<div class="BodyContainer p-5">
    <div class="row justify-content-center">

        <div class="row col-md-6 p-0">
            <div class="col-md-7 mx-auto w-auto p-0 center">
                <img src="{{asset('images/MAPACI-.png')}}" id="displayedMapImage" class="img-fluid">
            </div>
            <form class="d-flex" action="{{route('MapCIcarrusel.index')}}">
                <button type="submit" class="btn mx-auto my-auto" style="white-space: wrap; overflow: hidden;"
                    id="mapCI-Btn">
                    <img src="{{asset('images/pointer.png')}}" />
                    Mapa del Centro de Internacionalización
                </button>
            </form>
        </div>

        <div class="col-md-3 row justify-content-center d-flex mx-2 p-0">

            <div class="container div-colorfull column-list-form mx-5" style="width: 30rem;">
                <div class="container w-auto justify-content-center my-10"
                    style="flex-direction: column; margin-bottom: 20px;">
                    <div class="MapCI-List">
                        <div class="h4 text-center" style="white-space: wrap; overflow: hidden;">
                            Áreas de exposición
                        </div>
                        <div class="radio-button-event d-flex mx-auto form-check-inline MapCI-List my-2">
                            <input class="radio-button-event-input" type="radio" name="areaOptions" id="inlineRadio1"
                                value="option1" onclick=programacionCheck() checked />
                            <label class="form-check-label my-0 mx-3" for="inlineRadio1">
                                <div class="h5 my-2">
                                    Programación
                                </div>
                            </label>
                        </div>
                        <div class="radio-button-event d-flex mx-auto form-check-inline MapCI-List my-2">
                            <input class="radio-button-event-input" type="radio" name="areaOptions" id="inlineRadio2"
                                value="option2" onclick=arteCheck() />
                            <label class="form-check-label my-0 mx-3" for="inlineRadio2">
                                <div class="h5 my-2">
                                    Arte
                                </div>
                            </label>
                        </div>
                        <div class="radio-button-event d-flex mx-auto form-check-inline MapCI-List my-2">
                            <input class="radio-button-event-input" type="radio" name="areaOptions" id="inlineRadio3"
                                value="option3" onclick=videoCheck() />
                            <label class="form-check-label my-0 mx-3" for="inlineRadio3">
                                <div class="h5 my-2">
                                    Video
                                </div>
                            </label>
                        </div>
                        <div class="radio-button-event d-flex mx-auto form-check-inline MapCI-List my-2">
                            <input class="radio-button-event-input" type="radio" name="areaOptions" id="inlineRadio4"
                                value="option4" onclick=RVCheck() />
                            <label class="form-check-label my-0 mx-3" for="inlineRadio4">
                                <div class="h5 my-2">
                                    Realidad Virtual
                                </div>
                            </label>
                        </div>
                    </div>
                </div>
            </div>

            <div class="container div-colorfull column-list-form mx-5" style="width: 30rem;">

                <div class="container w-auto justify-content-center my-10"
                    style="flex-direction: column;margin-bottom: 20px;" id="programacionSubList">
                    <div class="MapCI-List">
                        <div class="h4 text-center">
                            Subáreas Programación
                        </div>
                        <div class="radio-button-event d-flex mx-auto form-check-inline MapCI-List my-2">
                            <input class="radio-button-event-input" type="radio" name="programacionOptions"
                                id="inlineRadio5" value="option5" />
                            <label class="form-check-label my-0 mx-3" for="inlineRadio5">
                                <div class="h5 my-2">
                                    Manejo de información y desarrollo web
                                </div>
                            </label>
                        </div>
                        <div class="radio-button-event d-flex mx-auto form-check-inline MapCI-List my-2">
                            <input class="radio-button-event-input" type="radio" name="programacionOptions"
                                id="inlineRadio6" value="option6" />
                            <label class="form-check-label my-0 mx-3" for="inlineRadio6">
                                <div class="h5 my-2">
                                    Videojuegos
                                </div>
                            </label>
                        </div>

                        <!--
                        <div class="radio-button-event d-flex mx-auto form-check-inline MapCI-List my-2">
                            <input class="radio-button-event-input" type="radio" name="programacionOptions"
                                id="inlineRadio7" value="option7" />
                            <label class="form-check-label my-0 mx-3" for="inlineRadio7">
                                <div class="h5 my-2">
                                    Desarrollo web
                                </div>
                            </label>
                        </div>
                        -->
                    </div>
                </div>

                <div class="container w-auto justify-content-center my-10"
                    style="flex-direction: column;margin-bottom: 20px;" id="arteSubList">
                    <div class="MapCI-List">
                        <div class="h4 text-center">
                            Subáreas Arte
                        </div>
                        <div class="radio-button-event d-flex mx-auto form-check-inline MapCI-List my-2">
                            <input class="radio-button-event-input" type="radio" name="arteOptions" id="inlineRadio8"
                                value="option8" />
                            <label class="form-check-label my-0 mx-3" for="inlineRadio8">
                                <div class="h5 my-2">
                                    2D
                                </div>
                            </label>
                        </div>
                        <div class="radio-button-event d-flex mx-auto form-check-inline MapCI-List my-2">
                            <input class="radio-button-event-input" type="radio" name="arteOptions" id="inlineRadio9"
                                value="option9" />
                            <label class="form-check-label my-0 mx-3" for="inlineRadio9">
                                <div class="h5 my-2">
                                    3D
                                </div>
                            </label>
                        </div>
                    </div>
                </div>

                <div class="container w-auto justify-content-center my-10"
                    style="flex-direction: column;margin-bottom: 20px;" id="videoSubList">
                    <div class="MapCI-List">
                        <div class="h4 text-center">
                            Subáreas Video
                        </div>
                        <div class="radio-button-event d-flex mx-auto form-check-inline MapCI-List my-2">
                            <input class="radio-button-event-input" type="radio" name="videoOptions" id="inlineRadio10"
                                value="option10" />
                            <label class="form-check-label my-0 mx-3" for="inlineRadio10">
                                <div class="h5 my-2">
                                    Video y FX
                                </div>
                            </label>
                        </div>
                    </div>
                </div>

                <div class="container w-auto justify-content-center my-10"
                    style="flex-direction: column;margin-bottom: 20px;" id="RVSubList">
                    <div class="MapCI-List">
                        <div class="h4 text-center">
                            Subáreas Realidad Virtual
                        </div>
                        <div class="radio-button-event d-flex mx-auto form-check-inline MapCI-List my-2">
                            <input class="radio-button-event-input" type="radio" name="RVOptions" id="inlineRadio11"
                                value="option11" />
                            <label class="form-check-label my-0  mx-3" for="inlineRadio11">
                                <div class="h5 my-2">
                                    Realidad Virtual
                                </div>
                            </label>
                        </div>
                    </div>
                </div>

            </div>

        </div>
    </div>

    <div class="mx-auto">
        <div class="tabla-header col-10 mb-1 text-left" id="tableHeaderText" style="margin-top: 20px;">
            <div class="h2">Subárea no seleccionada</div>
        </div>

        <div class="table-responsive" id="table-projects">
            <table class="table project-Table" style="text-align-last:center;" id="projectsTable">
                <thead>
                    <tr>
                        <th scope="col">Materia</th>
                        <th scope="col">Nombre del Proyecto</th>
                    </tr>
                </thead>
                <tbody>
                    @foreach ($projects as $project)
                        <tr style="text-align: none;">
                            <td style="align-items: left;">
                                <div>{{ $project['subject'] }}</div>
                            </td> <!-- Accede al campo de la materia -->
                            <td style="align-items: right;">
                                <div>{{ $project['nameProject'] }}</div>
                            </td> <!-- Accede al campo del nombre del proyecto -->
                        </tr>
                    @endforeach
                </tbody>
            </table>
        </div>

        <div class="footer-card" onclick="window.location.href = '{{route('expo.index')}}'">
            <p class="footer-card-text">EXPO LMAD 2024 - <i>CRONOGRAMA</i></p>
            <img width="17" height="17" src="{{asset('images/icon-arrow-down.png')}}" alt="expand-arrow--v2"
                class="arrow-footer" />
        </div>

    </div>

</div>

</div>
</div>

<script>

    $(document).ready(function () {
        // Función para actualizar dinámicamente el contenido de la tabla y el texto arriba de la tabla
        function updateTableContent() {
            // Obtener el valor seleccionado de los radio buttons del segundo grupo (subáreas)
            var selectedOption = $('input[name="programacionOptions"]:checked').val() ||
                $('input[name="arteOptions"]:checked').val() ||
                $('input[name="videoOptions"]:checked').val() ||
                $('input[name="RVOptions"]:checked').val();

            // Realizar una solicitud AJAX para obtener los datos relevantes
            $.ajax({
                type: 'GET',
                url: '{{ route("obtener-datos") }}', // Utiliza la ruta definida en web.php
                data: { selectedOption: selectedOption },
                success: function (response) {
                    console.log('Respuesta AJAX:', response);
                    console.log('Contenido de la tabla:', response.tableContent);
                    $('#tableHeaderText').html('<p>' + response.tableHeaderText + '</p>');

                    // Reconstruir el HTML de la tabla con los nuevos proyectos
                    var tableBody = '';
                    $.each(response.tableContent, function (index, project) {
                        tableBody += '<tr>';
                        tableBody += '<td>' + project.subject + '</td>';
                        tableBody += '<td>' + project.nameProject + '</td>';
                        tableBody += '</tr>';
                    });

                    // Reemplazar el contenido de la tabla con el nuevo HTML
                    $('#projectsTable tbody').html(tableBody);

                    // Mensaje de depuración para verificar el HTML actualizado
                    console.log('HTML actualizado:', $('#projectTable').html());
                    console.log('HTML actualizado:', $('#projectsTable').html());
                },
                error: function (xhr, status, error) {
                    console.error('Error en la solicitud AJAX:', error); // Imprimir cualquier error en la consola
                }
            });
        }

        // Función para desmarcar los radio buttons del segundo grupo (subáreas)
        function uncheckSecondGroupRadioButtons() {
            $('input[name="programacionOptions"]').prop('checked', false);
            $('input[name="arteOptions"]').prop('checked', false);
            $('input[name="videoOptions"]').prop('checked', false);
            $('input[name="RVOptions"]').prop('checked', false);
        }

        // Llamar a la función al inicio y cuando cambie la selección de los radio buttons del primer grupo (áreas)
        updateTableContent();
        $('input[name="areaOptions"]').on('change', function () {
            uncheckSecondGroupRadioButtons(); // Llama a la función para desmarcar los radio buttons del segundo grupo (subáreas)
        });
        $('input[name^="programacionOptions"], input[name^="arteOptions"], input[name^="videoOptions"], input[name^="RVOptions"]').on('change', function () {
            updateTableContent();
        });
        function changeImage(val) {
            const selectedOption = val; // Obtener el valor del radio button de área seleccionada
            let imageUrl = ''; // URL de la imagen a mostrar

            // Verificar qué radio button se ha seleccionado y asignar la URL de la imagen correspondiente
            switch (selectedOption) {
                case 'option1':
                    imageUrl = '{{asset("images/MAPACI-0.png")}}';
                    break;
                case 'option2':
                    imageUrl = '{{asset("images/MAPACI-1.png")}}';
                    break;
                case 'option3':
                    imageUrl = '{{asset("images/MAPACI-2.png")}}';
                    break;
                case 'option4':
                    imageUrl = '{{asset("images/MAPACI-3.png")}}';
                    break;
                case 'option5':
                    imageUrl = '{{asset("images/MAPACI-0.png")}}';
                    break;
                case 'option6':
                    imageUrl = '{{asset("images/MAPACI-1.png")}}';
                    break;
                case 'option7':
                    imageUrl = '{{asset("images/MAPACI-1.png")}}';
                    break;
                case 'option8':
                    imageUrl = '{{asset("images/MAPACI-2.png")}}';
                    break;
                case 'option9':
                    imageUrl = '{{asset("images/MAPACI-3.png")}}';
                    break;
                case 'option10':
                    imageUrl = '{{asset("images/MAPACI-4.png")}}';
                    break;
                case 'option11':
                    imageUrl = '{{asset("images/MAPACI-5.png")}}';
                    break;
                default: imageUrl = '{{asset("images/MAPACI-.png")}}';
                    break;
            }

            // Cambiar la imagen
            $('#displayedMapImage').attr('src', imageUrl);
        }

        // Agregar event listener al cambio de los radio buttons de áreas
        $('input[name="programacionOptions"]').on('change', function () {
            changeImage($('input[name="programacionOptions"]:checked').val());
        });
        $('input[name="arteOptions"]').on('change', function () {
            changeImage($('input[name="arteOptions"]:checked').val());
        });
        $('input[name="videoOptions"]').on('change', function () {
            changeImage($('input[name="videoOptions"]:checked').val());
        });
        $('input[name="RVOptions"]').on('change', function () {
            changeImage($('input[name="RVOptions"]:checked').val());
        });


        // Llamar a la función para establecer la imagen inicial al cargar la página
        changeImage();
    });

    /*
    document.addEventListener('DOMContentLoaded', funciton()){
            $('.MapCI-List').hide();
            $('.videoSubList').hide();
            $('.RVSubList').hide();
    }
    */

</script>