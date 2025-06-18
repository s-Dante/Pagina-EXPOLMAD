<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class student extends Model
{
    use HasFactory, SoftDeletes;

    protected $primaryKey = 'enrollment';
    public $incrementing = false;

    protected $fillable = [
        'enrollment',
        'fullName'
    ];


public function getFullName($value)
{
    return strtoupper($value);
}


        public function projects()
    {
        return $this->hasMany(ProjectStudent::class, 'student', 'enrollment');
    }
}