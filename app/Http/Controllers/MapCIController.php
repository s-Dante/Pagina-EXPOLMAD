<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\project;


class MapCIController extends Controller
{
  
    public function index(){
        $projects = project::all();
        return view('MapCI', compact('projects'));
    }

    public function obtenerDatos(Request $request)
    {
        // Obtener el valor seleccionado de los radio buttons
        $selectedOption = $request->input('selectedOption');
        $text='Subárea no seleccionada';
        switch ($selectedOption) {
            case 'option5':
                $projects = project::whereIn('subject', ['Administración de alto volumen de datos', 'Modelos de administración de datos', 'Base de datos multimedia', 'Programación Web I', 'Interfaz y Experiencia de Usuario'])
                                    ->select('subject', 'nameProject') // Selecciona la materia y el nombre del proyecto
                                    ->get();
                $text = 'Programación Subárea: Manejo de información y desarrollo web';
                break;
            case 'option6':
                $projects = project::whereIn('subject', ['Lógica Digital', 'Diseño de hápticos', 'Gráficas computacionales I', 'Gráficas computacionales II', 'Escenarios de videojuegos', 'Optimización de videojuegos', 'Diseño de videojuegos en línea'])
                                    ->select('subject', 'nameProject') // Selecciona la materia y el nombre del proyecto
                                    ->get();
                $text = 'Programación Subárea: Videojuegos';
                break;
            case 'option7':
                $projects = project::whereIn('subject', ['Programación Web I', 'Interfaz y Experiencia de Usuario'])
                                    ->select('subject', 'nameProject') // Selecciona la materia y el nombre del proyecto
                                    ->get();
                $text = 'Programación Subárea: Desarrollo web';
                break;
            case 'option8':
                $projects = project::whereIn('subject', ['Dibujo de la anatomía humana','Preproducción 2D','Ilustración digital',
                'Animación tradicional de humanos y animales','Animación tradicional de escenarios','Fotografía'])
                                    ->select('subject', 'nameProject') // Selecciona la materia y el nombre del proyecto
                                    ->get();                    
                $text = 'Arte Subárea: 2D';
                break;
            case 'option9':
                $projects = project::whereIn('subject', ['Modelado arquitectónico','Modelado orgánico','Animación básica',
                'Modelado en alto poligonaje','Actuación y dirección para animación','Esqueletos de personajes'])
                                    ->select('subject', 'nameProject') // Selecciona la materia y el nombre del proyecto                                                           
                                    ->get(); 
                $text = 'Arte Subárea: 3D';
                break;
            case 'option10':
                $projects = project::whereIn('subject', ['Tecnologías Multimedia','Producción multimedia','Preproducción de video',
                'Efectos visuales I','Efectos visuales II','Iluminación y Audio','Postproducción','Guionismo','Cinematografía'])
                                    ->select('subject', 'nameProject') // Selecciona la materia y el nombre del proyecto                                                           
                                    ->get(); 
                $text = 'Producción de Video y FX Subárea: Video y FX';
                break;
            case 'option11':
                $projects = project::whereIn('subject', ['Realidad Virtual'])
                                    ->select('subject', 'nameProject') // Selecciona la materia y el nombre del proyecto
                                    ->get();
                $text = 'Realidad Virtual Subárea: Realidad Virtual';
                break;
            default:
                // Manejo para el caso en que ninguna opción coincida
                $projects = project::all(); // Otra opción sería asignar null, dependiendo de tu lógica
                $text = 'Subárea no seleccionada';
                break;
        }
        // Retorna los datos como un array JSON
        return response()->json([
            'tableHeaderText' => $text,
            'tableContent' => $projects
       ]);
    }
}
