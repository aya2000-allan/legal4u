<?php

namespace App\Models;

use Illuminate\Contracts\Auth\MustVerifyEmail;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Foundation\Auth\User as Authenticatable;
use Illuminate\Notifications\Notifiable;
use Illuminate\Support\Facades\Storage;
use Laravel\Fortify\TwoFactorAuthenticatable;
use Laravel\Jetstream\HasProfilePhoto;
use Laravel\Jetstream\HasTeams;
use Laravel\Sanctum\HasApiTokens;
use Spatie\Permission\Traits\HasRoles;

class User extends Authenticatable
{
    use HasApiTokens;
    use HasFactory;
    use HasProfilePhoto;
    use HasTeams;
    use Notifiable;
    use TwoFactorAuthenticatable;
    use HasRoles;

    /**
     * The attributes that are mass assignable.
     *
     * @var array
     */
    protected $fillable = [
        'name', 'email', 'password', 'phone', 'address',
    ];

    /**
     * The attributes that should be hidden for arrays.
     *
     * @var array
     */
    protected $hidden = [
        'password',
        'remember_token',
        'two_factor_recovery_codes',
        'two_factor_secret',
    ];

    /**
     * The attributes that should be cast to native types.
     *
     * @var array
     */
    protected $casts = [
        'email_verified_at' => 'datetime',
    ];

    /**
     * The accessors to append to the model's array form.
     *
     * @var array
     */
    protected $appends = [
        'profile_photo_url',
    ];


    public function blog()
    {
        return $this->hasMany(Blog::class, 'user_id','id');
    }

    public function attorney(){
        return $this->hasOne(Attorney::class, 'user_id', 'id');
    }

    public function hardships()
    {
        return $this->hasMany(Hardship::class, 'user_id','id');
    }

    public function conversation()
    {
        return $this->belongsToMany(Conversation::class, 'conversations_user',  'user_id', 'conversation_id')
        ->with(['unreadMessages']);
    }

    public function messages()
    {
        return $this->belongsTo(Message::class, 'user_id', 'id');
    }

    public function unreadMessages()
    {
        return $this->hasMany(Message::class, 'user_id', 'id')->where(['read'=>false]);
    }
}
