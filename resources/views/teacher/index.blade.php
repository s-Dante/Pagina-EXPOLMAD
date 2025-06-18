@extends('teacher.struct')

@section('Content')
    @if(session()->has('status'))

    <script type="text/javascript">
        @if(session()->get('status') == "Registro expositor exitoso")
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

    </script>
    @php
    header("Cache-Control: no-store, no-cache, must-revalidate, max-age=0");
    header("Cache-Control: post-check=0, pre-check=0", false);
    header("Pragma: no-cache");
    @endphp
    @endif

    <link rel="stylesheet" href="{{ asset('css/admin.css') }}">

    

    <div class="col-sm p-3 min-vh-100 backgroundImg tab-pane dash-w">
        <div class="container-fluid">
            <div class="container-fluid justify-content-around">
                <div class="row Targets"> 
                    <div class="col-12 align-items-center p-0 m-0">
                        <div class="row m-0 p-0 ">
                            <header class="header-proyecto col-12 d-flex justify-content-center  title-expositor m-0 p-0 py-4">
                                <center><p class="title-expositor">REGISTRO DE EXPOSITORES</p></center>
                            </header>
                            <form id="form-student" action="{{route('teacherRegistroExpositor.store')}}" method=post>
                                @csrf
                                <div class="row justify-content-center mx-auto" style="">
                                    <div class="col-sm-6" style="">
                                        <div class="card-inputs borderContainer">
                                            <div class="borderBody p-1 py-4">
                                                <div class="row justify-content-center p-0 m-0 my-3">
                                                    <div class="col-sm-2 justify-content-center p-0 m-0" style="">
                                                        
                                                        <label class="label-reg-proyecto p-0 m-0">Plan:</label><br>
                                                        <select class="input-reg-proyecto" id="planCmb" style="text-aling: center;"></select>
                                                        
                                                    </div>
                                                    <div class="col-sm-3 justify-content-center p-0 ps-1 m-0" style="">
                                                        
                                                        <label class="label-reg-proyecto p-0 m-0">Semestre:</label><br>
                                                        <select class="input-reg-proyecto" id="semesterCmb"></select>
                                                        
                                                    </div>
                                                    <div class="col-sm-5 justify-content-center p-0 m-0" style="">
                                                        
                                                        <label class="label-reg-proyecto p-0 m-0">Numero de integrantes:</label><br>
                                                        <select class="input-reg-proyecto" id="membersCmb" onchange=setDynamicInputs()>
                                                            <option value="1" style="text-align: center;">1</option>
                                                            <option value="2" style="text-align: center;">2</option>
                                                            <option value="3" style="text-align: center;">3</option>
                                                            <option value="4" style="text-align: center;">4</option>
                                                            <option value="5" style="text-align: center;">5</option>
                                                            <option value="6" style="text-align: center;">6</option>
                                                            <option value="7" style="text-align: center;">7</option>
                                                            <option value="8" style="text-align: center;">8</option>
                                                        </select>

                                                    </div>
                                                </div>
                                                <div class="row justify-content-center mb-3">
                                                    <div class="col-sm-11" style="">
                                                    
                                                        <label class="label-reg-proyecto">Materia:</label><br>
                                                        <center><select class="input-reg-proyecto" id="UACmb" onchange="document.getElementById('UA').value = document.getElementById('UACmb').value;"></select>
                                                        </center>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-sm-6" style="">
                                        <div class="card-inputs borderContainer">
                                            <div class="borderBody p-1 py-4">
                                                <input type="text" name="semester" id="semester" hidden value="document.getElementById('semesterCmb').value;"> 
                                                <input type="text" name="UA" id="UA" hidden>
                                                <input type="text" id="inputCount" name="inputCount" value=1 hidden>
                                                <input type="text" name="plan" id="plan" hidden>

                                                <div class="row justify-content-center my-3">
                                                    <div class="col-sm-11" style="">
                                                        
                                                        <label class="label-reg-proyecto">Matrícula:</label><br>
                                                        <center><input type="number" class="input-reg-proyecto"  name="enrollment0" id="enrollment0" placeholder="" required onchange="checkNum(this)"  min=1000000 max=9999999><br>
                                                        </center>
                                                    </div>
                                                </div>

                                                <div class="form-check mt-2" hidden>
                                                        <input class="form-check-input" type="checkbox" name="attendance0" id="attendance0" >
                                                        <label class="form-check-label text-light" for="attendance0">
                                                            Comprobar
                                                        </label>
                                                </div>

                                                <div class="row justify-content-center">
                                                    <div class="col-sm-11" style="">

                                                        <label class="label-reg-proyecto">Nombre Completo:</label><br>
                                                        <center><input type="text" class="input-reg-proyecto"  name="name0" id="name0" onkeyup="cambiaMayuscula()" placeholder="Nombre Apellido Apellido" required><br>
                                                        </center>
                                                    </div>
                                                </div>

                                                <div class="mt-3" id="dynamicInputs">
                                                    <!--INPUTS DINAMICOS-->
                                                </div>

                                                <!--                       key      |      password         -->
                                                <!-- User Student ->    matrícula   | apellidos_matrícula   -->
                                            </div>
                                        </div>
                                        
                                    </div>
                                        <button id="regGuest" type="submit" class="btn_regProj" onclick="checkDuplicated()">Registrar equipo</button>

                                        <div id="duplicatedAlert" class="col-12 my-2" style="text-align:center;" hidden>
                                            <h5 style="color: #39f6e4; text-shadow:0px 0px 20px grey; font-weight:normal;"> Comprueba que no se repitan matrículas </h5>
                                        </div>
                                </div>
                            </form>    
                        </div>
                        
                    </div>
                    
                </div>
            </div>
            
            
            

            <!--div class="footer-card fixed-bottom position-fixed text-center" style="left: 54%;">
                <p class="footer-card-text">Networking</p>
                <img width="17" height="17" src="{{asset('images/icon-arrow-down.png')}}" alt="expand-arrow--v2" class="arrow-footer"/>
            </div-->

        </div>
    </div>

    

<!--div class="col-sm p-3">
    <div class="container-fluid" >
        <div class="row">
            <h5 class="text-center" style="font-size: 2rem; margin-bottom:20px; margin-top:20px; color:white">Registro expositores</h5>

            <!-DROP DOWNS->

            <div class="d-flex justify-content-center flex-wrap">
                <div class="col-12 col-md-3 col-lg-2 col-xl-1 m-2">
                    <div class="form-floating">
                        <select class="form-select" id="semesterCmb" onchange=updateInputSemesterCmb()>

                        </select>
                        <label for="semesterCmb">Semestre</label>
                    </div>
                </div>

                <div class="col-12 col-md-6 col-lg-4 col-xl-3 m-2">
                    <div class="form-floating">
                        <select class="form-select" id="UACmb" onchange="document.getElementById('UA').value = document.getElementById('UACmb').value;">

                        </select>
                        <label for="UACmb">Materia</label>
                    </div>
                </div>

                <!-<div class="col-12 col-md-3 col-lg-3 m-2 form-floating">
                    <input type="text" onkeypress='return event.charCode >= 49 && event.charCode <= 57' class="form-control" id="teamNum" placeholder="Num. Equipos">
                    <label for="teamNum">Num. Equipos</label>
                </div>->

            </div>

            <div class="p-3 my-4 div-colorfull" style="">
                <form class="my-4 form-student" id="form-student" action="{{route('teacherRegistroExpositor.store')}}" method=post>

                @csrf
                    <!-HIDDEN INPUTS->

                    <input type="text" name="semester" id="semester" hidden value="document.getElementById('semesterCmb').value;">
                    <input type="text" name="UA" id="UA" hidden>
                    <input type="text" id="inputCount" name="inputCount" value=1 hidden>

                    <div class="d-flex justify-content-center flex-wrap">
                        <div class="col-12 col-md-6 col-lg-6 m-2 form-floating">
                            <input type="text" class="form-control" name="nameProject" id="nameProject" placeholder="Nombre del proyecto" required>
                            <label for="nameProject">Nombre del proyecto</label>
                        </div>

                        <div class="col-12 col-md-3 col-lg-2 m-2">
                            <div class="form-floating">
                                <select class="form-select" id="membersCmb" onchange=setDynamicInputs()>
                                    <option value="1">1</option>
                                    <option value="2">2</option>
                                    <option value="3">3</option>
                                    <option value="4">4</option>
                                    <option value="5">5</option>
                                    <option value="6">6</option>
                                    <option value="7">7</option>
                                    <option value="8">8</option>
                                </select>
                                <label for="membersCmb">Num. Intergantes</label>
                            </div>
                        </div>

                    </div>

                    <div class="col-12 d-md-flex justify-content-center align-items-center">
                        <hr class="colorfull col-md-8 col-12 mt-4">
                    </div>

                    <div class="d-flex justify-content-center flex-wrap m-t3">

                        <div class="col-12 col-md-2 my-2 mx-3 mx-xl-5">
                            <div class="form-floating">
                                <input required onchange="checkNum(this)" type="number" class="form-control" name="enrollment0" id="enrollment0" placeholder="Matricula" value="" required>
                                <label for="enrollment0">Matricula</label>
                            </div>

                            <div class="form-check mt-2" hidden>
                                <input class="form-check-input" type="checkbox" name="attendance0" id="attendance0" >
                                <label class="form-check-label text-light" for="attendance0">
                                    Comprobar
                                </label>
                            </div>

                        </div>
                        <div class="col-12 col-md-7 col-lg-6 col-xl-4 my-2 mx-3 mx-xl-5">
                            <div class="form-floating">
                                <input type="text" class="form-control" name="name0" id="name0" required onkeyup="cambiaMayuscula()" placeholder="Nombre completo">
                                <label for="name0">Nombre completo</label>
                            </div>
                        </div>
                    </div>

                    <div class="mt-3" id="dynamicInputs">


                        <!-INPUTS DINAMICOS->

                    </div>

                    <!-                      key      |      password         ->
                    <!- User Student ->    matrícula   | apellidos_matrícula   ->

                    <div class="col-12 my-2" style="text-align:center;">
                        <a onclick="checkDuplicated()" class="col-md-4 col-sm-12 btn btn-primary">Registrar equipo</a>
                        <button id="regGuest" type="submit" class="col-md-4 col-sm-12 btn btn-primary" hidden>Registrar equipo</button>
                    </div>

                    <div id="duplicatedAlert" class="col-12 my-2" style="text-align:center;" hidden>
                        <h5 style="color: #39f6e4; text-shadow:0px 0px 20px grey; font-weight:normal;"> Comprueba que no se repitan matrículas </h5>
                    </div>

                </form>
            </div>


        </div>
    </div>
</div--->

<script type="text/javascript">
    // Lista de planes disponibles
    const Plans = ['420', '440'];

    // Llena el combo de planes al cargar
    function updateInputPlanCmb() {
        const sel = document.getElementById("planCmb");
        Plans.forEach(plan => {
            const opcion = document.createElement("option");
            opcion.classList.add("option-reg-class");
            opcion.value = plan;
            opcion.text = plan;
            opcion.style.textAlign = "center";
            sel.add(opcion);
        });

        // Actualiza valor inicial
        document.getElementById("plan").value = sel.value;
    }

    // Llena el combo de semestres al cargar
    function initSemesterCmb() {
        const select = document.getElementById("semesterCmb");
        for (let i = 2; i <= 10; i++) {
            const opcion = document.createElement("option");
            opcion.value = i;
            opcion.text = i;
            opcion.style.textAlign = "center";
            select.add(opcion);
        }
    }

    // Carga materias desde el backend según plan y semestre
    function updateInputSemesterCmb() {
        const plan = document.getElementById("planCmb").value;
        const semester = document.getElementById("semesterCmb").value;
        const select = document.getElementById("UACmb");

        // Limpiar materias previas
        select.innerHTML = "";

        fetch(`/teacherRegistroExpositor/subjects?plan=${plan}&semester=${semester}`)
            .then(response => response.json())
            .then(subjects => {
                subjects.forEach(materia => {
                    const opcion = document.createElement("option");
                    opcion.value = materia;
                    opcion.text = materia;
                    opcion.classList.add("option-reg-class");
                    select.add(opcion);
                });

                // Actualiza valores ocultos
                document.getElementById("plan").value = plan;
                document.getElementById("semester").value = semester;
                document.getElementById("UA").value = select.options.length > 0 ? select.options[0].value : '';
            })
            .catch(error => {
                console.error("❌ Error al obtener materias:", error);
            });
    }

    // Eventos iniciales al cargar la página
    document.addEventListener("DOMContentLoaded", function () {
        updateInputPlanCmb();
        initSemesterCmb();
        updateInputSemesterCmb(); // carga inicial

        // Si cambian plan o semestre, vuelve a cargar materias
        document.getElementById("planCmb").addEventListener("change", updateInputSemesterCmb);
        document.getElementById("semesterCmb").addEventListener("change", updateInputSemesterCmb);

        // Si cambia la materia seleccionada, actualiza el campo oculto UA
        document.getElementById("UACmb").addEventListener("change", function () {
            document.getElementById("UA").value = this.value;
        });
    });
</script>


    <script>
        function cambiaMayuscula (){
            $("#name0").val($("#name0").val().toUpperCase());
        }

    </script>
@endsection
