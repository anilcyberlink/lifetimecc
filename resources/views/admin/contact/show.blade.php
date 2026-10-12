@extends('admin.master')
@section('title', 'Referral Details')
@section('breadcrumb')
    <a href="{{ route('referral.list') }}" class="btn btn-default btn-sm backlink">
        <i class="fa fa-arrow-left"></i> Show List
    </a>
@endsection
@section('content')
    <div class="tray tray-center">
        <div class="panel referral-details">
            <div class="panel-heading">
                <span class="panel-title"><i class="fa fa-file-text-o"></i> Referral Details</span>
            </div>
            <div class="panel-body">
                <div class="referral-section">
                    <h4><i class="fa fa-user"></i> Participant Details</h4>
                    <div class="referral-grid">
                        <div class="referral-item"><span class="referral-label">Full Name</span>
                            <div class="referral-value">{{ $data->full_name }}</div>
                        </div>
                        <div class="referral-item"><span class="referral-label">Date of Birth</span>
                            <div class="referral-value">
                                {{ $data->date_of_birth ? \Carbon\Carbon::parse($data->date_of_birth)->format('d M Y') : '-' }}
                            </div>
                        </div>
                        <div class="referral-item"><span class="referral-label">NDIS Number</span>
                            <div class="referral-value">{{ $data->ndis_number ?: '-' }}</div>
                        </div>
                        <div class="referral-item"><span class="referral-label">Gender</span>
                            <div class="referral-value">{{ $data->gender ?: '-' }}</div>
                        </div>
                        <div class="referral-item"><span class="referral-label">Pronouns</span>
                            <div class="referral-value">{{ $data->pronouns ?: '-' }}</div>
                        </div>
                        <div class="referral-item"><span class="referral-label">Phone</span>
                            <div class="referral-value">{{ $data->phone }}</div>
                        </div>
                        <div class="referral-item"><span class="referral-label">Email</span>
                            <div class="referral-value">{{ $data->email }}</div>
                        </div>
                        <div class="referral-item"><span class="referral-label">Residential Address</span>
                            <div class="referral-value">{{ $data->residential_address }}</div>
                        </div>
                        <div class="referral-item"><span class="referral-label">Indigenous Status</span>
                            <div class="referral-value">{{ $data->indigenous_status ?: '-' }}</div>
                        </div>
                        <div class="referral-item"><span class="referral-label">Preferred Language</span>
                            <div class="referral-value">{{ $data->preferred_language ?: '-' }}</div>
                        </div>
                        <div class="referral-item"><span class="referral-label">Interpreter Required</span>
                            <div class="referral-value">{{ $data->interpreter_required ?: '-' }}</div>
                        </div>
                    </div>
                </div>
                <div class="referral-section">
                    <h4><i class="fa fa-handshake-o"></i> Plan & Services</h4>
                    <div class="referral-grid">
                        <div class="referral-item"><span class="referral-label">Plan Management</span>
                            <div class="referral-value">{{ $data->plan_management ?: '-' }}</div>
                        </div>
                        <div class="referral-item"><span class="referral-label">Plan Manager</span>
                            <div class="referral-value">{{ $data->plan_manager ?: '-' }}</div>
                        </div>
                        <div class="referral-item" style="grid-column: 1 / -1;"><span class="referral-label">Requested
                                Services</span>
                            <div class="referral-value">
                                {{ is_array($data->requested_services) ? implode(', ', $data->requested_services) : ($data->requested_services ?: '-') }}
                            </div>
                        </div>
                    </div>
                </div>
                <div class="referral-section">
                    <h4><i class="fa fa-medkit"></i> Health & Safety</h4>
                    <div class="referral-grid">
                        <div class="referral-item"><span class="referral-label">Primary Diagnosis</span>
                            <div class="referral-value">{{ $data->primary_diagnosis ?: '-' }}</div>
                        </div>
                        <div class="referral-item"><span class="referral-label">Secondary Conditions</span>
                            <div class="referral-value">{{ $data->secondary_conditions ?: '-' }}</div>
                        </div>
                        <div class="referral-item"><span class="referral-label">GP Name</span>
                            <div class="referral-value">{{ $data->gp_name ?: '-' }}</div>
                        </div>
                        <div class="referral-item"><span class="referral-label">GP Phone</span>
                            <div class="referral-value">{{ $data->gp_phone ?: '-' }}</div>
                        </div>
                        <div class="referral-item"><span class="referral-label">Restrictive Practices</span>
                            <div class="referral-value">{{ $data->restrictive_practices ?: '-' }}</div>
                        </div>
                        <div class="referral-item"><span class="referral-label">Safety Risks</span>
                            <div class="referral-value">{{ $data->has_safety_risks ?: '-' }}</div>
                        </div>
                        <div class="referral-item" style="grid-column: 1 / -1;"><span class="referral-label">Safety
                                Details</span>
                            <div class="referral-value">{{ $data->safety_details ?: '-' }}</div>
                        </div>
                    </div>
                    <div class="referral-item" style="grid-column: 1 / -1;">
                        <span class="referral-label">Behaviour Support Plan</span>
                        <div class="referral-value">
                            @if ($data->behaviour_support_plan)
                                <a href="{{ asset('storage/' . $data->behaviour_support_plan) }}" target="_blank">
                                    <i class="fa fa-file-pdf-o"></i>View Uploaded File
                                </a>
                            @else
                                -
                            @endif
                        </div>
                    </div>
                </div>
                <div class="referral-section">
                    <h4><i class="fa fa-address-card-o"></i> Referrer Details</h4>
                    <div class="referral-grid">
                        <div class="referral-item"><span class="referral-label">Referrer Name</span>
                            <div class="referral-value">{{ $data->referrer_name ?: '-' }}</div>
                        </div>
                        <div class="referral-item"><span class="referral-label">Relationship</span>
                            <div class="referral-value">{{ $data->referrer_relationship ?: '-' }}</div>
                        </div>
                        <div class="referral-item"><span class="referral-label">Referrer Phone</span>
                            <div class="referral-value">{{ $data->referrer_phone ?: '-' }}</div>
                        </div>
                        <div class="referral-item"><span class="referral-label">Referrer Email</span>
                            <div class="referral-value">{{ $data->referrer_email ?: '-' }}</div>
                        </div>
                    </div>
                </div>
                <div class="referral-section" style="margin-bottom: 0;">
                    <h4><i class="fa fa-check-circle"></i> Consent & Submission</h4>
                    <div class="referral-grid">
                        <div class="referral-item"><span class="referral-label">Consent</span>
                            <div class="referral-value"><span
                                    class="referral-badge {{ $data->consent ? '' : 'no' }}">{{ $data->consent ? 'Accepted' : 'Not accepted' }}</span>
                            </div>
                        </div>
                        <div class="referral-item"><span class="referral-label">Signature Name</span>
                            <div class="referral-value">{{ $data->signature_name }}</div>
                        </div>
                        <div class="referral-item"><span class="referral-label">Signature Date</span>
                            <div class="referral-value">
                                {{ $data->signature_date ? \Carbon\Carbon::parse($data->signature_date)->format('d M Y') : '-' }}
                            </div>
                        </div>
                        <div class="referral-item"><span class="referral-label">Submitted At</span>
                            <div class="referral-value">
                                {{ $data->created_at ? $data->created_at->format('d M Y, h:i A') : '-' }}</div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
@endsection

@section('additional-css')
    <style>
        .referral-details .panel-heading {
            padding: 18px 22px;
            border-bottom: 1px solid #eee;
        }

        .referral-details .panel-body {
            padding: 22px;
        }

        .referral-section {
            margin-bottom: 25px;
        }

        .referral-section h4 {
            font-size: 14px;
            font-weight: 600;
            color: #327a85;
            border-bottom: 1px solid #e8eeee;
            padding-bottom: 10px;
            margin: 0 0 12px;
        }

        .referral-grid {
            display: grid;
            grid-template-columns: repeat(2, minmax(0, 1fr));
            gap: 0 28px;
        }

        .referral-item {
            padding: 12px 0;
            border-bottom: 1px solid #f0f2f3;
            min-width: 0;
        }

        .referral-label {
            display: block;
            color: #777;
            font-size: 12px;
            margin-bottom: 5px;
        }

        .referral-value {
            color: #293746;
            font-size: 14px;
            font-weight: 500;
            overflow-wrap: anywhere;
        }

        .referral-badge {
            display: inline-block;
            padding: 4px 9px;
            border-radius: 4px;
            font-size: 12px;
            background: #e8f5ee;
            color: #26734d;
        }

        .referral-badge.no {
            background: #f1f2f4;
            color: #626b75;
        }

        @media (max-width: 767px) {
            .referral-details .panel-body {
                padding: 15px;
            }

            .referral-grid {
                grid-template-columns: 1fr;
            }
        }
    </style>
@endsection
