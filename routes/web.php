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

Route::get('/', ['as' =>'home.index', 'uses' => 'HomeController@index']);
Route::get('about', ['as' =>'home.about', 'uses' => 'HomeController@about']);

Route::prefix('works')->group(function () {
    Route::get('/', ['as' =>'works.index', 'uses' => 'WorkController@index']);
    Route::get('add', ['as' =>'works.showAddForm', 'uses' => 'WorkController@showAddForm'])->middleware('auth');
    Route::post('add', ['as' =>'works.add', 'uses' => 'WorkController@add'])->middleware('auth');
    Route::get('view/{work}', ['as' =>'works.view', 'uses' => 'WorkController@view']);
    Route::get('edit/{work}', ['as' =>'works.showEditForm', 'uses' => 'WorkController@showEditForm'])->middleware('auth');
    Route::post('edit/{work}', ['as' =>'works.edit', 'uses' => 'WorkController@edit'])->middleware('auth');
    Route::get('integrate/{work}', ['as' =>'works.integrate', 'uses' => 'WorkController@integrate'])->middleware('auth');
});

Route::prefix('workTags')->group(function () {
    Route::get('add/{work}', ['as' =>'workTags.showAddForm', 'uses' => 'WorkTagController@showAddForm']);
    Route::post('add/{work}', ['as' =>'workTags.add', 'uses' => 'WorkTagController@add']);
    Route::get('update/{work}', ['as' =>'workTags.showUpdateForm', 'uses' => 'WorkTagController@showUpdateForm']);
    Route::post('update/{work}', ['as' =>'workTags.update', 'uses' => 'WorkTagController@update']);
    Route::get('destroy/{work_tag}', ['as' =>'workTags.destroy', 'uses' => 'WorkTagController@destroy']);
    Route::get('search', ['as' => 'workTags.search', 'uses' => 'WorkTagController@search']);
});

Route::get('test', ['as' => 'workTags.test', 'uses' => 'WorkTagController@test']);
