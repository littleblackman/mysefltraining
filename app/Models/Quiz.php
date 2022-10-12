<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Quiz extends Model
{
    use HasFactory;

    /**
     * Get the Course that owns the quiz
     */
    public function course()
    {
        return $this->belongsTo(Course::class, 'foreign_key');
    }
}
