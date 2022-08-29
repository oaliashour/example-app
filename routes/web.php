<?php

use Illuminate\Support\Facades\Route;

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
    return view('welcome');
});

Route::get('/dashboard', function () {
    return view('dashboard');
})->middleware(['auth'])->name('dashboard');

require __DIR__.'/auth.php';

Route::get('/students', [\App\Http\Controllers\StudentController::class,'index']);
Route::get('/student', [\App\Http\Controllers\StudentController::class,'create']);
Route::get('/student/table', [\App\Http\Controllers\StudentController::class,'table'])->name('students.table');
Route::delete('/student/{student}', [\App\Http\Controllers\StudentController::class,'destroy'])->name('students.delete');
Route::get('/student/{student}', [\App\Http\Controllers\StudentController::class,'show'])->name('students.show');
Route::put('/student/{student}', [\App\Http\Controllers\StudentController::class,'update'])->name('students.update');
Route::get('/student/html-content', [\App\Http\Controllers\StudentController::class,'htmlContent'])->name('students.html-content');
Route::post('/student', [\App\Http\Controllers\StudentController::class,'store'])->name('students.store');
