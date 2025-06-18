window.onload = function() {
    $("#programacionSubList").removeClass("d-none");
    $("#arteSubList").addClass("d-none");
    $("#videoSubList").addClass("d-none");
    $("#RVSubList").addClass("d-none");
};

function programacionCheck(){
    $("#programacionSubList").removeClass("d-none");
    $("#arteSubList").addClass("d-none");
    $("#videoSubList").addClass("d-none");
    $("#RVSubList").addClass("d-none");
}

function arteCheck(){
    $("#arteSubList").removeClass("d-none");
    $("#programacionSubList").addClass("d-none");
    $("#videoSubList").addClass("d-none");
    $("#RVSubList").addClass("d-none");
}

function videoCheck(){
    $("#programacionSubList").addClass("d-none");
    $("#arteSubList").addClass("d-none");
    $("#videoSubList").removeClass("d-none");
    $("#RVSubList").addClass("d-none");
}

function RVCheck(){
    $("#programacionSubList").addClass("d-none");
    $("#arteSubList").addClass("d-none");
    $("#videoSubList").addClass("d-none");
    $("#RVSubList").removeClass("d-none");
}