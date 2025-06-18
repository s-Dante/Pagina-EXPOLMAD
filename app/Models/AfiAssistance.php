<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class AfiAssistance extends Model
{
    use HasFactory;

    protected $table = 'afi_assistances';

    protected $fillable = [
        'matricula',
        'conferencia_id',
        'asistio',
    ];

    /**
     * Relación con el evento/conferencia.
     * Un registro de asistencia pertenece a un evento.
     */
    public function event()
    {
        return $this->belongsTo(Event::class, 'conferencia_id');
    }
}
