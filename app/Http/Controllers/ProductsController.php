<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Str;
use Illuminate\Support\Facades\DB;

use App\Models\Product;



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

        // $request->validate([
        //     'title'=>'required',
        //     'description'=>'required',
        //     'price'=>'required',
        //     'namefile_img'=>'required|image'
        // ]);

        // try{
        //     $imageName = Str::random().'.'.$request->image->getClientOriginalExtension();
        //     Storage::disk('public')->putFileAs('product/image', $request->image,$imageName);
        //     Product::create($request->post()+['image'=>$imageName]);

        //     return response()->json([
        //         'message'=>'Product Created Successfully!!'
        //     ]);
        // }catch(\Exception $e){
        //     \Log::error($e->getMessage());
        //     return response()->json([
        //         'message'=>'Something goes wrong while creating a product!!'
        //     ],500);
        // }
        $product = Product::create($request->all());
 
        return response()->json($product, 201);
    }
 
    public function update(Request $request, Product $product)
    {

        
        $product->update($request->all());
 
        return response()->json($product, 200);
    }
 
    public function delete(Product $product)
    {
        $product->delete();
 
        return response()->json(null, 204);
    }
}
