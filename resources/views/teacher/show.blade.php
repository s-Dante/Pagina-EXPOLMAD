@extends('teacher.struct')

@section('Content')
    
<script
    src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.9.4/Chart.js">
</script>

<link rel="stylesheet" href="{{ asset('css/admin.css') }}">

<div class="col-sm p-3 min-vh-100 backgroundImg tab-pane dash-w">

    <div class="container-fluid">
        <div class="container-fluid justify-content-around">
            <div class="row Targets">
                <div class="col-12 align-items-center p-0 m-0">
                    <div class="row m-0 p-0 ">
                        <header class="header-proyecto col-12 d-flex justify-content-center  title-expositor m-0 p-0 py-4 mb-3">
                            <center><p class="title-expositor">LISTA DE PROYECTOS</p></center>
                        </header>

                        <div class="row justify-content-center mx-auto" style="width: 100%;">
                        @for ($i = 0; $i < count($final_data); $i++)
                            <div class="d-flex col-sm-4  justify-content-center align-items-center m-3 p-2"  style="">
                                <div class="class-subject-teacher-container d-flex align-items-center">
                                    <div class="class-subject-teacher justify-content-center px-2">
                                        <center>
                                            <div style="width: 80%"><h2 class="title-card-show-subject">{{$final_data[$i]['subject']}}</h2></div>
                                            <div style="width: 40%"><h4 class="sub-title-card-show-subject">{{$final_data[$i]['subject']}}</h4></div>
                                        </center>
                                        <center>
                                            <div class="data-card-show px-4">
                                                <div class="d-flex align-items-center">
                                                    <p class="text-card-show-subject" align="left" style="font-weight: 700;-">Token: {{$final_data[$i]['token']}}</p>
                                                    <button onclick="coppyToken(this.value)" class="button-coppy col-1 mx-auto" value="{{$final_data[$i]['token']}}"><img id="button-coppy-icon" src="{{ asset('images/iconCoppy.svg') }}"></button>
                                                </div>

                                                @for($j = 0; $j < count($final_data[$i]['data']); $j++)
                                                    <p class="text-card-show-subject" align="left">Matrícula: {{$final_data[$i]['data'][$j]['matricula']}}</p>
                                                    <p class="text-card-show-subject" align="left">Alumno: {{$final_data[$i]['data'][$j]['fullname']}}</p>
                                                @endfor
                                            </div>
                                        </center>
                                        
                                        <div class="p-2 px-5">
                                            <label class="d-flex justify-content-start align-items-center bulgy-checkboxes p-0 m-1 mb-3">
                                                <input type="checkbox" onclick="return false;" class="checkbox" @if ($final_data[$i]['active']) checked @endif >
                                                <span class="checkbox m-0 me-2"></span>
                                                <span class='label-reg-proyecto m-0 p-0 '>Datos Entregados</span>
                                            </label>
                                            <p class="underText mb-3">Cuando el alumno haya entregado sus datos, se marcará el checkbox</p>
                                        </div>
                                        <br>
                                    </div>
                                </div>
                            </div>
                        @endfor
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
</div>
</div>
</div>
</div>
</div>
</div>
    
        <script>

            function coppyToken(token){
                navigator.clipboard.writeText(token).then(() => {
                    console.log("Token copiado correctamente");
                    Swal.fire({
                        position: 'center',
                        icon: 'success',
                        iconColor: '#0de4fe',
                        title: `Token copiado correctamente`,
                        showConfirmButton: false,
                        timer: 1500
                    })


                }).catch(err => {
                    console.error("Error al copiar: ", err);
                    Swal.fire({
                        position: 'center',
                        icon: 'success',
                        iconColor: '#0de4fe',
                        title: `Error al copiar token`,
                        showConfirmButton: false,
                        timer: 1500
                    })
                });
            }

            /*
            document.getElementById("button-coppy-video").addEventListener("click", function() {
                        let textToCopy = document.getElementById("videoProject").innerText;
                        navigator.clipboard.writeText(textToCopy).then(() => {
                            console.log("Texto copiado correctamente");
                        }).catch(err => {
                            console.error("Error al copiar: ", err);
                        });
                    });

            */
        </script>

</div>

<!--div class="footer-card " style="left: 54%;">
    <p class="footer-card-text">Expo LMAD 8-Junio-2024</p>
    <img width="17" height="17" src="{{asset('images/icon-arrow-down.png')}}" alt="expand-arrow--v2" class="arrow-footer"/>
</div-->

@endsection