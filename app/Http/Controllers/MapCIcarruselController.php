<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\project;


class MapCIcarruselController extends Controller
{
    //
    public function index(){

        $renders = [
            [
                'render' => asset('images/MCI_B1.png'),
                'info' => 'Entrada del recinto'
            ],
            [
                'render' => asset('images/MCI_B2.png'),
                'info' => 'Vista aérea'
            ],
            [
                'render' => asset('images/MCI_B3.png'),
                'info' => 'Distribución derecha'
            ],
            [
                'render' => asset('images/MCI_B(2).png'),
                'info' => 'Entradas a Sala Embajadores'
            ],
            [
                'render' => asset('images/MCI_B4.png'),
                'info' => 'Distribución izquierda'
            ],
            [
                'render' => asset('images/MCI_B(1).png'),
                'info' => 'Entrada a Sala Cancilleres'
            ],
            [
                'render' => asset('images/MCI_B5.png'),
                'info' => 'Salones de usos múltiples'
            ],
            [
                'render' => asset('images/MCI_B6.png'),
                'info' => 'Salones de usos múltiples'
            ],
            [
                'render' => asset('images/MCI_B7.png'),
                'info' => 'Salones de usos múltiples'
            ],
            [
                'render' => asset('images/MCI_B(6).png'),
                'info' => 'Entrada al Salón 1'
            ],
            [
                'render' => asset('images/MCI_B(5).png'),
                'info' => 'Entrada al Salón 2'
            ]
        ];


        return view('MapCIcarrusel', compact('renders'));
    }


    
}

/* 



*/