<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\CountrytableController;
use App\Http\Controllers\CategorytableController;
use \App\Models\countrytable;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| is assigned the "api" middleware group. Enjoy building your API!
|
*/

Route::middleware('auth:sanctum')->get('/user', function (Request $request) {
    return $request->user();
});

//Route::get('countrytable', "CountrytableController@index"); // List Posts
//Route::post('countrytable', "CountrytableController@store"); // Create Post
//Route::get('countrytable/{id}', "CountrytableController@show"); // Detail of Post
//Route::put('countrytable/{id}', "CountrytableController@update"); // Update Post
//Route::delete('countrytable/{id}', "CountrytableController@destroy"); // Delete Post

Route::resource('countrytable', CountrytableController::class);

Route::resource('categorytable', CategorytableController::class);
