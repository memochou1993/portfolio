<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class WorkTag extends Model
{
    protected $table = 'work_tags';

    protected $fillable = [
        'type', 'name',
    ];

    public function work()
    {
        return $this->belongsTo(Work::class);
    }
}
