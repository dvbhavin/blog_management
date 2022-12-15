<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Blog;
use App\Models\Category;

class WelcomeController extends Controller
{
    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
      
    }

    /**
     * Show the application dashboard.
     *
     * @return \Illuminate\Contracts\Support\Renderable
     */
    public function index()
    {
        $categoryList=Category::orderBy('name','asc')->get();
        return view('welcome',compact('categoryList'));
    }
    public function blogList(Request $request, $categoryId){

        $blogList=Blog::where("category_id",$categoryId)->get();
        return view('blog_list',compact('blogList')); 
        
    }
}
