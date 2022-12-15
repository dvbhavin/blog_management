<?php

namespace App\Http\Controllers;
use App\Models\Category;
use Illuminate\Http\Request;

class CategoryController extends Controller
{
    
    public function index()
    {
        $category = Category::orderBy('id','desc')->paginate(5);
        return view('category.index', compact('category'));
    }

   
    public function create()
    {
        return view('category.create');
    }

    
    public function store(Request $request)
    {
        $request->validate([
            'name' => 'required',            
        ]);
        
        Category::create($request->post());

        return redirect()->route('category.index')->with('success','Category has been created successfully.');
    }

   
    public function show(Category $Category)
    {
        return view('category.show',compact('Category'));
    }

   
    public function edit(Category $Category)
    {
        return view('category.edit',compact('Category'));
    }

    
    public function update(Request $request, Category $Category)
    {
        $request->validate([
            'name' => 'required',           
        ]);
        
        $Category->fill($request->post())->save();

        return redirect()->route('category.index')->with('success','Category Has Been updated successfully');
    }

    
    public function destroy(Category $Category)
    {
        $Category->delete();
        return redirect()->route('category.index')->with('success','Category has been deleted successfully');
    }
}