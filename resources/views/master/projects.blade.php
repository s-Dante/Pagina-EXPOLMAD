
<!DOCTYPE html>
<html lang="en">

@if(session()->has('status'))

    <script type="text/javascript">
        @if(session()->get('status') == "Cambios guardados")
            document.addEventListener("DOMContentLoaded", function () {
                Swal.fire({
                    position: 'center',
                    icon: 'success',
                    iconColor: '#0de4fe',
                    title: `{{ session()->get('status') }}`,
                    showConfirmButton: false,
                    timer: 2500
                })
            });
        @endif

        @if(session()->get('status') == "El proyecto ha sido devuelto")
            document.addEventListener("DOMContentLoaded", function () {
                Swal.fire({
                    position: 'center',
                    icon: 'success',
                    iconColor: '#0de4fe',
                    title: `{{ session()->get('status') }}`,
                    showConfirmButton: false,
                    timer: 2500
                })
            });
        @endif

        @if(session()->get('status') == "Debe proporcionarse una descripción")
            document.addEventListener("DOMContentLoaded", function () {
                Swal.fire({
                    position: 'center',
                    icon: 'error',
                    iconColor: '#a70202',
                    title: `{{ session()->get('status') }}`,
                    showConfirmButton: false,
                    timer: 2500
                })
            });
        @endif

        @if(session()->get('status') == "No se admiten más de 500 caracteres para la descripción del proyecto")
            document.addEventListener("DOMContentLoaded", function () {
                Swal.fire({
                    position: 'center',
                    icon: 'error',
                    iconColor: '#a70202',
                    title: `{{ session()->get('status') }}`,
                    showConfirmButton: false,
                    timer: 2500
                })
            });
        @endif

        @if(session()->get('status') == "No se admiten más de 500 caracteres para en el mensaje")
            document.addEventListener("DOMContentLoaded", function () {
                Swal.fire({
                    position: 'center',
                    icon: 'error',
                    iconColor: '#a70202',
                    title: `{{ session()->get('status') }}`,
                    showConfirmButton: false,
                    timer: 2500
                })
            });
        @endif
    </script>

    @php
        header("Cache-Control: no-store, no-cache, must-revalidate, max-age=0");
        header("Cache-Control: post-check=0, pre-check=0", false);
        header("Pragma: no-cache");
    @endphp
@endif

@php
function semestreToNombre($numero) {
    $nombres = [
        1 => 'PRIMERO', 2 => 'SEGUNDO', 3 => 'TERCERO', 4 => 'CUARTO',
        5 => 'QUINTO', 6 => 'SEXTO', 7 => 'SÉPTIMO', 8 => 'OCTAVO',
        9 => 'NOVENO', 10 => 'DÉCIMO'
    ];
    return $nombres[$numero] ?? $numero;
}
@endphp


<head>
    @livewireStyles
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="Content-Security-Policy" content="upgrade-insecure-requests">

    <title>EXPO LMAD 2023</title>
    <link rel="icon" href="{{asset('images/ICON.png')}}">
    <!-- CSS only -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.2/font/bootstrap-icons.css">
    <!-- <link rel="stylesheet" href="{{ asset('css/staffEvent.css') }}">
    <link rel="stylesheet" href="{{ asset('css/staffAttendanceEvent.css') }}">
    <link rel="stylesheet" href="{{ asset('css/staffAttendanceExpositor.css') }}">-->
    <link rel="stylesheet" href="{{ asset('css/admin.css') }}">
    <link rel="stylesheet" href="{{ asset('css/adminEvent.css') }}">
    <link rel="stylesheet" href="{{ asset('css/master.css') }}">
    <!-- JavaScript Bundle with Popper -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4"
        crossorigin="anonymous"></script>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.2/font/bootstrap-icons.css">
    <script src="https://unpkg.com/html5-qrcode@2.0.9/dist/html5-qrcode.min.js"></script>
    <script src="{{ asset('js/staffAttendanceEvent.js') }}"></script>
    <script src="{{ asset('js/staffAttendanceCompany.js') }}"></script>
    <script src="//cdn.jsdelivr.net/npm/sweetalert2@11"></script>
    <link href="//cdn.jsdelivr.net/npm/@sweetalert2/theme-dark@4/dark.css" rel="stylesheet">

    <!--Fuentes de letras-->
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link
        href="https://fonts.googleapis.com/css2?family=Antonio:wght@600&family=Barlow+Condensed&family=Be+Vietnam+Pro:wght@400;500;700&family=Bruno+Ace&family=Comfortaa:wght@400;444&family=Domine:wght@400;500;700&family=Inter:wght@400;700;800&family=Kaushan+Script&family=Montserrat:wght@600;700&family=Nanum+Myeongjo:wght@700;800&family=Nunito&family=Oswald:wght@700&family=Permanent+Marker&family=Shantell+Sans:wght@300&family=Space+Mono:wght@400;700&family=Tilt+Warp&display=swap"
        rel="stylesheet">

    <script class="jsbin" src="http://ajax.googleapis.com/ajax/libs/jquery/1/jquery.min.js"></script>
    <script class="jsbin" src="http://ajax.googleapis.com/ajax/libs/jqueryui/1.8.0/jquery-ui.min.js"></script>


</head>

<body
    style="background-repeat: no-repeat; background-size: cover; background-position:center; background-attachment: fixed;">

    <div class="container-fluid">
        <div class="row">
            <div class="col-sm-auto bg-dark sticky-top free-space">
                <div class="d-flex flex-sm-column flex-row flex-nowrap bg-dark align-items-center sticky-top">
                    <a href="/" class="d-block py-3 px-1 link-dark text-decoration-none" title=""
                        data-bs-toggle="tooltip" data-bs-placement="right" data-bs-original-title="Icon-only">
                        <img class="logo-img" src="{{ asset('images/LOGO.png') }}" height="30">
                    </a>
                    <ul
                        class="nav nav-pills nav-flush flex-sm-column flex-row flex-nowrap mb-auto mx-auto text-center align-items-center ov">

                        <li>
                            <a href="{{ route('adminInicio.index') }}" class="nav-link py-3 px-md-2 px-1" title=""
                                data-bs-toggle="tooltip" data-bs-placement="right" data-bs-original-title="Customers">
                                <i class="iconNav">
                                    <img src="{{ asset('images/NavHome.png') }}" alt="Inicio Expo LMAD" />
                                    <p class="d-none d-sm-block nav-txt">Inicio</p>
                                </i>
                            </a>
                        </li>

                        <li>
                            <a href="{{ route('adminRegistroMaestros.index') }}" class="nav-link py-3 px-md-2 px-1" title=""
                                data-bs-toggle="tooltip" data-bs-placement="right" data-bs-original-title="Home">
                                <i class="iconNav">
                                    <img src="{{ asset('images/NavDocente.png') }}" alt="Eventos Expo LMAD" />
                                    <p class="d-none d-sm-block nav-txt">Docente</p>
                                </i>
                            </a>
                        </li>

                        <li>
                            <a href="{{route('master.index')}}" class="nav-link py-3 px-md-2 px-1" title=""
                                data-bs-toggle="tooltip" data-bs-placement="right" data-bs-original-title="Home">
                                <i class="iconNav">
                                    <img src="{{ asset('images/NavProyectos.png') }}" alt="Visitantes Expo LMAD" />
                                    <p class="d-none d-sm-block nav-txt">Proyectos</p>
                                </i>
                            </a>
                        </li>

                        <li>
                            <div class="more-space"></div>
                        </li>

                        <li>
                            <div class="more-space"></div>
                        </li>

                        <li>
                            <a href="{{ route('cerrarSesion') }}" class="nav-link py-3 px-md-2 px-1" title=""
                                data-bs-toggle="tooltip" data-bs-placement="right" data-bs-original-title="Customers">
                                <i class="iconNav">
                                    <img src="{{ asset('images/NavLogout.png') }}" alt="Staff Expo LMAD" />
                                    <p class="d-none d-sm-block nav-txt">Salir</p>
                                </i>
                            </a>
                        </li>

                    </ul>
                </div>
            </div>

            <div class="col-sm p-3 min-vh-100 backgroundImg tab-pane dash-w">
                <div class="container-fluid">
                    <div class="container-fluid justify-content-around">
                        <div class="row headers">
                            <h1 class="titlePage">Revisión de proyecto</h1>
                            <hr id="line">
                        </div>
                        <form action="{{ route('projects.store') }}" method="POST" onsubmit="false" class="border-gradient-radius" style="padding-top: 3.5rem;">
                            @csrf
                            <input type="hidden" name="action" id="action" value="">
                            
                            <h5 class="projectTitle">{{ $project->nameProject }}</h5>
                            <input type="hidden" name="projectID" value="{{ $project->id }}">
                            <input type="hidden" name="projectName" id="hiddenProjectName" value="{{ $project->nameProject }}">
                            <h3 class="remarkText-title">{{ $project->subject }}</h3>

                            <div class="row" style="justify-content: center;">

                                <div class="col-lg-8">

                                    <div class="row">

                                        <div class="col-lg">
                                            <div class="row">
                                                <p class="remarkText text-lg-end col-lg-4">ID DEL PROYECTO:</p>
                                                <p class="projectData text-lg-start col-lg-1" id="projectID">{{ $project->id }}</p>

                                                <p class="remarkText text-lg-end col-lg-2">SEMESTRE:</p>
                                                <p class="projectData text-lg-start col-lg-2">{{ strtoupper(semestreToNombre($project->semester)) }}</p>
                                            </div>

                                            <div class="row">
                                                <p class="remarkText text-lg-end col-lg-4">MAESTRO:</p>
                                                <p class="projectData text-lg-start col-lg-2"> {{ $token->teacher->fullName ?? 'No definido' }}</p>
                                            </div>

                                            <div class="row" style="margin-top: 3%;">
                                                <p class="remarkText text-lg-end col-lg-4">ALUMNOS: </p>
                                                    <table class="simpleTable col-lg-6" style="margin-left: 10px; margin-top: 0;">
                                                        <tbody>
                                                            @foreach($projectStudents as $projectStudent)
                                                                <tr>
                                                                    <td class="projectData text-start">{{ $projectStudent->studentData->fullName ?? 'Desconocido' }}</td>
                                                                    <td class="projectData" style="padding-left: 10px;">{{ $projectStudent->studentData->enrollment ?? '---' }}</td>
                                                                </tr>
                                                            @endforeach
                                                        </tbody>
                                                    </table>
                                            </div>

                                            <div class="row" style="margin-top: 4%;">
                                                <p class="remarkText text-lg-end col-lg-4">VIDEO PROMOCIONAL:</p>
                                                <p class="projectData text-lg-start col-lg-6" style="margin-bottom: 2%;" id="videoProject">{{ $projectData->video_url ?? 'No disponible' }}</p>
                                                <button id="button-coppy-video" class="button-coppy col-1 mx-auto"><img src="{{ asset('images/iconCoppy.svg') }}"></button>
                                            </div>

                                            <div class="row" style="margin-top: 2%;">
                                                <p class="remarkText text-lg-end col-lg-4">ENLACE A PROYECTO:</p>
                                                <p class="projectData text-lg-start col-lg-6" style="margin-bottom: 2%;" id="fileProject">{{ $projectData->drive_url ?? 'No disponible' }}</p>
                                                <button id="button-coppy-file" class="button-coppy col-1 mx-auto"><img src="{{ asset('images/iconCoppy.svg') }}"></button>
                                            </div>

                                            <div class="row" style="margin-top: 2%;">
                                                <p class="remarkText text-lg-end col-lg-4">DESCRIPCIÓN:</p>
                                                <p class="projectData text-lg-start col-lg-6" id="descriptionProject" > {{ $projectData->description ?? 'Sin descripción' }} </p>
                                                
                                                <div class="col-lg-6" style="margin: none; padding: 0; justify-content: center;">
                                                    <textarea style="width: 100%; height: 13rem;" name="editDescription" id="editDescription" class="input-text d-none"> {{ $projectData->description ?? '' }}</textarea>
                                                </div>
                                            </div>

                                        </div>


                                    
                                    </div>


                                    
                                </div>
                                
                                <div class="col-lg-3" style="margin-top: 5%; justify-content: center;">
                                    <img src="{{ asset('storage/eventImages/' . $projectData->imagen_url) }}" alt="Imagen del proyecto" 
                                        class="img-fluid"
                                        style="width: 25rem; display: block; margin: auto;">
                                </div>

                                <div class="d-none" style="padding-right: 10%; padding-left: 10%;" id="div-ErrorsInfo">
                                    <hr id="line" style="margin-top: 3%; margin-bottom: 1%;">
                                    <p class="projectInfo text-lg-start">Mensaje con las correcciones solicitadas al alumno para su aceptación en el CONGRESO LMAD:</p>
                                    <textarea name="msgEdit" id="msgEdit" class="input-text"></textarea>
                                </div>

                                <div class="buttonsContainer row" style="margin-top: 1.5rem;">
                                    <div class="col-md-1 col-lg-3"></div>
                                        <div class="col-md-5 col-lg-3 buttoncontainer" id="div-EditDescription">
                                            <button class="col d-flex align-items-center justify-content-center" id="btn-EditDescription">
                                                <img style="width: 1.9rem; margin-right: .5rem" src="{{ asset('images/iconEdit.svg') }}">    
                                                <h3 class="bttnText">Editar descripción</h3>
                                            </button>
                                        </div>
                                        <div class="col-md-5 col-lg-3 buttoncontainer d-none" id="div-SaveChanges" style="margin-bottom: 3%">
                                            <button class="col" id="btn-SaveChanges" onclick="setAction('saveDescription')"><h3 class="bttnText">Guardar Cambios</h3></button>
                                        </div>
                                        <div class="col-md-5 col-lg-3 buttoncontainer d-none" id="div-ReturnProject" style="margin-bottom: 3%">
                                            <button class="col" id="btn-ReturnProject" onclick="setAction('returnProject')"><h3 class="bttnText">Devolver proyecto</h3></button>
                                        </div>
                                        <div class="col-md-5 col-lg-3 buttoncontainer" id="div-Back">
                                            <button class="col" id="btn-Back" onclick="setAction('back')"><h3 class="bttnText">Regresar</h3></button>
                                        </div>
                                        <div class="col-md-5 col-lg-3 buttoncontainer d-none" id="div-BackA" style="margin-bottom: 3%">
                                            <button class="col" id="btn-BackA"><h3 class="bttnText">Regresar</h3></button>
                                        </div>
                                        <div class="col-md-5 col-lg-3 buttoncontainer d-none" id="div-BackB" style="margin-bottom: 3%">
                                            <button class="col" id="btn-BackB"><h3 class="bttnText">Regresar</h3></button>
                                        </div>
                                    <div class="col-md-1 col-lg-3"></div>
                                </div>

                                <div class="col-lg-10 buttonsContainer row justify-content-center" style="margin-top: 2rem; margin-bottom: 5%;" id="buttonsContainer">
                                        <div class="col buttoncontainer">
                                            <button class="col d-flex align-items-center justify-content-center"
                                             id="btn-Accept" onclick="setAction('accepted')">
                                                <img style="width: 1.9rem; margin-right: .5rem" src="{{ asset('images/iconAccept.svg') }}">    
                                                <h3 class="bttnText">Aceptar proyecto</h3>
                                            </button>
                                        </div>
                                        <div class="col buttoncontainer">
                                        <button class="col d-flex align-items-center justify-content-center"
                                             id="btn-Rewind">
                                                <img style="width: 1.9rem; margin-right: .5rem" src="{{ asset('images/iconRewind.svg') }}">    
                                                <h3 class="bttnText">Devolver proyecto</h3>
                                            </button>
                                        </div>
                                        <!--
                                        <div class="col buttoncontainer">
                                            <button class="col d-flex align-items-center justify-content-center" 
                                            id="btn-Denied" onclick="setAction('denied')">
                                                <img style="width: 1.9rem; margin-right: .5rem" src="{{ asset('images/iconDenied.svg') }}">    
                                                <h3 class="bttnText">Rechazar proyecto</h3>
                                            </button>
                                        </div>
                                        -->
                                </div>

                            </div>

                        </form>

                        

                    </div>

                    <!-- Livewire Component wire-end:BoMSeULoJFHL73b3mqCp -->
                </div>

                <script>
                function setAction(actionValue) {
                    document.getElementById('action').value = actionValue;
                }
                </script>

                <script>
                    function updateAccount(id) {

                        var url = "http://127.0.0.1:8000/adminInicio/:id";
                        url = url.replace(':id', id);

                        Swal.fire({
                            title: 'Editar cuenta',
                            html:
                                `
            <form action=${url} method="post" class="text-left px-3">
                <input type="hidden" name="_method" value="PUT">                <input type="hidden" name="_token" value="MHV1IcfWKOYOfW2rflsC1xegNh1WQZzi1Kz5foUD">                <div class="my-3 d-none">
                    <label class="my-1">Matricula</label>
                    <input type="number" class="form-control" name="matricula" placeholder="Matricula" value="${id}">
                </div>
                <div class="my-3">
                    <label class="my-1">Contraseña</label>
                    <input type="password" class="form-control" name="editPassword" placeholder="Contraseña">                    
                </div>
                <div class="my-3">
                    <label class="my-1">Confirmar Contraseña</label>
                    <input type="password" class="form-control" name="confirmPassword" placeholder="Confirmar Contraseña">                    
                </div>

                <button id="confirmUpdate" hidden type="submit">Enviar</button>
            </form>
            `,
                            confirmButtonText: "Confirmar",
                            focusConfirm: false,
                            preConfirm: () => {
                                return [
                                    document.getElementById('confirmUpdate').click()
                                ]
                            }
                        })
                    }

                    Livewire.on('unlock-btn', function (filter, index) {
                        var btnAnt = document.getElementById("btn-pag-ant");
                        btnAnt.disabled = false;
                    });

                    Livewire.on('lock-btn', function (filter, index) {
                        var btnAnt = document.getElementById("btn-pag-sig");
                        btnAnt.disabled = true;
                    });

                    function confirmDialog(triggerBtnId) {
                        Swal.fire({
                            title: '¿Confirmar cambios?',
                            showDenyButton: false,
                            showCancelButton: true,
                            confirmButtonText: 'Aceptar',
                            cancelButtonText: 'Cancelar',
                        }).then((result) => {
                            if (result.isConfirmed) {
                                document.getElementById(triggerBtnId).click();
                            }
                        })
                    }
                    function chooseColor() {
                        const colors = ["#59ffee", "#39f6e4", "#21decb",
                            "#f04f97", "#e23a87", "#c9206c",
                            "#befa7a", "#a7ee54", "#83c932",
                            "#ffcff1", "#f5b1e2", "#de83c4",
                            "#3d3d3d", "#202020",
                            "#c53aff", "#8476ff", "#0de4fe"];
                        let len = colors.length;
                        var randIndex = Math.round(Math.random() * (len - 1));

                        var choosedColor = colors[randIndex];

                        return (choosedColor);
                    }

                    const getOrCreateLegendList = (chart, id) => {
                        const legendContainer = document.getElementById(id);
                        let listContainer = legendContainer.querySelector('div');

                        if (!listContainer) {
                            listContainer = document.createElement('div');
                            listContainer.style.display = 'flex';
                            listContainer.style.flexDirection = 'column';
                            listContainer.style.gap = '50px'
                            listContainer.style.margin = 0;
                            listContainer.style.padding = 0;
                            listContainer.classList.add("row");

                            legendContainer.appendChild(listContainer);
                        }

                        return listContainer;
                    };

                    const htmlLegendPlugin = {
                        id: 'htmlLegend',
                        afterUpdate(chart, args, options) {
                            const ul = getOrCreateLegendList(chart, args.containerID);

                            // Remove old legend items
                            while (ul.firstChild) {
                                ul.firstChild.remove();
                            }

                            // Reuse the built-in legendItems generator
                            const items = chart.options.legend.labels.generateLabels(chart);

                            items.forEach(item => {
                                const li = document.createElement('div');
                                li.style.display = 'flex';
                                li.style.justifyContent = 'space-between';
                                li.style.alignItems = 'center';
                                li.style.cursor = 'pointer';
                                li.classList.add("col-lg-12");
                                li.classList.add("col-sm-6");
                                li.classList.add("col-6");
                                li.style.textAlign = 'center';


                                li.onclick = () => {
                                    const { type } = chart.config;
                                    if (type === 'pie' || type === 'doughnut') {
                                        // Pie and doughnut charts only have a single dataset and visibility is per item
                                        chart.getDatasetMeta(0).data[item.index].hidden = !chart.getDatasetMeta(0).data[item.index].hidden
                                    } else {
                                        chart.setDatasetVisibility(item.datasetIndex, !chart.isDatasetVisible(item.datasetIndex));
                                    }
                                    chart.update();
                                };

                                // Color box
                                const boxSpan = document.createElement('span');
                                boxSpan.style.background = item.fillStyle;
                                boxSpan.style.borderColor = item.strokeStyle;
                                boxSpan.style.borderWidth = item.lineWidth + 'px';
                                boxSpan.style.display = 'inline-block';
                                boxSpan.style.height = '20px';
                                boxSpan.style.marginRight = '10px';
                                boxSpan.style.width = '20px';

                                // Text
                                const textContainer = document.createElement('a');
                                textContainer.style.color = item.fontColor;
                                textContainer.style.margin = 0;
                                textContainer.style.padding = 0;
                                textContainer.style.width = 'fit-content';
                                textContainer.style.textDecoration = item.hidden ? 'line-through' : '';

                                //numeroTEXT
                                const textContainerNumber = document.createElement('span');
                                textContainerNumber.style.color = item.fontColor;
                                textContainerNumber.style.margin = 0;
                                textContainerNumber.style.padding = 0;
                                textContainerNumber.style.width = 'fit-content';
                                textContainerNumber.style.textDecoration = item.hidden ? 'line-through' : '';
                                textContainerNumber.t

                                // Supongamos que tienes propiedades para el estilo y el valor de la barra de progreso
                                /*const item = {
                                    fillStyle: 'green',
                                    strokeStyle: 'blue',
                                    lineWidth: 2
                                };*/
                                const progressValue = 50; // Este valor debe provenir de tus datos


                                // Crear el elemento de barra de progreso
                                const progress = document.createElement('progress');
                                progress.max = '100';
                                progress.value = progressValue;

                                // Obtener el elemento .progressBar
                                const progressBar = document.querySelector('.progressBar');

                                // Agregar el cuadro y la barra de progreso al elemento .progressBar


                                const text = document.createTextNode(item.text);
                                textContainer.appendChild(text);

                                //li.appendChild(boxSpan);
                                li.appendChild(textContainer);
                                li.appendChild(progress);
                                li.appendChild(textContainerNumber);
                                ul.appendChild(li);
                            });
                        }
                    };

                    var array = [];

                    for (let i = 0; i < 13; i++) {
                        array.push(chooseColor());
                    }
                    console.log(array);

                    var data = {
                        labels: ["Cada momento cuenta: Introducci\u00f3n al dise\u00f1o de experiencias", "Creando un C\u00f3mic... y luchando contra el \"no puedo\"", "De la idea a la palabra fin", "Los videojuegos como deporte", "Navegando entre fronteras: trabajar como animador 3D en el extranjero", "Anatom\u00eda de una Boss Fight", "Descubre el mundo del rigging desde cero hasta la animaci\u00f3n", "El extraordinario mundo de la colorimetr\u00eda y el c\u00edrculo crom\u00e1tico", "Inteligencia Artificial generativa aplicada a la educaci\u00f3n: recursos multimedia con IA", "El universo de Epic Games, \u00a1m\u00e1s completo que nunca!", "Caracterizaci\u00f3n de personajes animados y Live Action", "Write a script for hollywood (and get people to read it!)", "Vivir de hacer c\u00f3mics y no morir en el intento"],
                        datasets: [{
                            data: [0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0],
                            backgroundColor: array,
                            hoverBackgroundColor: array,
                            borderWidth: 0,
                        }]
                    };

                    var ctxP = document.getElementById("pieChart").getContext('2d');
                    var myPieChart = new Chart(ctxP, {
                        type: 'pie',
                        data: data,
                        options: {
                            legend: {
                                display: false,
                            },

                            plugins: {
                                htmlLegend: {
                                    // ID of the container to put the legend in
                                    containerID: 'legend-container',
                                },
                            }
                        },

                        plugins: [htmlLegendPlugin],
                    });

                </script>

                <script>
                    document.getElementById("button-coppy-video").addEventListener("click", function() {
                        let textToCopy = document.getElementById("videoProject").innerText;
                        navigator.clipboard.writeText(textToCopy).then(() => {
                            console.log("Texto copiado correctamente");
                        }).catch(err => {
                            console.error("Error al copiar: ", err);
                        });
                    });

                    document.getElementById("button-coppy-file").addEventListener("click", function() {
                        let textToCopy = document.getElementById("fileProject").innerText;
                        navigator.clipboard.writeText(textToCopy).then(() => {
                            console.log("Texto copiado correctamente");
                        }).catch(err => {
                            console.error("Error al copiar: ", err);
                        });
                    });
                </script>

                <script>
                    document.addEventListener("DOMContentLoaded", function () {
                    // Botón para editar la descripción
                    const btnEditDescription = document.getElementById("btn-EditDescription");
                    const btnSaveChanges = document.getElementById("btn-SaveChanges");
                    const btnBackA = document.getElementById("btn-BackA");

                    // Elementos a mostrar
                    const elementsToShow = [
                        document.getElementById("editDescription"),
                        document.getElementById("div-SaveChanges"),
                        document.getElementById("div-BackA")
                    ];

                    // Elementos a ocultar
                    const elementsToHide = [
                        document.getElementById("descriptionProject"),
                        document.getElementById("div-EditDescription"),
                        document.getElementById("div-Back"),
                        document.getElementById("buttonsContainer")
                    ];

                    function toggleElements() {
                        elementsToShow.forEach(el => {
                            if (el) el.classList.toggle("d-none");
                        });

                        elementsToHide.forEach(el => {
                            if (el) el.classList.toggle("d-none");
                        });
                    }

                    // Evento para mostrar los elementos al hacer clic en "Editar descripción"
                    if (btnEditDescription) btnEditDescription.addEventListener("click", toggleElements);

                    // Evento para revertir la visibilidad con "Guardar Cambios" y "Regresar"
                    if (btnBackA) btnBackA.addEventListener("click", toggleElements);
                });



                </script>

                <script>
                    document.addEventListener("DOMContentLoaded", function () {
                    // Botón para devolver proyecto
                    const btnReturnProject = document.getElementById("btn-ReturnProject");
                    const btnRewind = document.getElementById("btn-Rewind");
                    const btnBackB = document.getElementById("btn-BackB");

                    // Elementos a mostrar
                    const elementsToShow = [
                        document.getElementById("div-ReturnProject"),
                        document.getElementById("div-ErrorsInfo"),
                        document.getElementById("div-BackB")
                    ];

                    // Elementos a ocultar
                    const elementsToHide = [
                        document.getElementById("div-EditDescription"),
                        document.getElementById("div-Back"),
                        document.getElementById("buttonsContainer")
                    ];

                    function toggleElements() {
                        elementsToShow.forEach(el => {
                            if (el) el.classList.toggle("d-none");
                        });

                        elementsToHide.forEach(el => {
                            if (el) el.classList.toggle("d-none");
                        });
                    }

                    // Evento para mostrar los elementos al hacer clic en "Editar descripción"
                    if (btnRewind) btnRewind.addEventListener("click", toggleElements);

                    // Evento para revertir la visibilidad con "Guardar Cambios" y "Regresar"
                    if (btnBackB) btnBackB.addEventListener("click", toggleElements);
                });

                </script>

            <script>
            document.addEventListener("DOMContentLoaded", function () {
                // Seleccionar el formulario
                const form = document.querySelector("form");

                // Botones permitidos para el envío del formulario
                const allowedButtons = ["btn-SaveChanges", "btn-ReturnProject", "btn-Accept", "btn-Back"]; //"btn-Denied"

                // Interceptar el envío del formulario
                form.addEventListener("submit", function (event) {
                    const clickedButton = event.submitter; // Botón que activó el submit

                    if (!clickedButton || !allowedButtons.includes(clickedButton.id)) {
                        event.preventDefault(); // Bloquea el envío si el botón no está permitido
                    }
                });
            });
            </script>



            </div>


            @yield('Content')

            @livewireScripts
        </div>
    </div>
</body>

</html>