<?php

namespace App\Http\Controllers;
use App\Models\Blog;
use App\Models\Category;
use Illuminate\Http\Request;

class BlogController extends Controller
{
    
    public function index()
    {
        $blog = Blog::orderBy('id','desc')->get();
        return view('blog.index', compact('blog'));
    }

   
    public function create()
    {
        $category=Category::orderBy('name','asc')->get();
        return view('blog.create',compact('category'));
    }

    
    public function store(Request $request)
    {
        $request->validate([
            'title' => 'required', 
            'category_id'=>'required',           
        ]);
        
        Blog::create($request->post());

        return redirect()->route('blog.index')->with('success','Blog has been created successfully.');
    }

   
    public function show(Blog $Blog)
    {
        return view('blog.show',compact('Blog'));
    }

   
    public function edit(Blog $Blog)
    {
        $category=Category::orderBy('name','asc')->get();
        return view('blog.edit',compact('Blog','category'));
    }

    
    public function update(Request $request, Blog $Blog)
    {
        $request->validate([
            'title' => 'required', 
            'category_id'=>'required'         
        ]);
        
        $Blog->fill($request->post())->save();

        return redirect()->route('blog.index')->with('success','Blog Has Been updated successfully');
    }

    
    public function destroy(Blog $Blog)
    {
        $Blog->delete();
        return redirect()->route('blog.index')->with('success','Blog has been deleted successfully');
    }
}