<?php

namespace App\Models;
use Illuminate\Database\Eloquent\Model;
use Auth;

class Order extends Model
{
    protected $fillable=[
        'user_id',
        'order_number',
        'sub_total',
        'quantity',
        'delivery_charge',
        'status',
        'total_amount',
        'first_name',
        'last_name',
        'country',
        'city',
        'zip_code',
        'address',
        'note',
        'phone',
        'email',
        'another_ship',
        'another_city',
        'another_address',
        'another_email',
        'another_phone',
        'another_zip',
        'payment_method',
        'payment_status',
        'shipping_id',
        'coupon'
    ];

    public function cart_info()
    {
        return $this->hasMany('App\Models\Cart','order_id','id');
    }
    
    

    public static function getAllOrder($id)
    {
        return Order::with('cart_info')->find($id);
    }

    public static function countActiveOrder()
    {
        if(auth::user()->role =='admin')
        {
            $data=Order::count();
            if($data)
            {
                return $data;
            }
        }
        else
        {
            $data=Order::where('user_id', Auth::user()->id)->count();
            if($data)
            {
                return $data;
            }
        }
        return 0;
    }

    public function cart()
    {
        return $this->hasMany(Cart::class);
    }

    public function shipping()
    {
        return $this->belongsTo(Shipping::class,'shipping_id');
    }
    
    public function user()
    {
        return $this->belongsTo('App\User', 'user_id');
    }

}
