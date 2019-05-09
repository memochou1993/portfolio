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

Route::get('/', ['as' =>'home.index', 'uses' => 'WorkController@index']);

Route::resource('works', 'WorkController', ['except' => ['destroy',]]);
Route::resource('works.workTags', 'WorkTagController', ['except' => ['index', 'show', 'edit', 'update']]);

Route::get('workTags/search', ['as' =>'workTags.search', 'uses' => 'WorkTagController@search']);

Route::get('admin', function () {
    return redirect('login');
});
