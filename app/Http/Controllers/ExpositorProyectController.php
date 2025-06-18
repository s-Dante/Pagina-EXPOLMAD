<?php

namespace App\Http\Controllers;

use App\Models\validation_tokens;
use Illuminate\Http\Request;
use App\Models\User;
use App\Models\project;
use App\Models\projects_datas;
use App\Models\projectStudent;
use Illuminate\Support\Facades\Storage;


class ExpositorProyectController extends Controller{


public function index(Request $request)
{
    $projectId = $request->query('projectID');

    if (!$projectId) {
        return redirect()->route('expositorQR.index')->with('status', 'Proyecto no especificado');
    }

    $user = User::where('id', session()->get('id'))->first();
    // Validar si el usuario actual (expositor) está asociado a este proyecto
    $isParticipant = projectStudent::where('project', $projectId)
        ->where('student', $user->key) // Aquí usamos el campo `key` del User para validar contra la matrícula
        ->exists();

    if (!$isParticipant) {
        return redirect()->route(route: 'expositorQR.index')->with('status', 'Acceso no autorizado al proyecto');
    }

    // Ya validado, continuamos cargando los datos
    $project = project::find($projectId);
    $projectData = projects_datas::where('id_proyect', $projectId)->first();
    $projectStudents = projectStudent::with('studentData')->where('project', $projectId)->get();
    $token = validation_tokens::where('proyect_id', $projectId)->first();

    if (!$project || !$projectData) {
        return redirect()->route('expositorQR.index')->with('status', 'Proyecto no encontrado');
    }

    return view('expositor.projects', compact('project', 'projectData', 'projectStudents', 'token'));
}


   public function store(Request $request)
{
    $action = $request->input('action');

    switch ($action) {
        case 'saveChanges':
            return $this->saveChanges($request);
        case 'resendProyect':
            return $this->resendProyect($request);
        default:
            return back()->with('status', 'Acción no válida');
    }
}

public function saveChanges(Request $request)
{
    $projectId = $request->input('projectID');

    $description = trim($request->input('editDescription'));
    $video = trim($request->input('editVideo'));
    $url = trim($request->input('editURL'));

    // Validaciones de texto
    if (strlen($description) > 200) {
        return redirect()->route("expositorProyecto.index", ['projectID' => $projectId])
            ->with("status", "No se admiten más de 200 caracteres para la descripción del proyecto");
    }

    if (strlen($video) > 50) {
        return redirect()->route("expositorProyecto.index", ['projectID' => $projectId])
            ->with("status", "No se admiten más de 50 caracteres para la URL del video promocional");
    }

    if (strlen($video) < 10 || !str_contains($video, "youtube.com")) {
        return redirect()->route("expositorProyecto.index", ['projectID' => $projectId])
            ->with("status", "No son suficientes caracteres para el video promocional, revisa la url");
    }

    if (strlen($url) > 100) {
        return redirect()->route("expositorProyecto.index", ['projectID' => $projectId])
            ->with("status", "No se admiten más de 100 caracteres para la URL del enlace a proyecto");
    }

    if (!filter_var($video, FILTER_VALIDATE_URL)) {
        return redirect()->route("expositorProyecto.index", ['projectID' => $projectId])
            ->with("status", "El video promocional no es una url válida a YouTube");
    }

    if (!filter_var($url, FILTER_VALIDATE_URL)) {
        return redirect()->route("expositorProyecto.index", ['projectID' => $projectId])
            ->with("status", "El enlace a proyecto no es una url válida");
    }

    // Buscar datos del proyecto
    $projectData = projects_datas::where('id_proyect', $projectId)->first();
    $project = project::find($projectId);

    if ($projectData && $project) {
        $projectData->description = $description;
        $projectData->video_url = $video;
        $projectData->drive_url = $url;

        // Validar imagen si fue enviada
        if ($request->hasFile('imgProject')) {
            $file = $request->file('imgProject');
            $allowedFileTypes = ['jpeg', 'png', 'jpg'];

            if ($file->getSize() > 10000000 || !in_array($file->getClientOriginalExtension(), $allowedFileTypes)) {
                return redirect()->route("expositorProyecto.index", ['projectID' => $projectId])
                    ->with("status", "La imagen no tiene las características permitidas");
            }
        
            $fileName = $project->nameProject . "_" . $project->id . "_" . $file->getClientOriginalName();
            Storage::disk('public')->put($fileName, file_get_contents($file));
            $projectData->imagen_url = $fileName;
        }


        $projectData->save();

        return redirect()->route("expositorProyecto.index", ['projectID' => $projectId])
            ->with("status", "Cambios guardados");
    }

    return redirect()->route("expositorProyecto.index", ['projectID' => $projectId])
        ->with("status", "No se encontró la información del proyecto");
}



    public function resendProyect(Request $request){
       $projectId = $request->input('projectID');

        // Buscar el proyecto
        $project = project::find($projectId);

        if ($project) {
            $project->status = 0;
            $project->message="Proyecto Corregido";
            $project->save();

            session()->flash("status", "El proyecto ha sido renviado");
        } else {
            session()->flash("status", "Ocurrio un error, intente denuevo mas tarde");
        }
        return redirect()->route("expositorQR.index");
    }

}