<?php

namespace App\Http\Controllers;

use App\Http\Requests;
use App\Http\Controllers\Controller;
use DB;
use Illuminate\Http\Request;

class myView extends Controller
{
    //function to show home page
    public function home(){
        $productType = DB::table('product_type')->get();
        $productSubType = DB::table('product_sub_type')->get();

        return view('home',['productType'=>$productType,'productSubType'=>$productSubType,'title'=>'welcome to zavile.com']);
    }
    
}
