<?php

namespace App\Http\Controllers;

use Exception;
use App\Models\Product;
use Illuminate\Http\Request;
use Illuminate\Support\Str;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Storage;

class ProductsController extends Controller
{

    public function index()
    {
        $data = Product::all();
        return response()->json($data);
    }

    public function showProductsByCategory(int $id)
    {
        // return $product;
        $product = DB::table('categories')
                ->join('products', 'categories.id', '=', 'products.category_id')
                ->select('categories.name', 'products.*')
                ->where('categories.id', $id)
                ->get();
        return response()->json(['products'=>$product]);
    }
 
    public function show(Product $product)
    {
        // return $product;
        return response()->json([
            'product'=>$product
        ]);
    }
 
    public function store(Request $request)
    {

        $request->validate([
            'title'=>'required',
            'description'=>'required',
            'price'=>'required',
            'file'=>'required|image'
        ]);

        $file = $request->file;

        $file_dir = "public/storage/img"; // <=> http://localhost:7000/storage/img
        $file_name = uniqid() . "_" . $file->getClientOriginalName();

        try {
            $file->move(base_path($file_dir), $file_name);
        }
        catch(Exception $e){
            // TODO: nothing
        }

        $product = Product::create($request->post() + ['namefile_img' => $file_name]);
        $product = json_decode("$product");

        $result = [
            "product" => $product,
            "message" => "Product created",
        ];

        return response()->json($result, 201);
    }
 
    public function update(Request $request, Product $product)
    {

        $request->validate([
            'title'=>'required',
            'description'=>'required',
            'price'=>'required',
        ]);

        $file = $request->file;
        $file_data = [];

        if(is_object($file)){
            $file_dir = "public/storage/img"; // <=> http://localhost:7000/storage/img
            $file_name = uniqid() . "_" . $file->getClientOriginalName();
            $file_data = ['namefile_img' => $file_name];

            try {
                $file->move(base_path($file_dir), $file_name);
            }
            catch(Exception $e){
                // TODO: nothing
            }
        }

        $product = $product->update($request->post() + $file_data);
        $product = json_decode("$product");

        $result = [
            "product" => $product,
            "message" => "Product created",
        ];

        return response()->json($result, 200);
    }
 
    public function delete(Product $product)
    {
        $product->delete();
 
        return response()->json(null, 204);
    }
}
