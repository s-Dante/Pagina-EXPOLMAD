<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\AfiAssistance;
use App\Models\event;

class AfiAssistantsController extends Controller
{
    public function index()
    {
        $events = event::all(); // obtener todos los eventos
        $asistencias = AfiAssistance::with('event')->get(); // obtener asistencias con relación al evento

        return view('AfiAssistants', compact('events', 'asistencias'));
    }

    public function store(Request $request)
    {
        $matricula = $request->input('asisAFImatr');
        $eventoId = $request->input('conferencia');

        if (strlen($matricula) != 7 || !is_numeric($matricula)) {
            session()->flash("status", "Matrícula no válida");
            return redirect()->route("AfiAssistants.index");
        }

        // Verificar si ya existe la asistencia
        $yaRegistrado = AfiAssistance::where('matricula', $matricula)
            ->where('conferencia_id', $eventoId)
            ->exists();

        if ($yaRegistrado) {
            session()->flash("status", "La matrícula ya fue registrada en esta conferencia");
            return redirect()->route("AfiAssistants.index");
        }

        AfiAssistance::create([
            'matricula' => $matricula,
            'conferencia_id' => $eventoId,
            'asistio' => false,
        ]);

        session()->flash("status", "El registro fue exitoso");
        return redirect()->route("AfiAssistants.index");
    }

public function update(Request $request, $id)
{
    $asistencia = AfiAssistance::find($id);

    if (!$asistencia) {
        return response()->json(['success' => false, 'message' => 'Asistencia no encontrada'], 404);
    }

    $asistio = $request->input('asistio');

    if (!is_bool($asistio) && !in_array($asistio, [0, 1, '0', '1'], true)) {
        return response()->json(['success' => false, 'message' => 'Parámetro inválido'], 400);
    }

    $asistencia->asistio = filter_var($asistio, FILTER_VALIDATE_BOOLEAN);
    $asistencia->save();

    return response()->json(['success' => true]);
}




}
