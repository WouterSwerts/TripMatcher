<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Triptables extends Model
{
    use HasFactory;
    public $timestamps = false;


    protected $fillable = [
        'Image',
        'Title',
        'Summary',
        'Country_id',
        'Added_date'
    ];
}
