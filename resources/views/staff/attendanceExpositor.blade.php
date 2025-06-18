@extends('staff.struct')

@section('Content')
<script src="https://unpkg.com/html5-qrcode" type="text/javascript"></script>
@if(session()->has('status'))

<script type="text/javascript">

    @if(session()->get('status') == "Hubo un problema en la asistencia" || session()->get('status') == "El alumno ya tiene asistencia" || session()->get('status') =="El alumno no es válido")
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
    @else
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

</script>
@php
    header("Cache-Control: no-store, no-cache, must-revalidate, max-age=0");
    header("Cache-Control: post-check=0, pre-check=0", false);
    header("Pragma: no-cache");
    @endphp
@endif

<link rel="stylesheet" href="{{ asset('css/qrReader.css') }}">

<div class="col-sm p-3 test">
    <div class="d-flex justify-content-center mt-4 flex-wrap titleEvent">
        <h1 class="text-center col-12 m-3">EXPOSITOR</h1>

        <form id="form" action="{{route('staffExpositor.store')}}" method="post" style="display: none;">
            @csrf
            <input type="text" name="matricula" id="matricula">
            <button id="btnsend" type="submit"></button>
        </form>
        <!--<div class="col-12 col-md-8 d-flex justify-content-center p-5 mb-4 flex-wrap div-colorfull">
            <div class="container-fluid m-0 p-0">
                <div id="reader"></div>
            </div>
            <div id="result"></div>
        </div>-->
        <div class="borderContainer">
            <div class="QRborderBody">
                <div class="col-12">
                    <div id="reader"></div>
                </div>
                <div class="col-12" style="padding: 30px">
                    <div id="result">
                    </div>
                </div>
            </div>
        </div>
    </div>  
</div>


<script type="text/javascript">
    function onScanSuccess(qrCodeMessage) {
        // Mostrar el mensaje escaneado (opcional):
        document.getElementById("result").innerHTML = `<hr><h3>Alumno ${qrCodeMessage} registrado</h3><hr>`;

        // Asignar valor al input oculto
        document.getElementById("matricula").value = qrCodeMessage;

        // Enviar el formulario
        document.getElementById("form").submit();

        // Detener escáner
        html5QrCodeScanner.clear().then(() => {
            console.log("Escáner detenido correctamente");
        }).catch(error => {
            console.warn("No se pudo detener el escáner: ", error);
        });
    }

    function onScanError(errorMessage) {
        // Este error ocurre cada vez que no se reconoce un QR, se puede ignorar o loguear
        // console.warn(`QR Error: ${errorMessage}`);
    }

    // Inicializar el escáner
    const html5QrCodeScanner = new Html5QrcodeScanner("reader", {
        fps: 10,
        qrbox: 250
    });

    html5QrCodeScanner.render(onScanSuccess, onScanError);
</script>

@endsection