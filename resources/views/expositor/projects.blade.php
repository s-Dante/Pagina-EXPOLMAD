
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

        @if(session()->get('status') == "El proyecto ha sido enviado")
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

        @if(session()->get('status') == "No se admiten más de 50 caracteres para la URL del video promocional")
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
        
        @if(session()->get('status') == "No son suficientes caracteres para el video promocional, revisa la url")
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

        @if(session()->get('status') == "No se admiten más de 100 caracteres para la URL del enlace a proyecto")
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

        @if(session()->get('status') == "El video promocional no es una url válida a YouTube")
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

        @if(session()->get('status') == "El enlace a proyecto no es una url válida")
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


        @if(session()->get('status') == "No se admiten más de 200 caracteres para la descripción del proyecto")
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


    <link rel="stylesheet" href="{{ asset('css/admin.css') }}">
    <link rel="stylesheet" href="{{ asset('css/adminEvent.css') }}">
    <link rel="stylesheet" href="{{ asset('css/master.css') }}">
    <link rel="stylesheet" href="{{ asset('css/expo_base.css') }}">

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
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>


</head>

<body
    style="background-repeat: no-repeat; background-size: cover; background-position:center; background-attachment: fixed;">

    <div class="row Targets p-0 m-0">
    <div class="col-sm-auto bg-dark sticky-top nav flex-column">
            <div class="d-flex flex-sm-column flex-row flex-nowrap bg-dark align-items-center sticky-top">
                <a href="/" class="d-block py-3 px-1 link-dark text-decoration-none nav-item" title="" data-bs-toggle="tooltip" data-bs-placement="right" data-bs-original-title="Icon-only">
                    <img class="logo-img" src="{{ asset('images/LOGO.png') }}" height="30">
                </a>
                <ul class="nav nav-pills nav-flush flex-sm-column flex-row flex-nowrap mb-auto mx-auto text-center align-items-center ">
                    <li class="nav-item">
                        <a href="{{ route('expositorQR.index') }}" class="nav-link py-3 px-md-2 px-1" title="" data-bs-toggle="tooltip" data-bs-placement="right" data-bs-original-title="Home">
                            <i class="iconNav">
                                <img src="{{ asset('images/qr.png') }}" alt="Eventos Expo LMAD"/>
                                <p class="d-none d-sm-block nav-txt">QR</p>
                            </i>
                        </a>
                    </li>
                    <li class="nav-item">
                        <a href="{{ route('expositorProyecto.index') }}" class="nav-link py-3 px-md-2 px-1" title="" data-bs-toggle="tooltip" data-bs-placement="right" data-bs-original-title="Home">
                            <i class="iconNav">
                                <img src="{{ asset('images/conversaciones 1.png') }}" alt="Eventos Expo LMAD"/>
                                <p class="d-none d-sm-block nav-txt">Respuesta</p>
                            </i>
                        </a>
                    </li>
                    <li class="nav-item">
                        <a href="{{ route('cerrarSesion') }}" class="nav-link py-3 px-md-2 px-1" title="" data-bs-toggle="tooltip" data-bs-placement="right" data-bs-original-title="Customers">
                            <i class="iconNav">
                                <img src="{{ asset('images/NavLogout.png') }}" alt="Staff Expo LMAD"/>
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
                            <h1 class="titlePage">Respuesta al proyecto enviado</h1>
                        </div>

                        <div class="card-inputs borderContainer" style="margin-bottom: 1rem;">
                            <div class="borderBody text-center">
                                <span class="span-notes">Tras enviar tu proyecto al CONGRESO LMAD, se realizará una revisión para verificar 
                                    que se cumpla con los estándares esperados del evento. 
                                    En este apartado podrás ver la respuesta tras que sea revisado, 
                                    a su vez, se enviará un aviso a tu correo universitario si necesita hacerle cambios 
                                    para su aceptación.
                                </span>
                                <br><br>
                                <span class="span-notes">
                                    Favor de estar al pendiente una vez enviado el proyecto. No olvides revisar tu correo spam!
                                </span>
                            </div>
                        </div>

                        <form id="form-student" enctype="multipart/form-data"
                        action="{{ route('expositorProyecto.store') }}" method="POST" onsubmit="false" class="border-gradient-radius" style="padding-top: 3.5rem;">
                            @csrf
                            <input type="hidden" name="action" id="action" value="">
                            <input type="hidden" name="projectID" value="{{ $project->id }}">
                            <input type="hidden" name="projectName" id="hiddenProjectName" value="{{ $project->nameProject }}">
                            <h5 class="projectTitle">{{ $project->nameProject }}</h5>
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

                                            <div style="display:none!important" class="row">
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
                                                <div class="d-none col-lg-6" id="div-editVideo" style="margin: none; padding: 0; justify-content: center;">
                                                    <textarea style="width: 100%; height: 4.5rem; padding: .5rem" name="editVideo" id="editVideo" class="input-text">{{ $projectData->video_url ?? '' }}</textarea>
                                                </div>
                                                <p class="projectData text-lg-start col-lg-6" style="margin-bottom: 2%;" id="videoProject">{{ $projectData->video_url ?? 'No disponible' }}</p>
                                                <button id="button-coppy-video" class="button-coppy col-1 mx-auto"><img src="{{ asset('images/iconCoppy.svg') }}"></button>
                                            </div>

                                            <div class="row" style="margin-top: 2%;">
                                                <p class="remarkText text-lg-end col-lg-4">ENLACE A PROYECTO:</p>
                                                <div class="d-none col-lg-6" id="div-editURL" style="margin: none; padding: 0; justify-content: center;">
                                                    <textarea style="width: 100%; height: 2.8rem; padding: .5rem" name="editURL" id="editURL" class="input-text">{{ $projectData->drive_url ?? '' }}</textarea>
                                                </div>
                                                <p class="projectData text-lg-start col-lg-6" style="margin-bottom: 2%;" id="fileProject">{{ $projectData->drive_url ?? 'No disponible' }}</p>
                                                <button id="button-coppy-file" class="button-coppy col-1 mx-auto"><img src="{{ asset('images/iconCoppy.svg') }}"></button>
                                            </div>

                                            <div class="row" style="margin-top: 2%;">
                                                <p class="remarkText text-lg-end col-lg-4">DESCRIPCIÓN:</p>
                                                <p class="projectData text-lg-start col-lg-6" id="descriptionProject" >
                                                {{ $projectData->description ?? 'Sin descripción' }}
                                                </p>
                                                
                                                <div class="col-lg-6" style="margin: none; padding: 0; justify-content: center;">
                                                    <textarea style="width: 100%; height: 13rem;" name="editDescription" id="editDescription" class="input-text d-none">
                                                    {{ $projectData->description ?? '' }}
                                                </textarea>
                                                </div>
                                            </div>

                                        </div>


                                    
                                    </div>


                                    
                                </div>
                                
                                <div class="col-lg-3" style="margin-top: 5%; justify-content: center;">
                                   <img src="{{ asset('storage/eventImages/' . $projectData->imagen_url) }}" alt="Imagen del proyecto"
                                        class="img-reg-proj img-fluid"
                                        onclick="document.getElementById('imgProject').click();"
                                        name="imgProjectsrc" id="imgProjectsrc"
                                        style="width: 25rem; display: block; margin: auto; border-radius: 2rem;"
                                        >

                                        <div class="d-none col-md-5 col-lg-12 buttoncontainer" id="div-ChangePhoto" style="margin-bottom: 3%">
                                            
                                            <!--<button class="col" id="btn-ChangePhoto" onclick="setAction('loadPhoto')"><h3 class="bttnText">Cambiar imagen</h3></button>-->
                                            <label class="col text-center" id="btn-ChangePhoto" for="imgProject"><h3 class="bttnText">Cambiar imagen</h3></label>
                                            <!--<img src="{{asset('images/img-reg-proj.png')}}" alt="Imagen ingrese su proyecto" class="img-reg-proj img-fluid" ><br>-->
                                            <!--<label for="imgProject" class="label-file"><img src="{{asset('images/subir_1.png')}}"></label>-->
                                            <input type="file" class="file-img-proyectoc" accept="image/*" name="imgProject" id="imgProject" onchange="readURL(this);">
                                        </div>
                                </div>

                                <div class="col-lg-10 justify-content-center text-center" style="margin-top: 2rem; margin-bottom: 5%;">
                                    
                                    
                                    <div id="div-projectStatus">
                                        <hr id="line" style="margin-bottom: .8rem; margin-top: 3rem;">

                                        <span class="span-notes-import">Estado del proyecto</span>

                                        <br><br>
                                        <span class="span-notes" id="projectStatus">¡Cargando...!</span>
                                    </div>

                                    <div class="d-none" id="div-projectMsg">
                                        <div class="border-gradient-radius col-lg-8" style="padding: 2.5rem;">
                                            <span class="span-Congreso">Mensaje del congreso:</span>
                                            <br><br>
                                            <span class="span-msgCongreso" id="projectRetro">Cargando...</span>
                                        </div>
                                    </div>

                                    <div class="col-lg-12 buttonsContainer row justify-content-center" style="margin-bottom: 5%;">
                                        <div class="d-none col-md-5 col-lg-4 buttoncontainer" id="div-EditProject" style="margin-bottom: 3%">
                                            <button class="col" id="btn-EditProject"><h3 class="bttnText">Editar proyecto</h3></button>
                                        </div>
                                        <div class="d-none col-md-5 col-lg-4 buttoncontainer" id="div-ResendProject" style="margin-bottom: 3%">
                                            <button class="col" id="btn-ResendProject" onclick="setAction('resendProyect')"><h3 class="bttnText">Reenviar proyecto</h3></button>
                                        </div>

                                        <div class="d-none col-md-5 col-lg-4 buttoncontainer" id="div-SaveChanges" style="margin-bottom: 3%">
                                            <button class="col" id="btn-SaveChanges" onclick="setAction('saveChanges')"><h3 class="bttnText">Guardar cambios</h3></button>
                                        </div>
                                        <div class="d-none col-md-5 col-lg-4 buttoncontainer" id="div-BackProject" style="margin-bottom: 3%">
                                            <button class="col" id="btn-BackProject"><h3 class="bttnText">Regresar</h3></button>
                                        </div>
                                    </div>
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
                    const btnEditProject = document.getElementById("btn-EditProject"); //Botón para editar la descripción

                    const btnBackProject = document.getElementById("btn-BackProject"); //Botón para regresar a la vista no editable

                    // Elementos a mostrar
                    const elementsToShow = [
                        document.getElementById("editDescription"),
                        document.getElementById("div-SaveChanges"),
                        document.getElementById("div-BackProject"),
                        document.getElementById("div-ChangePhoto"),
                        document.getElementById("div-editVideo"),
                        document.getElementById("div-editURL")
                    ];

                    // Elementos a ocultar
                    const elementsToHide = [
                        document.getElementById("div-projectStatus"),
                        document.getElementById("descriptionProject"),
                        document.getElementById("button-coppy-video"),
                        document.getElementById("button-coppy-file"),
                        document.getElementById("videoProject"),
                        document.getElementById("fileProject"),
                    ];

                    function toggleElements() {
                        elementsToShow.forEach(el => {
                            if (el) el.classList.toggle("d-none");
                        });

                        elementsToHide.forEach(el => {
                            if (el) el.classList.toggle("d-none");
                        });
                    }
                    
                    //mostrar elementos al hacer clic en "Editar proyecto"
                    if (btnEditProject) btnEditProject.addEventListener("click", toggleElements);

                    //revertir visibilidad con "Regresar"
                    if (btnBackProject) btnBackProject.addEventListener("click", toggleElements);
                

 
                     let status = {{ $project->status }};
                     let retroMessage = @json($project->message ?? '');
                     let statusMSG = '';
                             
                     switch (status) {
                         case 0:
                             statusMSG = "En revisión, ¡No olvides estar al pendiente!";
                             break;
                         
                         case 1:
                             statusMSG = "¡Aceptado!";
                             break;
                         
                         case 2:
                             statusMSG = "Se han encontrado aspectos en los que puedes mejorar. Tan pronto como termines de optimizar tu proyecto envíalo de nuevo con el botón 'Reenviar proyecto'.";
                         
                             // Mostrar sección de mensaje de retroalimentación
                             document.getElementById("div-projectMsg")?.classList.remove("d-none");
                             document.getElementById("projectRetro").textContent = retroMessage;
                         
                             // Mostrar botones para reenviar y editar
                             document.getElementById("div-ResendProject")?.classList.remove("d-none");
                             document.getElementById("div-EditProject")?.classList.remove("d-none");

                                // Obtener los botones
                                const editProjectButton = document.getElementById("div-EditProject");
                                const resendProjectButton = document.getElementById("div-ResendProject");

                                // Añadirlos a la lista de elementos a mostrar
                                elementsToShow.push(editProjectButton, resendProjectButton);
                    
                             break;
                         
                         case 3:
                             statusMSG = "Tu proyecto fue rechazado. Consulta a tu maestro o staff para más información.";
                             break;
                         
                         default:
                             statusMSG = "¡Ups! Hay un problema para leer la información.";
                             break;
                     }
                 
                     const statusElement = document.getElementById("projectStatus");
                     if (statusElement) {
                         statusElement.textContent = statusMSG;
                     }
                 });
                </script>


                <script>
                document.addEventListener("DOMContentLoaded", function () {
                    const form = document.querySelector("form");

                    // Botones permitidos para el envío del formulario
                    const allowedButtons = ["btn-SaveChanges", "btn-ResendProject"];

                    // Interceptar el formulario, evita que los botones envíen cualquier cosa
                    form.addEventListener("submit", function (event) {
                        const clickedButton = event.submitter;

                        if (!clickedButton || !allowedButtons.includes(clickedButton.id)) {
                            event.preventDefault();
                        }
                    });
                });
                </script>


            </div>


            @yield('Content')

            @livewireScripts
        </div>
    </div>
    </div>

    <script>
        function readURL(input) {
            if (input.files && input.files[0]) {
                let file = input.files[0];

                // Validar que el archivo sea una imagen
                if (!file.type.startsWith("image/")) {
                    alert("❌ Error: Debes seleccionar un archivo de imagen.");
                    return;
                }

                let reader = new FileReader();
                reader.onload = function (e) {
                    let img = new Image();
                    img.src = e.target.result;

                    img.onload = function () {
                        if (img.width === 1024 && img.height === 1024) {
                            document.getElementById("imgProjectsrc").src = e.target.result;
                        } else {
                            Swal.fire({
                                    position: 'center',
                                    icon: 'error',
                                    iconColor:'#a70202',
                                    title: "La imagen no tiene las características permitidas",
                                    showConfirmButton: false,
                                    timer: 1500
                                })
                        }
                    };
                };
                reader.readAsDataURL(file);
            }
        }
    </script>
</body>

</html>