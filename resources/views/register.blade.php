@extends('Templates/headerStruct')

@section('content')

{{-- 

@if(session()->has('status'))

    <script type="text/javascript">
        @if(session()->get('status') == "Registro de proyecto exitoso")
        document.addEventListener("DOMContentLoaded", function(){
            Swal.fire({
                position: 'center',
                icon: 'success',
                iconColor: '#0de4fe',
                title: `{{ session()->get('status') }}`,
                showConfirmButton: false,
                timer: 1500
            })

        });
        @endif

        @if(session()->get('status') == "Hubo un problema en el registro")
        document.addEventListener("DOMContentLoaded", function(){
            Swal.fire({
                position: 'center',
                icon: 'error',
                iconColor:'#a70202',
                title: `{{ session()->get('status') }}`,
                showConfirmButton: false,
                timer: 1500
            })

        });
        @endif

        @if(session()->get('status') == "El correo ingresado no es válido o institucional")
        document.addEventListener("DOMContentLoaded", function(){
            Swal.fire({
                position: 'center',
                icon: 'error',
                iconColor:'#a70202',
                title: `{{ session()->get('status') }}`,
                showConfirmButton: false,
                timer: 1500
            })

        });
        @endif

        @if(session()->get('status') == "Código de autorización invalido")
        document.addEventListener("DOMContentLoaded", function(){
            Swal.fire({
                position: 'center',
                icon: 'error',
                iconColor:'#a70202',
                title: `{{ session()->get('status') }}`,
                showConfirmButton: false,
                timer: 1500
            })

        });
        @endif

        @if(session()->get('status') == "La imagen no tiene las características permitidas")
        document.addEventListener("DOMContentLoaded", function(){
            Swal.fire({
                position: 'center',
                icon: 'error',
                iconColor:'#a70202',
                title: `{{ session()->get('status') }}`,
                showConfirmButton: false,
                timer: 1500
            })

        });
        @endif

        @if(session()->get('status') == "No se permiten más de 500 caracteres en la descripción")
        document.addEventListener("DOMContentLoaded", function(){
            Swal.fire({
                position: 'center',
                icon: 'error',
                iconColor:'#a70202',
                title: `{{ session()->get('status') }}`,
                showConfirmButton: false,
                timer: 1500
            })

        });
        @endif

        @if(session()->get('status') == "No se ingreso un link de video valido")
        document.addEventListener("DOMContentLoaded", function(){
            Swal.fire({
                position: 'center',
                icon: 'error',
                iconColor:'#a70202',
                title: `{{ session()->get('status') }}`,
                showConfirmButton: false,
                timer: 1500
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

    <script>
        function readURL(input) {
            validarImagen().then((value) => {
                if (input.files && input.files[0] && value) {
                    var reader = new FileReader();
    
                    reader.onload = function (e) {
                        $('#imgProjectsrc').attr('src', e.target.result).width(260).height(260);
                        $('#form-student').attr('onsubmit', true);
                        $('#regGuest').attr('disabled', false);
                    };
                    reader.readAsDataURL(input.files[0]);
                }
            });
        }
    </script>
<link rel="stylesheet" href="{{ asset('css/admin.css') }}">
@if (session()->has('id') && session()->has('rol') == 'expositor')
    
<div class="col-sm p-0 min-vh-100 tab-pane dash-w">
    <div class="container-fluid p-0">
        <div class="container-fluid justify-content-around p-0">
            <div class="row Targets p-0 m-0"> 
                <div class="col-sm-auto bg-dark sticky-top z-3 position-absolute p-2">
                    <div class="d-flex flex-sm-column flex-row flex-nowrap bg-dark align-items-center sticky-top">
                        <a href="/" class="d-block py-3 px-1 link-dark text-decoration-none" title="" data-bs-toggle="tooltip" data-bs-placement="right" data-bs-original-title="Icon-only">
                            <img class="logo-img" src="{{ asset('images/LOGO.png') }}" height="30">
                        </a>
                        <ul class="nav nav-pills nav-flush flex-sm-column flex-row flex-nowrap mb-auto mx-auto text-center align-items-center">
                            <li>
                                <a href="{{ route('RegisterTeam.index') }}" class="nav-link py-3 px-md-2 px-1" title="" data-bs-toggle="tooltip" data-bs-placement="right" data-bs-original-title="Customers">
                                    <i class="iconNav">
                                        <img src="{{ asset('images/up_proj.png') }}" alt="Inicio Expo LMAD"/>
                                        <p class="d-none d-sm-block nav-txt">Registro de Proyecto</p>
                                    </i>
                                </a>
                            </li>
                            <li>
                                <a href="{{ route('expositorQR.index') }}" class="nav-link py-3 px-md-2 px-1" title="" data-bs-toggle="tooltip" data-bs-placement="right" data-bs-original-title="Home">
                                    <i class="iconNav">
                                        <img src="{{ asset('images/qr.png') }}" alt="Eventos Expo LMAD"/>
                                        <p class="d-none d-sm-block nav-txt">QR</p>
                                    </i>
                                </a>
                            </li>
                            <li>
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
            </div>
            @endif

            <div class="col-12 align-items-center m-0 navBar-space">
                <div class="row m-0 p-0">
                    <header class="header-proyecto">
                        <center><p class="title-expositor">Registro del proyecto</p></center>
                    </header>
                    <div class="body-container-reg-proyecto m-0 p-0" style="">
                        <form id="form-student" action="{{route('RegisterTeam.store')}}" enctype="multipart/form-data"  method=post onsubmit="false" style="min-height: 100%;">
                        @csrf
                            <div class="row justify-content-center  mx-auto">
                            
                                <div class="col-sm-7 mb-4" style="">

                                    <div class="card-inputs borderContainer" style="">
                                        <div class="borderBody">
                                            <label class="label-reg-proyecto my-2">Nombre del proyecto:</label><br>
                                            <center><input type="text" class="input-reg-proyecto mb-3"  name="nameProject" id="nameProject" required><br></center>

                                            <label class="label-reg-proyecto my-2">Descripción del proyecto:</label><br>
                                            <center><textarea class="input-reg-proyecto-area mb-3" name="descProject" id="descProject" required></textarea><br></center>
                                            
                                            <label class="label-reg-proyecto my-2">Enlace a video de YouTube:</label><br>
                                            <center><input type="text" class="input-reg-proyecto mb-2" name="videoProject" id="videoProject" required><br></center>
                                            <p class="underText ps-4 ms-2 mb-3">Enlace directo del navegador. No se acepta “you.tube” o "youtu.be". Verificar que este en modo público</p>
                                            
                                            <label class="label-reg-proyecto my-2">Link adicional:</label><br>
                                            <center><input type="text" class="input-reg-proyecto mb-3" placeholder="drive, github, dropbox..." name="DriveProject" id="DriveProject" required><br></center>
                                            
                                            <label class="label-reg-proyecto my-2">Código de autorización:</label><br>
                                            <center><input type="text" class="input-reg-proyecto mb-3" name="codeProject" id="codeProject" required><br></center>
                                        </div>
                                    </div>

                                </div>

                                <div class="col-sm-4">
                                    <div class="card-inputs borderContainer">
                                        <div class="borderBody">
                                            <center>
                                                <p class="text-img-title-reg">Foto del proyecto:</p><br>
                                                <img style="border-radius: 2rem;" src="{{asset('images/img-reg-proj.png')}}" alt="Imagen ingrese su proyecto" class="img-reg-proj img-fluid" onclick="document.getElementById('imgProject').click();" name="imgProjectsrc" id="imgProjectsrc"><br>
                                                <label for="imgProject" class="label-file"><img src="{{asset('images/subir_1.png')}}"></label>
                                                <input type="file" class="file-img-proyectoc"  accept="image/*" name="imgProject" id="imgProject" onchange="readURL(this);">
                                                <p class="text-img-reg">El tamaño máximo para la foto es de 1024x1024</p>
                                            </center>
                                        </div>
                                    </div>
                                </div>

                                <div class="row justify-content-center mx-auto">
                                    <div class="col-sm-11">
                                        <div class="card-inputs borderContainer">
                                            <div class="borderBody">
                                                <label class="label-reg-proyecto mt-2 mb-4">Correo universitario:</label><br>
                                                <center><input type="text" class="input-reg-proyecto mb-4"  name="mailProject" id="mailProject" required><br></center>
                                                <p class="underText ms-5">Correo universitario, terminación @uanl.edu.mx</p>
                                                <center>
                                                <p class="instructions mt-5">Este correo será utilizado como medio de comunicación con el estudiante para notificarle si su proyecto fue aceptado, rechazado o si se necesitan hacer cambios para ser admitido.
                                                </p>
                                                <p class="instructions mt-3">Favor de estar al pendiente una vez enviado el proyecto.
                                                </p>
                                                </center>
                                            </div>
                                        </div>
                                    </div>
                                </div>

                                <div class="col-sm-4 d-flex align-items-center justify-content-center" style="margin-bottom: 10rem;">
                                    <button id="regGuest" type="submit" class="btn_regProj">Registrar proyecto</button>
                                </div>
                            </div>
                        </form>
                        <div class="footer-card" onclick="window.location.href = '{{route('expo.index')}}'" @if (session()->has('id') && session()->has('rol') == 'expositor') style="left: 54%;" @endif>
                            <p class="footer-card-text">EXPO LMAD <i>EXPANDIENDO LA REALIDAD</p>
                            <img width="17" height="17" src="{{asset('images/icon-arrow-down.png')}}" alt="expand-arrow--v2" class="arrow-footer"/>
                        </div>
                    </div>



                </div>
                

                
                
            </div>
        </div>
    </div>

    <!--div class="footer-card-networking">
            <center>
                <p class="footer-card-text-networking-title" onclick="window.location.href='https://networking.sistemaregistrofcfm.com'">REGISTRO EN NETWORKING</p><br>
                <p class="footer-card-text-networking">Al registrarse usted acepta oficialmente que su información personal será de visualización pública</p>
            </center>
    </div--->
</div>

     --}}  




<!-- NUEVO CONTENIDO -->
<div class="d-flex flex-column justify-content-center align-items-center w-100">
    <img src="{{ asset('images/bisonte-triste.png') }}" alt="Página cerrada" style="max-width: 35%; height: auto; margin-bottom: 30px; align-text: center;">
    <h2 style="color: #FFF; font-weight: bold;">La página se ha cerrado</h2>
</div>

@endsection
