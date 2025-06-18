@extends('Templates/headerStruct')
@section('content')



@if(session()->has('status'))


    <script type="text/javascript">
        @if(session()->get('status') == "El registro fue exitoso")
            document.addEventListener("DOMContentLoaded", function () {
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
        @if(session()->get('status') == "Matrícula no válida, deben ser 7 caracteres")
            document.addEventListener("DOMContentLoaded", function () {
                Swal.fire({
                    position: 'center',
                    icon: 'error',
                    iconColor: '#a70202',
                    title: `{{ session()->get('status') }}`,
                    showConfirmButton: false,
                    timer: 1500
                })
            });
        @endif
        @if(session()->get('status') == "Matrícula no válida, ingrese solo números")
            document.addEventListener("DOMContentLoaded", function () {
                Swal.fire({
                    position: 'center',
                    icon: 'error',
                    iconColor: '#a70202',
                    title: `{{ session()->get('status') }}`,
                    showConfirmButton: false,
                    timer: 1500
                })
            });
        @endif
        @if(session()->get('status') == "La matrícula ya fue registrada en esta conferencia")
            document.addEventListener("DOMContentLoaded", function () {
                Swal.fire({
                    position: 'center',
                    icon: 'error',
                    iconColor: '#a70202',
                    title: `{{ session()->get('status') }}`,
                    showConfirmButton: false,
                    timer: 3000
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

<link rel="stylesheet" href="{{asset('css/admin.css')}}">
<link rel="stylesheet" href="{{asset('css/adminEvent.css')}}">

<header class="header-index row justify-content-center mx-auto" id="header-index" style="">
    <div style="position: relative; width: 100%; height:70%;">
        <video autoplay loop muted class="header-gif-expo img-fluid" id="video-header">
            <source src="{{asset('images/expolmad.mp4')}}" type="video/mp4">
            Tu navegador no admite el elemento de video.
        </video>
    </div>

    <div class="row mx-auto d-flex align-items-center" style="position: relative; top: -60%;">
        <div class="col-sm-3 col-lg-5 mb-1 text-center">
            <img src="{{asset('images/LOGOEXPO2.png')}}" class="header-logo-lmad-expo img-fluid"
                onclick="window.location.href = '/'">
        </div>

        <div class="AfiAssistants-header col-sm-9 col-lg-3 mb-1 text-center">
            <h1 style="d-md-none; font-weight: bold;">Asistencias de AFI</h1>
            <!--<h1 style="font-size: 5em; font-weight: bold;">Registro de AFI</h1>-->
        </div>

</header>

<div class="BodyContainer col p-3 min-vh-100 w-50 backgroundImg tab-pan">

    <form id="AfiInfo" method=post action="{{route('AfiAssistants.store')}}" onsubmit="false">
        @csrf
        <div class="row align-items-center p-1">
            <div class="borderContainer col-11" style="margin-left: 50%; transform: translateX(-50%)">
                <div class="borderBody col-md-12 col-sm-12">
                    <div class="col my-3 text-center">
                        <h3 style="font-size: 15px;font-weight: bold"> Matrícula </h3>
                        <input type="text" type="submit" class="form-control" name="asisAFImatr" placeholder="1234567"
                            required>
                    </div>

                    <div class="col my-3 text-center">
                        <h3 style="font-size: 15px;font-weight: bold"> AFI </h3>
                        <!-- select aquí -->
                        <select class="form-select my-4" style="font-size: 12px" id="selectConferenciaAsis" name="conferencia" required>
                            <option value="" disabled selected>Selecciona un evento</option>
                            @foreach ($events as $event)
                                <option value="{{ $event->id }}">{{ $event->eventName }}</option>
                            @endforeach
                        </select>

                    </div>

                    <div class="col my-6 d-flex">
                        <button id="asisAFI" type="submit"
                            class="col-md-4 col-sm-12 btn btn-primary my-4 mx-auto">Registrar</button>
                    </div>

                </div>
            </div>
        </div>

    </form>


    @csrf
    <table class="table" style="text-align-last:center;" id="AfiTable" name="AfiTable">
        <thead>
            <tr>
                <th>Asistencia</th>
                <th>Matrícula</th>
                <th>Conferencia</th>
            </tr>
        </thead>
            <tbody>
            @foreach ($asistencias as $asistencia)
                <tr>
                    <td>
                        <input 
                            type="checkbox" 
                            class="checkbox-group" 
                            data-id="{{ $asistencia->id }}" 
                            @checked($asistencia->asistio)
                        >
                    </td>
                    <td>{{ $asistencia->matricula }}</td>
                    <td>{{ $asistencia->event->eventName ?? 'Evento eliminado' }}</td>
                </tr>
            @endforeach
            </tbody>
    </table>



</div>
<script>
    document.querySelectorAll('.checkbox-group').forEach(checkbox => {
        checkbox.addEventListener('change', function () {
            const asistenciaId = this.dataset.id;
            if (!asistenciaId) {
                console.warn("⚠️ ID de asistencia no definido. No se puede actualizar.");
                return;
            }

            const asistio = this.checked;

            if (!asistio) {
                const confirmed = confirm('¿Confirmas revocar la asistencia?');
                if (!confirmed) {
                    this.checked = true;
                    return;
                }
            }

            fetch(`/AfiAssistants/${asistenciaId}`, {
                method: 'PUT',
                headers: {
                    'Content-Type': 'application/json',
                    'X-CSRF-TOKEN': '{{ csrf_token() }}'
                },
                body: JSON.stringify({ asistio })
            })
            .then(res => res.json())
            .then(data => {
                if (!data.success) {
                    alert('Error al actualizar la asistencia');
                    this.checked = !asistio;
                }
            })
            .catch(error => {
                console.error('Error en la petición:', error);
                alert('Error al contactar al servidor');
                this.checked = !asistio;
            });
        });
    });
</script>



</link>
</link>

@endsection