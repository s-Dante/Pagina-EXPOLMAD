@extends('staff.struct')

@section('Content')

<script src="{{ asset('js/staffAttendanceEvent.js') }}"></script>
<script src="{{ asset('js/staffAttendanceCompany.js') }}"></script>

@if(session()->has('status'))

    <script type="text/javascript">
        @if(session()->get('status') == "Registro exitoso")
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

        @if(session()->get('status') == "Hubo un problema. Verifique los datos" || session()->get('status') == "La persona ya asistió")
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

        @if(session()->get('status') == "La persona ya asistió")
        document.addEventListener("DOMContentLoaded", function(){
            Swal.fire({
                position: 'center',
                icon: 'info',
                iconColor:'#0de4fe',
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



    <div class="col-sm p-0 min-vh-100 tab-pane dash-w backgroundImg">
        <header class="header-proyecto pt-4">
            <center><p class="title-expositor p-5">ASISTENCIA GENERAL A LA EXPO</p></center>
        </header>

        <div class="body-container-expositor hv-100">
            <div class="row justify-content-center mx-auto" style="width: 100%; height:100%">
                <div class="col-sm-7 justify-content-center d-flex align-items-center" style="">
                    <div class="row justify-content-center mx-auto" style="width: 100%; gap:20px">
                        <div class="col-sm-4 justify-content-center d-flex align-items-center" style="">
                            <input type="radio" name="inlineRadioOptions" id="inlineRadio1" class="radio-input-proyecto" value="option1" checked onclick=studentCheck()><label  for="inlineRadio1"></label>
                            <span class="radio-reg-proyecto" style="">Alumno</span>
                        </div>
                        <div class="col-sm-5 justify-content-center d-flex align-items-center" style="">
                            <input type="radio" name="inlineRadioOptions" id="inlineRadio2" class="radio-input-proyecto" value="option2" onclick=externalCheck()><label for="inlineRadio2"></label>
                            <span class="radio-reg-proyecto">Externo</span>
                        </div>
                    </div>
                </div>
                <div class="col-sm-7" style="">
                    <!---Form Alumno ---->
                    <form class="my-4 form-student" id="studentEventAttendance" method="put" action="{{route('adminRegistroVisitor.create')}}">
                        @method('put')
                        @csrf
                        <div class="card-inputs borderContainer m-4" style="">
                            <div class="borderBody py-5">
                                <label class="label-reg-proyecto my-2">Matrícula:</label><br>
                                <center><input type="text" class="input-reg-proyecto mb-3"  name="enrollmentStudentEvent" id="enrollmentStudentEvent" placeholder="999999" required><br></center>
                                <label class="label-reg-proyecto my-2">Nombre Completo:</label><br>
                                <center><input type="text" class="input-reg-proyecto mb-2"  name="fullNameStudentEvent" id="fullNameStudentEvent" required onkeyup="this.value = this.value.toUpperCase()" placeholder="Mercedes"><br></center>
                            </div>
                        </div>
                        <center><button id="regGuest" type="submit" class="btn_regProj m-5">Registrar entrada</button></center>
                    </form>
                    
                    <!---Form Externo ---->
                    <form class="my-4 form-external" id="externalPeopleEventAttendance" method="put" action="{{route('adminRegistroVisitor.create')}}" style="display: none;">
                        @method('put')
                        @csrf
                        <div class="card-inputs borderContainer m-4">
                            <div class="borderBody py-5">
                                <label class="label-reg-proyecto my-2" for="genre">Género:</label><br>
                                <center>
                                <select class="input-reg-proyecto mb-3" id="genre" name="genre">
                                    <option value="Female" style="text-align: center;">Femenino</option>
                                    <option value="Male" style="text-align: center;">Masculino</option>
                                    <option value="They" style="text-align: center;">No binario</option>
                                </select><br>
                                </center>
                                <label class="label-reg-proyecto my-2">Nombre Completo:</label><br>
                                <center><input type="text" class="input-reg-proyecto mb-3"  name="regEventExternal" id="regEventExternal" placeholder="Nombre completo" onkeyup="this.value = this.value.toUpperCase()" required><br></center>
                            </div>
                        </div>
                        <center><button id="regGuest" type="submit" class="btn_regProj m-5">Registrar entrada</button></center>
                    </form>
                </div>
            </div>
        </div>
    </div>

    <!-- <div class="footer-card " style="left: 53%;">
        <p class="footer-card-text">Networking</p>
        <img width="17" height="17" src="{{asset('images/icon-arrow-down.png')}}" alt="expand-arrow--v2" class="arrow-footer"/>
    </div> -->
@endsection