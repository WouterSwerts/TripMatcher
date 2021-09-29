<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Support\Facades\Storage;
use Illuminate\Database\Eloquent\Factories\HasFactory;

class TripImage extends Model
{
    use HasFactory;

    public function url() {
        Storage::url($this->path);
    }
}
