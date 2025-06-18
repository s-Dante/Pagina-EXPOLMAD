<?php

namespace App\Http\Controllers;

use App\Models\validation_tokens;
use Illuminate\Http\Request;
use App\Models\User;
use App\Models\project;
use App\Models\projects_datas;
use App\Models\projectStudent;


require 'SendEmails.php'; 

class ProjectsMasterController extends Controller{
    
public function index(Request $request)
{
    $projectId = $request->query('projectID');

    if (!$projectId) {
        return redirect()->route('master.index')->with('status', 'ID de proyecto no especificado');
    }

    // Obtener proyecto con sus datos
    $project = project::find($projectId);
    $projectData = projects_datas::where('id_proyect', $projectId)->first();
    $projectStudents = projectStudent::with('studentData')->where('project', $projectId)->get();
    $token = validation_tokens::where('proyect_id', $projectId)->first();

    if (!$project || !$projectData) {
        return redirect()->route('master.index')->with('status', 'Proyecto no encontrado');
    }

    return view('master.projects', compact('project', 'projectData', 'projectStudents','token'));
}

    public function store(Request $request)
{
    $action = $request->input('action'); // Capturar la acción

    switch ($action) {
        case 'saveDescription':
            return $this->saveDescription($request);
        case 'returnProject':
            return $this->returnProject($request);
        case 'back':
            return $this->back();
        case 'accepted':
            return $this->accepted($request);
        case 'denied':
            return $this->denied($request);
        default:
            return back()->with('error', 'Acción no válida');
    }
}



public function saveDescription(Request $request)
    {
        $description = trim($request->input('editDescription'));
        $projectId = $request->input('projectID');

        // Validación de longitud
        if (strlen($description) < 1) {
            session()->flash("status", "Debe proporcionarse una descripción");
            return redirect()->route("projects.index", ['projectID' => $projectId]);
        }

        if (strlen($description) > 500) {
            session()->flash("status", "No se admiten más de 500 caracteres para la descripción del proyecto");
            return redirect()->route("projects.index", ['projectID' => $projectId]);
        }

        // Buscar el registro existente
        $projectData = projects_datas::where('id_proyect', $projectId)->first();

        if ($projectData) {
            $projectData->description = $description;
            $projectData->save();

            session()->flash("status", "Cambios guardados");
        } else {
            session()->flash("status", "No se encontró la información del proyecto");
        }

        return redirect()->route("projects.index", ['projectID' => $projectId]);
    }


    public function accepted(Request $request)
    {
        $projectId = $request->input('projectID');

        // Buscar el proyecto
        $project = project::find($projectId);

        if ($project) {
            $project->status = 1;
            $project->message=null;
            $project->save();

            session()->flash("status", "Proyecto aceptado correctamente");
        } else {
            session()->flash("status", "No se encontró el proyecto");
        }

        return redirect()->route("master.index");
    }


    public function denied(Request $request){
        //proyecto rechazado

        return redirect()->route("master.index");
    }

    public function returnProject(Request $request){
        // Validar longitud del mensaje
        if (strlen($request->msgEdit) > 500) {
            session()->flash("status", "No se admiten más de 500 caracteres para en el mensaje");
            return redirect()->route("projects.index");
        }

        $projectId = $request->input('projectID');

        // Buscar el proyecto y marcarlo como rechazado
        $project = project::find($projectId);
        if ($project) {
            $project->status = 2;
            $project->save();
        } else {
            session()->flash("status", "No se encontró el proyecto");
            return redirect()->route("projects.index");
        }

        $projectData = projects_datas::where('id_proyect', $projectId)->first();
        $correoExpositor = $projectData->email ?? null;

        if (!$correoExpositor) {
        session()->flash("status", "No se encontró el correo del expositor");
        return redirect()->route("projects.index");
        }   


        // Conversión de caracteres especiales
        $project_name_ascii = str_replace(
            ['Á', 'É', 'Í', 'Ó', 'Ú', 'Ñ', 'á', 'é', 'í', 'ó', 'ú', 'ñ'],
            ['&#193;', '&#201;', '&#205;', '&#211;', '&#218;', '&#209;', '&#225;', '&#233;', '&#237;', '&#243;', '&#250;', '&#241;'],
            $request->projectName
        );

        $msgEdit_ascii = str_replace(
            ['Á', 'É', 'Í', 'Ó', 'Ú', 'Ñ', 'á', 'é', 'í', 'ó', 'ú', 'ñ'],
            ['&#193;', '&#201;', '&#205;', '&#211;', '&#218;', '&#209;', '&#225;', '&#233;', '&#237;', '&#243;', '&#250;', '&#241;'],
            $request->msgEdit
        );


        $url = 'https://expolmad.sistemaregistrofcfm.com/inicioSesion';
        
    // *** COMENTADO TEMPORALMENTE: Envío de correo ***
    /*
    if (!notificarExpositor($correoExpositor, $msgEdit_ascii, $project_name_ascii, $url)) {  
        session()->flash("status", "Hay un problema para enviar el correo");
        return redirect()->route("projects.index");   
    }
    */
    
        $project->message = $msgEdit_ascii;
        $project->save();

        session()->flash("status", "El proyecto ha sido devuelto");
        return redirect()->route("projects.index");
    }

    public function back(){
        //nadota
        return redirect()->route("master.index");
    }
}