<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Usertable extends Model
{
    use HasFactory;

    public $timestamps = false;

    protected $fillable = [
        'Name',
        'Email',
        'Photo',
        'Password'
    ];
}
