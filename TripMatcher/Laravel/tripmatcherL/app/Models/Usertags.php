<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Usertags extends Model
{
    use HasFactory;

    public $timestamps = false;

    protected $fillable = [
        'User_id',
        'Category_id'
    ];
}
