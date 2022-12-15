<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Str;

class Blog extends Model
{
    use HasFactory;

    protected $table = "blogs";

    protected $primaryKey = 'id';

    // public function __construct()
    // {
    //     //parent::boot();        
    // }        
    protected $fillable = [
        'title','image','description','category_id'
    ];
    public function category(){
        return $this->belongsTo(Category::class,'category_id','id');
    }
    protected static function boot()
    {
        parent::boot();
        static::created(function ($post) {
            $post->slug = $post->generateSlug($post->title);
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