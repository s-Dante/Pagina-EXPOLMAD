<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;
use App\Models\validation_tokens;
class project extends Model
{
    use HasFactory, SoftDeletes;

    public function validationToken() {
    return $this->hasOne(validation_tokens::class, 'proyect_id');
}

}
