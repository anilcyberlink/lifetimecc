<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>New Referral - {{ $setting->site_name }}</title>
</head>
<body style="margin:0; padding:0; background-color:#f3f6f8; font-family:Arial, Helvetica, sans-serif; color:#344054;">

<table role="presentation" width="100%" cellpadding="0" cellspacing="0" border="0" style="background-color:#f3f6f8; padding:30px 12px;">
    <tr>
        <td align="center">

            <table role="presentation" width="100%" cellpadding="0" cellspacing="0" border="0" style="max-width:700px; background-color:#ffffff; border:1px solid #e5eaf0; border-radius:8px; overflow:hidden;">

                <!-- Header -->
                <tr>
                    <td style="padding:24px 30px; background-color:#ffffff; border-bottom:4px solid #287d80;">
                        <img src="{{ asset('themes-assets/images/LifetimeCare.png') }}"
                             alt="Lifetime Community Care"
                             style="display:block; width:180px; max-width:100%; height:auto; border:0;">
                    </td>
                </tr>

                <!-- Title -->
                <tr>
                    <td style="padding:28px 30px 20px;">
                        <p style="margin:0 0 8px; color:#287d80; font-size:12px; font-weight:bold; letter-spacing:1px; text-transform:uppercase;">
                            Website Referral
                        </p>
                        <h1 style="margin:0 0 12px; color:#1d2939; font-size:24px; line-height:1.3;">
                            New Referral Received
                        </h1>
                        <p style="margin:0; color:#667085; font-size:14px; line-height:1.7;">
                            A new referral has been submitted through the {{ $setting->site_name }} website.
                            Please review the participant and service details below.
                        </p>
                    </td>
                </tr>

                <!-- Participant Details -->
                <tr>
                    <td style="padding:10px 30px 22px;">
                        <h2 style="margin:0 0 12px; padding-bottom:10px; border-bottom:1px solid #e5eaf0; color:#287d80; font-size:16px;">
                            Participant Details
                        </h2>

                        <table role="presentation" width="100%" cellpadding="0" cellspacing="0" border="0" style="border-collapse:collapse; font-size:13px;">
                            @php
                                $participantDetails = [
                                    'Full Name' => $referral->full_name,
                                    'Date of Birth' => $referral->date_of_birth ? \Carbon\Carbon::parse($referral->date_of_birth)->format('d M Y') : '-',
                                    'NDIS Number' => $referral->ndis_number ?: '-',
                                    'Gender' => $referral->gender ?: '-',
                                    'Pronouns' => $referral->pronouns ?: '-',
                                    'Phone' => $referral->phone ?: '-',
                                    'Email' => $referral->email ?: '-',
                                    'Residential Address' => $referral->residential_address ?: '-',
                                    'Indigenous Status' => $referral->indigenous_status ?: '-',
                                    'Preferred Language' => $referral->preferred_language ?: '-',
                                    'Interpreter Required' => $referral->interpreter_required ?: '-',
                                ];
                            @endphp

                            @foreach ($participantDetails as $label => $value)
                                <tr>
                                    <td width="38%" valign="top" style="padding:10px 12px; border:1px solid #e5eaf0; background-color:#f8fafb; color:#667085; font-weight:bold;">
                                        {{ $label }}
                                    </td>
                                    <td valign="top" style="padding:10px 12px; border:1px solid #e5eaf0; color:#344054; overflow-wrap:anywhere;">
                                        {{ $value }}
                                    </td>
                                </tr>
                            @endforeach
                        </table>
                    </td>
                </tr>

                <!-- Plan & Services -->
                <tr>
                    <td style="padding:0 30px 22px;">
                        <h2 style="margin:0 0 12px; padding-bottom:10px; border-bottom:1px solid #e5eaf0; color:#287d80; font-size:16px;">
                            Plan &amp; Requested Services
                        </h2>

                        @php
                            $services = is_array($referral->requested_services)
                                ? $referral->requested_services
                                : (json_decode($referral->requested_services ?? '[]', true) ?: []);
                        @endphp

                        <table role="presentation" width="100%" cellpadding="0" cellspacing="0" border="0" style="border-collapse:collapse; font-size:13px;">
                            <tr>
                                <td width="38%" valign="top" style="padding:10px 12px; border:1px solid #e5eaf0; background-color:#f8fafb; color:#667085; font-weight:bold;">Plan Management</td>
                                <td valign="top" style="padding:10px 12px; border:1px solid #e5eaf0;">{{ $referral->plan_management ?: '-' }}</td>
                            </tr>
                            <tr>
                                <td width="38%" valign="top" style="padding:10px 12px; border:1px solid #e5eaf0; background-color:#f8fafb; color:#667085; font-weight:bold;">Plan Manager</td>
                                <td valign="top" style="padding:10px 12px; border:1px solid #e5eaf0;">{{ $referral->plan_manager ?: '-' }}</td>
                            </tr>
                            <tr>
                                <td width="38%" valign="top" style="padding:10px 12px; border:1px solid #e5eaf0; background-color:#f8fafb; color:#667085; font-weight:bold;">Requested Services</td>
                                <td valign="top" style="padding:10px 12px; border:1px solid #e5eaf0;">
                                    @forelse ($services as $service)
                                        <div style="margin-bottom:5px;">&#8226;&nbsp; {{ $service }}</div>
                                    @empty
                                        -
                                    @endforelse
                                </td>
                            </tr>
                        </table>
                    </td>
                </tr>

                <!-- Health & Safety -->
                <tr>
                    <td style="padding:0 30px 22px;">
                        <h2 style="margin:0 0 12px; padding-bottom:10px; border-bottom:1px solid #e5eaf0; color:#287d80; font-size:16px;">
                            Health &amp; Safety
                        </h2>

                        <table role="presentation" width="100%" cellpadding="0" cellspacing="0" border="0" style="border-collapse:collapse; font-size:13px;">
                            @php
                                $healthDetails = [
                                    'Primary Diagnosis' => $referral->primary_diagnosis ?: '-',
                                    'Secondary Conditions' => $referral->secondary_conditions ?: '-',
                                    'GP Name' => $referral->gp_name ?: '-',
                                    'GP Phone' => $referral->gp_phone ?: '-',
                                    'Restrictive Practices' => $referral->restrictive_practices ?: '-',
                                    'Safety Risks' => $referral->has_safety_risks ?: '-',
                                    'Safety Details' => $referral->safety_details ?: '-',
                                    'Behaviour Support Plan' => $referral->behaviour_support_plan ? 'Uploaded' : 'Not uploaded',
                                ];
                            @endphp

                            @foreach ($healthDetails as $label => $value)
                                <tr>
                                    <td width="38%" valign="top" style="padding:10px 12px; border:1px solid #e5eaf0; background-color:#f8fafb; color:#667085; font-weight:bold;">
                                        {{ $label }}
                                    </td>
                                    <td valign="top" style="padding:10px 12px; border:1px solid #e5eaf0; color:#344054;">
                                        {{ $value }}
                                    </td>
                                </tr>
                            @endforeach
                        </table>
                    </td>
                </tr>

                <!-- Referrer Details -->
                <tr>
                    <td style="padding:0 30px 22px;">
                        <h2 style="margin:0 0 12px; padding-bottom:10px; border-bottom:1px solid #e5eaf0; color:#287d80; font-size:16px;">
                            Referrer Details
                        </h2>

                        <table role="presentation" width="100%" cellpadding="0" cellspacing="0" border="0" style="border-collapse:collapse; font-size:13px;">
                            @php
                                $referrerDetails = [
                                    'Referrer Name' => $referral->referrer_name ?: '-',
                                    'Relationship' => $referral->referrer_relationship ?: '-',
                                    'Referrer Phone' => $referral->referrer_phone ?: '-',
                                    'Referrer Email' => $referral->referrer_email ?: '-',
                                ];
                            @endphp

                            @foreach ($referrerDetails as $label => $value)
                                <tr>
                                    <td width="38%" valign="top" style="padding:10px 12px; border:1px solid #e5eaf0; background-color:#f8fafb; color:#667085; font-weight:bold;">
                                        {{ $label }}
                                    </td>
                                    <td valign="top" style="padding:10px 12px; border:1px solid #e5eaf0; color:#344054;">
                                        {{ $value }}
                                    </td>
                                </tr>
                            @endforeach
                        </table>
                    </td>
                </tr>

                <!-- Consent -->
                <tr>
                    <td style="padding:0 30px 28px;">
                        <h2 style="margin:0 0 12px; padding-bottom:10px; border-bottom:1px solid #e5eaf0; color:#287d80; font-size:16px;">
                            Consent &amp; Submission
                        </h2>

                        <table role="presentation" width="100%" cellpadding="0" cellspacing="0" border="0" style="border-collapse:collapse; font-size:13px;">
                            <tr>
                                <td width="38%" valign="top" style="padding:10px 12px; border:1px solid #e5eaf0; background-color:#f8fafb; color:#667085; font-weight:bold;">Consent</td>
                                <td valign="top" style="padding:10px 12px; border:1px solid #e5eaf0;">
                                    {{ $referral->consent ? 'Accepted' : 'Not accepted' }}
                                </td>
                            </tr>
                            <tr>
                                <td width="38%" valign="top" style="padding:10px 12px; border:1px solid #e5eaf0; background-color:#f8fafb; color:#667085; font-weight:bold;">Signature Name</td>
                                <td valign="top" style="padding:10px 12px; border:1px solid #e5eaf0;">{{ $referral->signature_name ?: '-' }}</td>
                            </tr>
                            <tr>
                                <td width="38%" valign="top" style="padding:10px 12px; border:1px solid #e5eaf0; background-color:#f8fafb; color:#667085; font-weight:bold;">Signature Date</td>
                                <td valign="top" style="padding:10px 12px; border:1px solid #e5eaf0;">
                                    {{ $referral->signature_date ? \Carbon\Carbon::parse($referral->signature_date)->format('d M Y') : '-' }}
                                </td>
                            </tr>
                            <tr>
                                <td width="38%" valign="top" style="padding:10px 12px; border:1px solid #e5eaf0; background-color:#f8fafb; color:#667085; font-weight:bold;">Submitted At</td>
                                <td valign="top" style="padding:10px 12px; border:1px solid #e5eaf0;">
                                    {{ $referral->created_at ? $referral->created_at->format('d M Y, h:i A') : '-' }}
                                </td>
                            </tr>
                        </table>
                    </td>
                </tr>

                <!-- Footer -->
                <tr>
                    <td style="padding:20px 30px; background-color:#f8fafb; border-top:1px solid #e5eaf0; text-align:center;">
                        <p style="margin:0 0 6px; color:#287d80; font-size:14px; font-weight:bold;">
                            Lifetime Community Care
                        </p>
                        <p style="margin:0; color:#667085; font-size:11px; line-height:1.6;">
                            This is an automated notification of a new website referral.<br>
                            Please handle participant information confidentially.
                        </p>
                    </td>
                </tr>

            </table>

        </td>
    </tr>
</table>

</body>
</html>
