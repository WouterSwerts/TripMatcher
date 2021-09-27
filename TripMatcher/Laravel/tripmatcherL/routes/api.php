<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\CountrytableController;
use App\Http\Controllers\CategorytableController;
use App\Http\Controllers\TriptableController;
use App\Http\Controllers\UsertableController;
use App\Http\Controllers\UsertagsController;
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

Route::resource('countrytable', CountrytableController::class);

Route::resource('categorytable', CategorytableController::class);

Route::resource('triptable', TriptableController::class);

Route::resource('usertable', UsertableController::class);

Route::resource('usertableCreate', UsertableController::class)->only('store');

Route::resource('usertags', UsertagsController::class)->only('store');

// Route::resource('triptable', TriptableController::class, [
//     'id' => 'Trip_id'
// ]);
