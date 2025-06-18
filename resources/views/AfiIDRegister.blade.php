@extends('Templates/headerStruct')
@section('content')


@if(session()->has('status'))

    <script type="text/javascript">
        @if(session()->get('status') == "Asistencia actualizada correctamente")
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
        @if(session()->get('status') == "Registro no encontrado")
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
        @if(session()->get('status') == "El límite de ingreso son 1500")
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
        @if(session()->get('status') == "El ID solo debe contener números")
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
            <div class="h1 h-30 my-0 text-center" style="font-weight: bold; color: #ffffff;">Registro de ID</div>
        </div>
    </div>

</header>

<div class="BodyContainer p-5">

    <div class="d-flex mx-auto justify-content-center">
        <div class="card-TheWarning col-sm-4">
            <div class="card-TheWarningText">
                Favor de llenar todos los campos.
            </div>
        </div>
    </div>

    <form id="AfiInfoID" action="{{route('AfiIDRegister.store')}}" method=post onsubmit="false">
        @csrf
        <div class="d-flex">
            <div class="borderContainer mx-auto">
                <div class="borderBody field">
                    <div class="h3" style="color: aliceblue; font-size: 15px;font-weight: bold"> Registra tu ID </div>
                    <input type="text" class="form-control" name="regIDtext" placeholder="123" required> </input>
                    
                    {{-- 
                    <div class="h3" style="color: aliceblue; font-size: 15px;font-weight: bold"> Palabra clave </div>
                    <input type="text" class="form-control" style="margin-bottom: 10px;" name="regIDword"
                        placeholder="mono" required> </input>
                        
                          --}}  
                </div>
            </div>
        </div>

        <div id="MsgError" class="error-message"> </div>

        <div class="my-5 d-flex">
            <button id="regIDbutton" type="submit" class="btn btn-primary mx-auto"> Registrar </button>
        </div>

    </form>

</div>


@endsection