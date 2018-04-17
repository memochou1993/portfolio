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

Route::resource('work', 'WorkController', ['except' => ['destroy',]]);
Route::resource('work.workTag', 'WorkTagController', ['except' => ['index', 'show', 'edit', 'update']]);

Route::get('workTag/search', ['as' =>'workTag.search', 'uses' => 'WorkTagController@search']);
