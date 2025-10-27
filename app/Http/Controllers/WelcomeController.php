<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class WelcomeController extends Controller
{
    public function index()
    {
        $conferences = [
            [
                'conference' => 'Dibujando mis sueños',
                'speaker' => 'Alex Carrillo',
                'image' => 'images/Room1.jpg'
            ],
            [
                'conference' => 'Doblaje, pasión y vida',
                'speaker' => 'José Luis Orozco',
                'image' => 'images/AmbassadorSchedules.jpg'
            ],
            [
                'conference' => 'Conferencia',
                'speaker' => 'Conferencista',
                'image' => 'images/ChancellorsSchedules.jpg'
            ]
        ];

        return view('welcome', compact('conferences'));
    }
}