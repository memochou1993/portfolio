<?php

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

Auth::routes();

Route::get('/', 'WorkController@index')->name('home.index');

Route::group(['middleware' => 'auth'], function () {
    Route::resource('works', 'WorkController')->only('create', 'store', 'edit', 'update');
    Route::resource('works.workTags', 'WorkTagController')->only('create', 'store', 'destroy');
    Route::get('workTags/search', 'WorkTagController@search')->name('workTags.search');
});

Route::resource('works', 'WorkController')->only('index', 'show');

Route::get('admin', function () {
    return redirect('login');
});
