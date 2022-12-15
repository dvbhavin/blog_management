<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use App\Models\Category;
use Illuminate\Support\Facades\Hash;

class CategorySeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        Category::updateOrCreate(
            ['name' => 'Technology','slug'=>'technology'],
            [
                'name' => 'Technology',        
                'slug'=>'technology'                                                                        
            ]
        );       
        Category::updateOrCreate(
            ['name' => 'Food','slug'=>'food'],
            [
                'name' => 'Food',     
                'slug'=>'food'                                                                           
            ]
        );       
        Category::updateOrCreate(
            ['name' => 'Traveling','slug'=>'traveling'],
            [
                'name' => 'Traveling',        
                'slug'=>'traveling'                                                                        
            ]
        );       
    }
}        