<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;

use App\Http\Controllers\ProductsController;
use App\Http\Controllers\CategoriesController;
use App\Http\Controllers\UserController;

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

// Route::middleware('auth:sanctum')->get('/user', function (Request $request) {
//     return $request->user();
// });

// Route::get('products', function () {
//     return response(['Product 1', 'Product 2', 'Product 3'],200);
// });
 
// Route::get('products/{product}', function ($productId) {
//     return response()->json(['productId' => "{$productId}"], 200);
// });
  
 
// Route::post('products', function() {
//     return  response()->json([
//             'message' => 'Create success'
//         ], 201);
// });
 
// Route::put('products/{product}', function() {
//   return  response()->json([
//             'message' => 'Update success'
//         ], 200);
// });
 
// Route::delete('products/{product}',function() {
//     return  response()->json(null, 204);
// });

  
 
// Route::get('products', 'ProductsController@index');


Route::middleware('auth:api')->get('/user', function (Request $request) {
    return $request->user();
});

Route::post('/register', [UserController::class, 'register']);
Route::post('/login', [UserController::class, 'login']);

Route::get('/products', [ProductsController::class, 'index']);
 
// Route::get('products/{product}', 'ProductsController@show');
Route::get('/products/{product}', [ProductsController::class, 'show']);
Route::get('/category/products/{id}', [ProductsController::class, 'showProductsByCategory']);


 
// Route::post('products','ProductsController@store');
Route::post('/products', [ProductsController::class, 'store']);

 
// Route::put('products/{product}','ProductsController@update');
Route::post('products/{product}', [ProductsController::class, 'update']);

 
// Route::delete('products/{product}', 'ProductsController@delete');
Route::delete('products/{product}', [ProductsController::class, 'delete']);

Route::get('/products-by-category/{category}', [CategoriesController::class, 'listProductByCategory']);
Route::get('/categories', [CategoriesController::class, 'listAllCategory']);
