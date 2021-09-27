<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\apiController;


/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Route::get('/', function () {
    return view('index');
})->name('home.index');
Route::get('/edit', function () {
    return view('edit');
})->name('index.edit');
Route::delete('/delete', function () {
    return view('delete');
})->name('index.delete');
Route::post('apiModel/create', function () {
    return view('create');
})->name('index.create');

Route::resource('apiModel', apiController::class);
