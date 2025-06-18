<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Str;
use App\Models\project;
use App\Models\event;
use App\Models\eventRegisterPeople;

class AfiIDRegisterController extends Controller
{

      /**
     * @return \Illuminate\Http\Response
     */
    public function index(){
        $events = event::get();
        return view('AfiIDRegister', compact('events'));
    }

   //public funciton

    /**
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    
    
    public function store(Request $request){
    
        //Longitud 80 (modificar)
    
        if (strlen($request->regIDtext) > 4){
            session()->flash("status", "El límite de ingreso son 1500");
            return redirect()->route("AfiIDRegister.index");
        }

        $regID = intval($request->regIDtext); // Convierte el texto a un valor numérico entero

        if ($regID > 1500) {
            session()->flash("status", "El límite de ingreso son 1500");
            return redirect()->route("AfiIDRegister.index");
        }
        
        if (is_numeric($request->regIDtext) != 1){
            session()->flash("status", "El ID solo debe contener números");
            return redirect()->route("AfiIDRegister.index");
        }

        $eventRegisterPeople = eventRegisterPeople::find($request->regIDtext);


        if ($eventRegisterPeople) {
            $eventRegisterPeople->attended = 1; 
            $eventRegisterPeople->save();
    
            session()->flash("status", "Asistencia actualizada correctamente");
        } else {
            session()->flash("status", "Registro no encontrado");
        }

       return redirect()->route('AfiIDRegister.index');

    }
    
}
