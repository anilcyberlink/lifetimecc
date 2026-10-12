<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Referral extends Model
{
    use HasFactory;

    protected $table = 'referrals';

    protected $fillable = [
        'full_name',
        'date_of_birth',
        'ndis_number',
        'gender',
        'pronouns',
        'phone',
        'email',
        'residential_address',
        'indigenous_status',
        'preferred_language',
        'interpreter_required',
        'plan_management',
        'plan_manager',
        'requested_services',
        'primary_diagnosis',
        'secondary_conditions',
        'gp_name',
        'gp_phone',
        'restrictive_practices',
        'behaviour_support_plan',
        'has_safety_risks',
        'safety_details',
        'referrer_name',
        'referrer_relationship',
        'referrer_phone',
        'referrer_email',
        'consent',
        'signature_name',
        'signature_date',
    ];

    protected $casts = [
        'date_of_birth' => 'date',
        'signature_date' => 'date',
        'requested_services' => 'array',
        'consent' => 'boolean',
    ];
}