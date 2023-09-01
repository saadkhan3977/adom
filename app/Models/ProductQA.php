<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class ProductQA extends Model
{
    use HasFactory;
    protected $table ='product_q_a';
    protected $guarded =[];

    public function products()
    {
        return $this->hasOne('App\Models\Product','id','product_id');
    }
}
