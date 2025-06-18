<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class teacher extends Model
{
    use SoftDeletes;

    protected $table = 'teachers';

        public function user()
    {
        return $this->belongsTo(User::class, 'user');
    }
    public function tokens()
    {
        return $this->hasMany(validation_tokens::class, 'teacher_id');
    }
}
