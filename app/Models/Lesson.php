<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Lesson extends Model
{
    use HasFactory;

    /**
     * Get the Course that owns the lesson
     */
    public function course()
    {
        return $this->belongsTo(Course::class, 'foreign_key');
    }
}
