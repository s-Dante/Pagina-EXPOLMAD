<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\validation_tokens;
use App\Models\teacher;
use App\Models\project;
use Illuminate\Support\Facades\DB;
use App\Models\projectStudent;

class MasterController extends Controller
{
    public function index()
    {
        $tokens = validation_tokens::with(['teacher', 'project'])
            ->where('used', 1)
            ->get();

        $dataProjects = $tokens->map(function ($token) {
            return [
                'id' => $token->project->id ?? null,
                'materia' => $token->subject,
                'nombre' => $token->teacher->fullName ?? 'Desconocido',
                'estado' => $token->project->status ?? 0
            ];
        });

        $materias = $tokens->pluck('subject')->unique()->values();

        $docentes = $tokens->map(function ($token) {
            return $token->teacher->fullName ?? 'Desconocido';
        })->unique()->values();

        $relacion = [];
        foreach ($tokens as $token) {
            $nombreDocente = $token->teacher->fullName ?? 'Desconocido';
            if (!isset($relacion[$nombreDocente])) {
                $relacion[$nombreDocente] = [];
            }
            if (!in_array($token->subject, $relacion[$nombreDocente])) {
                $relacion[$nombreDocente][] = $token->subject;
            }
        }

        $relacion = collect($relacion)->map(function ($materias, $nombre) {
            return [
                'nombre' => $nombre,
                'materias' => $materias
            ];
        })->values();

        // -----------------------------
        // MÉTRICAS PARA DASHBOARD
        // -----------------------------

        $projectIds = $dataProjects->pluck('id')->filter()->unique()->toArray();

        // Total de expositores únicos
        $expositores = projectStudent::whereIn('project', $projectIds)
            ->pluck('student')
            ->unique()
            ->count();

        // Proyectos aceptados (status = 1)
        $proyectosAceptados = project::whereIn('id', $projectIds)
            ->where('status', 1)
            ->count();

        // Proyectos recibidos (todos)
        $proyectosRecibidos = project::whereIn('id', $projectIds)
            ->count();

        // Proyectos rechazados (status = 0)
        $proyectosRechazados = project::whereIn('id', $projectIds)
            ->where('status', 0)
            ->count();

        return view('master.Master', compact(
            'docentes',
            'materias',
            'relacion',
            'dataProjects',
            'expositores',
            'proyectosAceptados',
            'proyectosRecibidos',
            'proyectosRechazados'
        ));
    }
}

