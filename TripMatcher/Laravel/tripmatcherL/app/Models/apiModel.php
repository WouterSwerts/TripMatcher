<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class apiModel extends Model
{
    use HasFactory;
    // public $timestamps = false;
    // protected $table = 'triptable';


    protected $fillable = ['Image','Title', 'Summary', 'Country_id', 'Added_date'];
}
