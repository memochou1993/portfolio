<?php

namespace App;

use Carbon\Carbon;
use Illuminate\Database\Eloquent\Model;

class Work extends Model
{
    protected $table = 'works';

    protected $fillable = [
        'title',
        'begin_date',
        'end_date',
        'content',
        'full_text',
    ];

    public function setBeginDateAttribute($begin_date)
    {
        $this->attributes['begin_date'] = Carbon::createFromFormat('Y.m', $begin_date)->format('Y-m');
    }

    public function setEndDateAttribute($end_date)
    {
        $this->attributes['end_date'] = Carbon::createFromFormat('Y.m', $end_date)->format('Y-m');
    }

    public function getBeginDateAttribute($begin_date)
    {
        return Carbon::parse($begin_date)->format('Y.m');
    }

    public function getEndDateAttribute($end_date)
    {
        return Carbon::parse($end_date)->format('Y.m');
    }

    public function tags()
    {
        return $this->hasMany(WorkTag::class);
    }
}
