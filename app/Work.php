<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Work extends Model
{
    protected $table = 'works';

    protected $fillable = [
        'title', 'date', 'content', 'full_text',
    ];

    public function tags()
    {
        return $this->hasMany(WorkTag::class);
    }
}
