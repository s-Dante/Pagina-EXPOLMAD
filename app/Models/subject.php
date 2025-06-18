<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class subject extends Model
{
    use HasFactory, SoftDeletes;

    protected $table = 'subjects';

    public $timestamps = false; // si no tienes created_at ni updated_at

    protected $fillable = ['nombre_materia', 'semestre', 'plan'];
}
