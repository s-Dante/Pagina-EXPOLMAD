<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Str;
use App\Models\project;
use App\Models\event;
use App\Models\eventRegisterPeople;

class AfiRegisterController extends Controller
{

      /**
     * @return \Illuminate\Http\Response
     */
    public function index(){
        $events = event::get();
        return view('AfiRegister', compact('events'));
    }

   //public funciton

    /**
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    
    
    public function store(Request $request){
    
        //Longitud 80 (modificar)
        if (strlen($request->regAFIname) > 80){
            session()->flash("status", "No se admiten más de 80 caracteres para el Nombre completo");
            return redirect()->route("AfiRegister.index");
        }
        
        //No caracteres especiales y al menos dos nombres
        $request->validate([
            'regAFIname' => ['required', 'regex:/^[a-zA-Z0-9áéíóúÁÉÍÓÚñÑüÜ]+(\s[a-zA-Z0-9áéíóúÁÉÍÓÚñÑüÜ]+){1,}$/'],
        ], [
            session()->flash("status", "El nombre debe contener al menos dos palabras y sin caracteres especiales")
        ]);

        if (strlen($request->regAFIdep) > 50){
            session()->flash("status", "No se admiten más de 50 caracteres para la dependencia");
            return redirect()->route("AfiRegister.index");
        }

     $request->validate([
            'regAFIdep' => ['nullable', 'regex:/^[a-zA-Z0-9áéíóúÁÉÍÓÚñÑüÜ]+(?:\s[a-zA-Z0-9áéíóúÁÉÍÓÚñÑüÜ]+)*$/'],
        ], [
            session()->flash("status", "La dependencia no debe tener caracteres especiales")
        ]);
    
        if (strlen($request->regAFImatr) != 7){
            session()->flash("status", "Matrícula no válida, deben ser 7 caracteres");
            return redirect()->route("AfiRegister.index");
        }

        if (is_numeric($request->regAFImatr) != 1){
            session()->flash("status", "Matrícula no válida, ingrese solo números");
            return redirect()->route("AfiRegister.index");
        }

        if (preg_match('/^\S+\.\S+@uanl.edu.mx/', ($request->regAFIemail)) != 1){
            session()->flash("status", "El correo ingresado no es válido o institucional");
            return redirect()->route("AfiRegister.index");
        }

        $existingRegistration = eventRegisterPeople::where('event', $request        ->selectConferencia)
            ->where('enrollment', $request->regAFImatr)
            ->first();
        
        if ($existingRegistration) {
            session()->flash("status", "Ya estás registrado en este evento");
            session()->flash("registro_id", $existingRegistration->id); // Aquí agregas         el ID
            return redirect()->route("AfiRegister.index");
        }


        $eventlimit = event::where('id', $request->selectConferencia)->first();
        if (!$eventlimit) {
            session()->flash("status", "Evento no encontrado");
            return redirect()->route("AfiRegister.index");
        }

        //LIMITES DE CONFERENCIAS
        $registrationsCount = eventRegisterPeople::where('event', $eventlimit->id)->count();
        if ($registrationsCount >= $eventlimit->limit) {
        session()->flash("status", "El evento esta lleno");
        return redirect()->route("AfiRegister.index");
        }

        $eventRegisterPeople= new eventRegisterPeople();
        $eventRegisterPeople->event=$request->selectConferencia;
        if($request->selectFacultad === 'Otro(s)'){
            $eventRegisterPeople->dependency=$request->regAFIdep;
        }else{
            $eventRegisterPeople->dependency=$request->selectFacultad;
        }
        if($request->selectCarrera){
            $eventRegisterPeople->career=$request->selectCarrera;
        }else{
            $eventRegisterPeople->career=null;
        }
        $eventRegisterPeople->registerName=$request->regAFIname;
        $eventRegisterPeople->enrollment=$request->regAFImatr;
        $eventRegisterPeople->email=$request->regAFIemail;
        if ($eventRegisterPeople->save()) {
            session()->flash("status", "El registro fue exitoso");
            session()->flash("registro_id", $eventRegisterPeople->id); // Guardas ID por         separado
        } else {
            session()->flash("status", "Hubo un problema en el registro");
        }

       return redirect()->route('AfiRegister.index');

    }
    

    /*
    function test_input($data) {
        $data = trim($data);
        $data = stripslashes($data);
        $data = htmlspecialchars($data);
        return $data;
    }
    */
}
