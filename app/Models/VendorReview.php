<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class VendorReview extends Model
{
    use HasFactory;
    protected $table = "vendor_reviews";
    protected $guarded = [];

    public function user()
    {
        return $this->hasOne('App\Models\User','id','user_id');
    }
}
