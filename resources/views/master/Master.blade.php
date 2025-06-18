<!DOCTYPE html>
<html lang="en">

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
                            <a href="{{route('adminRegistroMaestros.index')}}" class="nav-link py-3 px-md-2 px-1" title=""
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
                            <h1 class="titlePage">Proyectos</h1>
                            <hr id="line">
                        </div>
                            <div class="row countersContainer">
                                <div class="col-md-12 col-lg-3 counters">
                                    <div class="target-wrapper">
                                        <span class="numbers">{{ $expositores }}</span>
                                        <span class="counterText">EXPOSITORES</span>
                                    </div>
                                </div>
                                <div class="col-md-12 col-lg-3 counters">
                                    <div class="target-wrapper">
                                        <span class="numbers">{{ $proyectosAceptados }}</span>
                                        <span class="counterText">PROYECTOS ACEPTADOS</span>
                                    </div>
                                </div>
                                <div class="col-md-12 col-lg-3 counters">
                                    <div class="target-wrapper">
                                        <span class="numbers">{{ $proyectosRecibidos }}</span>
                                        <span class="counterText">PROYECTOS RECIBIDOS</span>
                                    </div>
                                </div>
                                <div class="col-md-12 col-lg-3 counters">
                                    <div class="target-wrapper">
                                        <span class="numbers">{{ $proyectosRechazados }}</span>
                                        <span class="counterText">PROYECTOS RECHAZADOS</span>
                                    </div>
                                </div>
                            </div>

                        <div class="row" id="buttonsContainer">
                            <div class="col-md-1 col-lg-3"></div>
                            <div class="col-md-5 col-lg-3 buttoncontainer">
                                <button id="button-projectsUnderReview" onclick="filtrarRevisados(0)"><span class="bttnText">Proyectos en
                                        revisión</span></button>
                            </div>
                            <div class="col-md-5 col-lg-3 buttoncontainer">
                                <button id="button-acceptedProjects" onclick="filtrarRevisados(1)"><span class="bttnText">Proyectos
                                        aceptados</span></button>
                            </div>
                            <div class="col-md-1 col-lg-3"></div>
                        </div>
                        <div class="row headers" id="ProjectsUnderReview">
                            <span id="tittle-ProjectsUnderReview">Proyectos en revisión</span>
                            <hr>
                        </div>
                        <div class="row" id="comboboxContainer">
                            <div class="col-md-12 col-lg-1">
                                <p class="comboText">MATERIA:</p>
                            </div>
                            <div class="col-md-12 col-lg-5">
                                <form>
                                    <!--#materia-->
                                    <select id="materia" name="materia" name="materia" onchange="updateMaterias(this.value)" class="combo-box">
                                        <option value="opcion0">Seleccione una opción</option>
                                        <!--PINKUS-->
                                        @foreach ($materias as $item)
                                            <option value="{{$item}}">{{$item}}</option>
                                        @endforeach
                                    </select>
                                </form>
                            </div>
                            <div class="col-md-12 col-lg-1">
                                <p class="comboText">DOCENTE:</p>
                            </div>
                            <div class="col-md-12 col-lg-5">
                                <form>
                                    <!--#docente-->
                                    <select id="docente" name="docente" onchange="updateDocentes(this.value)" class="combo-box">
                                        <option value="opcion0">Seleccione una opción</option>
                                        <!--PINKUS-->
                                        @foreach ($docentes as $item)
                                            <option value="{{$item}}">{{$item}}</option>
                                        @endforeach
                                    </select>
                                </form>
                            </div>
                        </div>

                        <div wire:id="BoMSeULoJFHL73b3mqCp">
                            <div class="my-3 dashboard-t text-center">
                                <div class="mt-4">
                                    <h4 class="tableTittle">Información</h4>
                                </div>

                                <div class="table-responsive w-100">
                                    <table class="table w-75 mx-auto" id="table">
                                        <thead id="tableHeader">
                                            <tr>
                                                <th class="tableSubTittle">ID</th>
                                                <th class="tableSubTittle">Materia</th>
                                                <th class="tableSubTittle">Docente</th>
                                                <th class="tableSubTittle">Revisar</th>
                                            </tr>
                                        </thead>
                                        <tbody id="tbody">
                                            <form id="delete" method="post" enctype="multipart/form-data"
                                                action="http://127.0.0.1:8000/adminInicio/1753251"></form>
                                            <input type="hidden" name="_method" value="DELETE"> 
                                            <input type="hidden" name="_token" value="MHV1IcfWKOYOfW2rflsC1xegNh1WQZzi1Kz5foUD">
                                            
                                            <tr>
                                                <td></td>
                                                <td></td>
                                                <td>No fue posible cargar la información</td>
                                                <td></td>
                                            </tr>
                                        </tbody>
                                    </table>
                                </div>


                            </div>

                            <div class="row">
                                <div class="pagination">
                                    <button class="pagination-button" id="prev" onclick="cambiarPagina(-1)"></button>
                                    <span class="pagination-page" id="page-state">1</span>
                                    <button class="pagination-button" id="next" onclick="cambiarPagina(1)"></button>
                                </div>
                            </div>
                        </div>

                    </div>

                    <!-- Livewire Component wire-end:BoMSeULoJFHL73b3mqCp -->
                </div>

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


                <script> //PINKUS estos son los selects que filtran la información (por materia y docente)
                    
                    let datosOriginales = @json($dataProjects);
                    let datosFiltrados = [...datosOriginales];

                    let filtroMateria = 'opcion0';
                    let filtroDocente = '';
                    let filtroEstado = 0; // null = sin filtro, 0 = revisión, 1 = aceptado según yo, ahí lo cambias

                    let paginaActual = 0;
                    const proyectosPorPagina = 12;

                    function aplicarFiltros() {

                    datosFiltrados = datosOriginales.filter(item => {
                        const materiaMatch = (filtroMateria === 'opcion0' || item.materia === filtroMateria);
                        const docenteMatch = (!filtroDocente || item.nombre === filtroDocente);
                        const estadoMatch = (filtroEstado === null || item.estado === filtroEstado);
                        return materiaMatch && docenteMatch && estadoMatch;
                    });

                    if (datosFiltrados.length === 0) {
                        datosFiltrados = [...datosOriginales];
                        aplicarFiltros();
                    }

                    paginaActual = 0;
                    mostrarPagina();
                    }

                    function updateMaterias(materiaSeleccionada) {
                        filtroMateria = materiaSeleccionada;

                        let docenteSelect = $('#docente');
                        docenteSelect.empty().append('<option value="">Seleccione una opción</option>');

                        let relacion = @json($relacion);

                        if (materiaSeleccionada !== 'opcion0') {
                            let docentes = relacion.filter(persona => persona.materias.includes(materiaSeleccionada))
                                                .map(persona => persona.nombre);
                            docentes.forEach(docente => {
                                docenteSelect.append(new Option(docente, docente));
                            });
                        } else {
                            var docentes = @json($docentes);
                            docentes.forEach(docente => {
                                docenteSelect.append(new Option(docente, docente));
                            });
                        }

                        filtroDocente = '';
                        $('#docente').val('');

                        aplicarFiltros();
                    }

                    function updateDocentes(docenteSeleccionado) {
                        filtroDocente = docenteSeleccionado;
                        console.log("Filtro Docente:", docenteSeleccionado);
                        aplicarFiltros();
                    }

                    function filtrarRevisados(estado) {
                        filtroEstado = estado;
                        aplicarFiltros();
                    }

                    function mostrarPagina() {
                    console.log("Datos filtrados:", datosFiltrados);


                    const tbody = document.getElementById("tbody");
                    tbody.innerHTML = '';

                    const inicio = paginaActual * proyectosPorPagina;
                    const fin = Math.min(inicio + proyectosPorPagina, datosFiltrados.length);

                    for (let i = inicio; i < fin; i++) {
                        const item = datosFiltrados[i];
                        const tr = document.createElement('tr');
                        tr.innerHTML = `
                            <td>${item.id}</td>
                            <td>${item.materia}</td>
                            <td class="td-nombre">${item.nombre}</td>
                            <td>
                                <form class="btn-pad" method="GET" action="{{ route('projects.index') }}">
                                    <input type="hidden" name="projectID" value="${item.id}">
                                    <button class="btn btn-primary mx-2" type="submit">
                                        <i class="iconBtn">
                                            <img src="{{ asset('images/BtnRevisar.png') }}" />
                                        </i> Revisar Proyecto
                                    </button>
                                </form>
                            </td>
                        `;
                        tbody.appendChild(tr);
                    }

                    document.getElementById("prev").disabled = (paginaActual === 0);
                    document.getElementById("next").disabled = (fin >= datosFiltrados.length);
                    document.getElementById("page-state").textContent = paginaActual + 1;

                    if(filtroEstado!==null && filtroEstado===0){
                        document.getElementById("tittle-ProjectsUnderReview").textContent = 'Proyectos en revisión';
                    } else if (filtroEstado!==null && filtroEstado===1){
                        document.getElementById("tittle-ProjectsUnderReview").textContent = 'Proyectos aceptados';
                    }
                }

                function cambiarPagina(direccion) {
                    paginaActual += direccion;
                    mostrarPagina();
                }

                // Mostrar la primera página al cargar
                mostrarPagina();


                </script>


            
            </div>


            @yield('Content')

            @livewireScripts
        </div>
    </div>
</body>

</html>