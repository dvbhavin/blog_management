<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Str;
class Category extends Model
{
   
    protected $table = "category";

    protected $primaryKey = 'id';

    // public function __construct()
    // {
    //     parent::boot();        
    // }

    protected $fillable = [
        'name','slug'
    ];
    protected static function boot()
    {
        parent::boot();
        static::created(function ($post) {
            $post->slug = $post->generateSlug($post->name);
            $post->save();
        });
    }
    private function generateSlug($name)
    {
        if (static::whereSlug($slug = Str::slug($name))->exists()) {
            $max = static::whereName($name)->latest('id')->skip(1)->value('slug');
            if (isset($max[-1]) && is_numeric($max[-1])) {
                return preg_replace_callback('/(\d+)$/', function($mathces) {
                    return $mathces[1] + 1;
                }, $max);
            }
            return "{$slug}-2";
        }
        return $slug;
    }
}