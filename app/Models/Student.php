<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Student extends Model
{
    use HasFactory;

    protected $fillable = [
        'name',
        'address',
        'mobile',
        'birth_date',
        'age',
        'profile_image'
    ];

    protected $casts = [
        'birth_date' => 'date:Y-m-d'
    ];
    public function university()
    {
        return $this->belongsTo(University::class, 'university_id', 'id');
    }


    public function courses()
    {
        return $this->belongsToMany(Course::class);
    }
}
