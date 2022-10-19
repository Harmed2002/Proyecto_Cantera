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

Auth::routes();

Route::get('/home', 'HomeController@index')->name('home');

Route::group(['middleware' => ['permission:all']], function () {
     //Users
     Route::get('/listUsers', 'Admin\UserController@index')->name('listUsers');
     Route::get('/deleteUser', 'Admin\UserController@delete')->name('deleteUser');
     Route::post('/saveUser', 'Admin\UserController@save')->name('saveUser');
 
     //Permissions
     Route::get('/listPermissions', 'Admin\PermissionController@index')->name('listPermissions');
     Route::get('/deletePermission', 'Admin\PermissionController@delete')->name('deletePermission');
     Route::post('/savePermission', 'Admin\PermissionController@save')->name('savePermission');
 
     //Roles
     Route::get('/listRoles', 'Admin\RoleController@index')->name('listRoles');
     Route::get('/deleteRole', 'Admin\RoleController@delete')->name('deleteRole');
     Route::post('/saveRole', 'Admin\RoleController@save')->name('saveRole');
 
});




