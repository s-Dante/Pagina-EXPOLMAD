<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class validation_tokens extends Model
{
    use SoftDeletes;

    protected $table = 'validation_tokens';

    public function teacher()
    {
        return $this->belongsTo(teacher::class, 'teacher_id');
    }

    public function project()
    {
        return $this->belongsTo(project::class, 'proyect_id');
    }
}
