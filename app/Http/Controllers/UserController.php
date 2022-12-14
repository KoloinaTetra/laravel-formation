<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\User;
use Illuminate\Support\Facades\Hash;

class UserController extends Controller
{
    //
    function register(Request $req)
    {
        $user = new User;
        $user->name= $req->input('name');
        $user->email= $req->input('email');
        $user->password= Hash::make($req->input('password'));
        $user->save();
        return response()->json($user, 201);
    }

    function login(Request $req)
    {
        $user = User::where('email', $req->email)->first();
       if(!$user || !Hash::check($req->password, $user->password))
       {
            $result = ["message"=>"Email or Password is not matched"];
            return response()->json($result, 401);
       }
        return response()->json($user, 201);
    }
}
