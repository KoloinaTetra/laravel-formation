<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Str;
use Illuminate\Support\Facades\DB;

use App\Models\Category;

class CategoriesController extends Controller{

    public function listAllCategory(){
        $data = Category::all();
        return response()->json($data);
    }
}
