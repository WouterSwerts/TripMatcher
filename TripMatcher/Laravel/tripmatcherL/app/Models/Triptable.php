<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Triptable extends Model
{
    use HasFactory;
    protected $fillable = ['Image','Title', 'Summary', 'Country_id', 'Added_date'];
}
