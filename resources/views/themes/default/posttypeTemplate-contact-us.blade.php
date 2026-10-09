@extends('themes.default.common.master')

@section('title', 'NDIS Participant Intake & Referral Form')
@section('meta_keyword', $data->meta_keyword)
@section('meta_description', $data->meta_description)
@section('thumbnail', $data->banner)

@section('content')
    <main class="referral-page">

        <section class="news-detail-header-section text-center"
            style="background-image: url('{{ asset('uploads/original/' . $data->banner) }}');">
            <div class="section-overlay"></div>

            <div class="container">
                <div class="row">

                    <div class="col-lg-12 col-12">
                        <h1 class="text-white">{{ $data->post_type }}</h1>
                    </div>

                </div>
            </div>
        </section>

        <section class="referral-main">
            <div class="container">
                <div class="row g-4 g-xl-5">

                    {{-- Contact Sidebar --}}
                    <aside class="col-lg-4">
                        <div class="referral-sidebar">
                            <span class="referral-sidebar-label">WE ARE HERE TO HELP</span>
                            <h2>Let's get started.</h2>
                            <p>
                                Complete the referral form with the participant's details
                                and support requirements. Our team can use this information
                                to assess the intake request.
                            </p>

                            <div class="referral-contact-item">
                                <span class="referral-icon">
                                    <i class="bi bi-geo-alt"></i>
                                </span>
                                <div>
                                    <strong>Our Location</strong>
                                    <p>{{ $setting->location1 }}</p>
                                </div>
                            </div>

                            <div class="referral-contact-item">
                                <span class="referral-icon">
                                    <i class="bi bi-telephone"></i>
                                </span>
                                <div>
                                    <strong>Phone</strong>
                                    <a href="tel:{{ preg_replace('/[^0-9+]/', '', $setting->phone) }}">
                                        {{ $setting->phone }}
                                    </a>
                                </div>
                            </div>

                            <div class="referral-contact-item">
                                <span class="referral-icon">
                                    <i class="bi bi-envelope"></i>
                                </span>
                                <div>
                                    <strong>Email</strong>
                                    <a href="mailto:{{ $setting->email_primary }}">
                                        {{ $setting->email_primary }}
                                    </a>
                                </div>
                            </div>

                            <div class="referral-contact-item">
                                <span class="referral-icon">
                                    <i class="bi bi-briefcase"></i>
                                </span>
                                <div>
                                    <strong>Registration ID</strong>
                                    <p>4-L1CT2HY</p>
                                </div>
                            </div>

                            <div class="referral-help-box">
                                <i class="bi bi-shield-check"></i>
                                <div>
                                    <strong>Your information matters</strong>
                                    <p>Participant information should be handled securely
                                        and only by authorised personnel.</p>
                                </div>
                            </div>

                            @if (!empty($setting->google_map2))
                                <a href="{{ $setting->google_map2 }}" target="_blank" rel="noopener noreferrer"
                                    class="referral-map-link">
                                    Get directions <i class="bi bi-arrow-up-right"></i>
                                </a>
                            @endif
                        </div>
                    </aside>

                    {{-- Referral Form --}}
                    <div class="col-lg-8">
                        <div class="referral-form-card">

                            <div class="referral-form-heading">
                                <div>
                                    <span class="referral-sidebar-label">INTAKE APPLICATION</span>
                                    <h2>Participant referral form</h2>
                                    <p>Please complete the relevant fields below.</p>
                                </div>
                                <span class="referral-form-symbol">
                                    <i class="bi bi-clipboard2-check"></i>
                                </span>
                            </div>

                            @include('themes.default.common.message')

                            <form action="" method="POST" enctype="multipart/form-data" id="referralForm">
                                @csrf

                                {{-- 1. Participant Details --}}
                                <fieldset class="referral-fieldset">
                                    <legend>
                                        <span class="referral-step">01</span>
                                        Participant details
                                    </legend>

                                    <div class="row g-3">
                                        <div class="col-md-8">
                                            <label for="full_name">Full name <span>*</span></label>
                                            <input type="text" id="full_name" name="full_name"
                                                value="{{ old('full_name') }}" autocomplete="name" required>
                                            @error('full_name')
                                                <small class="field-error">{{ $message }}</small>
                                            @enderror
                                        </div>

                                        <div class="col-md-4">
                                            <label for="date_of_birth">Date of birth <span>*</span></label>
                                            <input type="date" id="date_of_birth" name="date_of_birth"
                                                value="{{ old('date_of_birth') }}" max="{{ date('Y-m-d') }}" required>
                                            @error('date_of_birth')
                                                <small class="field-error">{{ $message }}</small>
                                            @enderror
                                        </div>

                                        <div class="col-md-6">
                                            <label for="ndis_number">NDIS number</label>
                                            <input type="text" id="ndis_number" name="ndis_number"
                                                value="{{ old('ndis_number') }}">
                                        </div>

                                        <div class="col-md-3">
                                            <label for="gender">Gender</label>
                                            <select id="gender" name="gender">
                                                <option value="">Select gender</option>
                                                @foreach (['Female', 'Male', 'Non-binary', 'Other', 'Prefer not to say'] as $option)
                                                    <option value="{{ $option }}" @selected(old('gender') === $option)>
                                                        {{ $option }}
                                                    </option>
                                                @endforeach
                                            </select>
                                        </div>

                                        <div class="col-md-3">
                                            <label for="pronouns">Pronouns</label>
                                            <input type="text" id="pronouns" name="pronouns"
                                                value="{{ old('pronouns') }}" placeholder="e.g. she/her">
                                        </div>

                                        <div class="col-md-6">
                                            <label for="phone">Phone number <span>*</span></label>
                                            <input type="tel" id="phone" name="phone" value="{{ old('phone') }}"
                                                autocomplete="tel" required>
                                        </div>

                                        <div class="col-md-6">
                                            <label for="email">Email address <span>*</span></label>
                                            <input type="email" id="email" name="email" value="{{ old('email') }}"
                                                autocomplete="email" required>
                                        </div>

                                        <div class="col-12">
                                            <label for="residential_address">Residential address <span>*</span></label>
                                            <textarea id="residential_address" name="residential_address" rows="2" autocomplete="street-address" required>{{ old('residential_address') }}</textarea>
                                        </div>
                                    </div>
                                </fieldset>

                                {{-- 2. Cultural Identity --}}
                                <fieldset class="referral-fieldset">
                                    <legend>
                                        <span class="referral-step">02</span>
                                        Cultural identity & language
                                    </legend>

                                    <label>Indigenous status</label>
                                    <div class="referral-options">
                                        @foreach ([
            'No' => 'No',
            'Aboriginal' => 'Yes, Aboriginal',
            'Torres Strait Islander' => 'Yes, Torres Strait Islander',
            'Both' => 'Yes, both',
            'Prefer not to say' => 'Prefer not to say',
        ] as $value => $label)
                                            <label class="referral-check">
                                                <input type="radio" name="indigenous_status"
                                                    value="{{ $value }}" @checked(old('indigenous_status') === $value)>
                                                <span>{{ $label }}</span>
                                            </label>
                                        @endforeach
                                    </div>

                                    <div class="row g-3 mt-2">
                                        <div class="col-md-7">
                                            <label for="preferred_language">Preferred language</label>
                                            <input type="text" id="preferred_language" name="preferred_language"
                                                value="{{ old('preferred_language') }}">
                                        </div>
                                        <div class="col-md-5">
                                            <label>Interpreter required?</label>
                                            <div class="referral-options">
                                                @foreach (['Yes', 'No'] as $value)
                                                    <label class="referral-check">
                                                        <input type="radio" name="interpreter_required"
                                                            value="{{ $value }}" @checked(old('interpreter_required') === $value)>
                                                        <span>{{ $value }}</span>
                                                    </label>
                                                @endforeach
                                            </div>
                                        </div>
                                    </div>
                                </fieldset>

                                {{-- 3. Funding and Services --}}
                                <fieldset class="referral-fieldset">
                                    <legend>
                                        <span class="referral-step">03</span>
                                        NDIS funding & services
                                    </legend>

                                    <label>NDIS plan management <span>*</span></label>
                                    <div class="referral-options">
                                        @foreach (['Agency (NDIA) Managed', 'Plan Managed', 'Self-Managed'] as $value)
                                            <label class="referral-check">
                                                <input type="radio" name="plan_management" value="{{ $value }}"
                                                    @checked(old('plan_management') === $value) required>
                                                <span>{{ $value }}</span>
                                            </label>
                                        @endforeach
                                    </div>

                                    <div class="mt-3">
                                        <label for="plan_manager">Plan manager name / organisation</label>
                                        <input type="text" id="plan_manager" name="plan_manager"
                                            value="{{ old('plan_manager') }}">
                                    </div>

                                    <label class="mt-4">Requested services <span>*</span></label>
                                    <p class="referral-hint">Select all services that apply.</p>

                                    <div class="referral-service-grid">
                                        @foreach (['Core/Daily Supports', 'Community Access', 'Support Coordination', 'SIL / Respite'] as $service)
                                            <label class="referral-service-option">
                                                <input type="checkbox" name="requested_services[]"
                                                    value="{{ $service }}" @checked(in_array($service, old('requested_services', [])))>
                                                <span class="service-check-icon">
                                                    <i class="bi bi-check2"></i>
                                                </span>
                                                <span>{{ $service }}</span>
                                            </label>
                                        @endforeach
                                    </div>
                                </fieldset>

                                {{-- 4. Medical Background --}}
                                <fieldset class="referral-fieldset">
                                    <legend>
                                        <span class="referral-step">04</span>
                                        Medical background & GP
                                    </legend>

                                    <div class="row g-3">
                                        <div class="col-12">
                                            <label for="primary_diagnosis">Primary diagnosis / disability</label>
                                            <textarea id="primary_diagnosis" name="primary_diagnosis" rows="2">{{ old('primary_diagnosis') }}</textarea>
                                        </div>

                                        <div class="col-12">
                                            <label for="secondary_conditions">Secondary diagnosis / medical
                                                conditions</label>
                                            <textarea id="secondary_conditions" name="secondary_conditions" rows="2">{{ old('secondary_conditions') }}</textarea>
                                        </div>

                                        <div class="col-md-7">
                                            <label for="gp_name">GP name & clinic</label>
                                            <input type="text" id="gp_name" name="gp_name"
                                                value="{{ old('gp_name') }}">
                                        </div>

                                        <div class="col-md-5">
                                            <label for="gp_phone">GP phone number</label>
                                            <input type="tel" id="gp_phone" name="gp_phone"
                                                value="{{ old('gp_phone') }}">
                                        </div>
                                    </div>
                                </fieldset>

                                {{-- 5. Safety --}}
                                <fieldset class="referral-fieldset">
                                    <legend>
                                        <span class="referral-step">05</span>
                                        Clinical safety & risks
                                    </legend>

                                    <label>Are authorised restrictive practices currently in place? <span>*</span></label>
                                    <div class="referral-options">
                                        @foreach (['Yes', 'No'] as $value)
                                            <label class="referral-check">
                                                <input type="radio" name="restrictive_practices"
                                                    value="{{ $value }}" @checked(old('restrictive_practices') === $value) required>
                                                <span>{{ $value }}</span>
                                            </label>
                                        @endforeach
                                    </div>

                                    <div class="referral-alert mt-3">
                                        <i class="bi bi-exclamation-circle"></i>
                                        <p>If restrictive practices are in place, attach the current Behaviour Support Plan.
                                        </p>
                                    </div>

                                    <div class="mt-3" id="behaviourPlanGroup">
                                        <label for="behaviour_support_plan">Behaviour Support Plan</label>
                                        <input type="file" id="behaviour_support_plan" name="behaviour_support_plan"
                                            accept=".pdf,.doc,.docx">
                                        <small class="referral-hint">Accepted formats: PDF, DOC or DOCX.</small>
                                    </div>

                                    <label class="mt-4">Are there known safety risks or triggers? <span>*</span></label>
                                    <div class="referral-options">
                                        @foreach (['No', 'Yes'] as $value)
                                            <label class="referral-check">
                                                <input type="radio" name="has_safety_risks"
                                                    value="{{ $value }}" @checked(old('has_safety_risks') === $value) required>
                                                <span>{{ $value }}</span>
                                            </label>
                                        @endforeach
                                    </div>

                                    <div class="mt-3" id="safetyDetailsGroup">
                                        <label for="safety_details">Please outline known risks or triggers</label>
                                        <textarea id="safety_details" name="safety_details" rows="3"
                                            placeholder="Medical, environmental, mobility or behavioural considerations...">{{ old('safety_details') }}</textarea>
                                    </div>
                                </fieldset>

                                {{-- 6. Referrer --}}
                                <fieldset class="referral-fieldset">
                                    <legend>
                                        <span class="referral-step">06</span>
                                        Referrer details
                                    </legend>

                                    <p class="referral-hint">
                                        Complete this section if someone other than the participant is submitting the form.
                                    </p>

                                    <div class="row g-3">
                                        <div class="col-md-6">
                                            <label for="referrer_name">Referrer name / organisation</label>
                                            <input type="text" id="referrer_name" name="referrer_name"
                                                value="{{ old('referrer_name') }}">
                                        </div>

                                        <div class="col-md-6">
                                            <label for="referrer_relationship">Relationship to participant</label>
                                            <input type="text" id="referrer_relationship" name="referrer_relationship"
                                                value="{{ old('referrer_relationship') }}">
                                        </div>

                                        <div class="col-md-6">
                                            <label for="referrer_phone">Referrer phone number</label>
                                            <input type="tel" id="referrer_phone" name="referrer_phone"
                                                value="{{ old('referrer_phone') }}">
                                        </div>

                                        <div class="col-md-6">
                                            <label for="referrer_email">Referrer email address</label>
                                            <input type="email" id="referrer_email" name="referrer_email"
                                                value="{{ old('referrer_email') }}">
                                        </div>
                                    </div>
                                </fieldset>

                                {{-- 7. Consent --}}
                                <fieldset class="referral-fieldset referral-consent">
                                    <legend>
                                        <span class="referral-step">07</span>
                                        Declaration & consent
                                    </legend>

                                    <p>
                                        By signing below, I confirm that the information provided
                                        is accurate to the best of my knowledge. I consent to
                                        Lifetime Community Care collecting, securely holding and
                                        storing this sensitive health and cultural information
                                        for assessing this intake request, processing funding
                                        validations and safely delivering NDIS supports, in
                                        accordance with the Privacy Act 1988 (Cth).
                                    </p>

                                    <label class="referral-check referral-consent-check">
                                        <input type="checkbox" name="consent" value="1" @checked(old('consent'))
                                            required>
                                        <span>I have read and agree to the declaration and consent above.
                                            <strong>*</strong></span>
                                    </label>

                                    <div class="row g-3 mt-3">
                                        <div class="col-md-8">
                                            <label for="signature_name">
                                                Participant / guardian / referrer full name <span>*</span>
                                            </label>
                                            <input type="text" id="signature_name" name="signature_name"
                                                value="{{ old('signature_name') }}" required>
                                        </div>

                                        <div class="col-md-4">
                                            <label for="signature_date">Date <span>*</span></label>
                                            <input type="date" id="signature_date" name="signature_date"
                                                value="{{ old('signature_date', date('Y-m-d')) }}" required>
                                        </div>
                                    </div>

                                    <p class="referral-hint mt-3">
                                        The typed name records the declaration; it is not a digital signature verification
                                        mechanism.
                                    </p>
                                </fieldset>

                                <div class="referral-submit-area">
                                    <p><i class="bi bi-lock"></i> Please ensure the information is accurate before
                                        submitting.</p>
                                    <button type="submit" class="referral-submit-btn">
                                        Submit referral <i class="bi bi-arrow-right"></i>
                                    </button>
                                </div>

                            </form>
                        </div>
                    </div>

                </div>
            </div>
        </section>
    </main>
    <style>
        .referral-page {
            --ref-primary: #155e59;
            --ref-primary-dark: #104843;
            --ref-accent: #dcefe9;
            --ref-text: #243b3a;
            --ref-muted: #71817f;
            --ref-border: #e2eae7;
            background: #f5f8f7;
            color: var(--ref-text);
        }

        .referral-hero {
            position: relative;
            isolation: isolate;
            padding: 100px 0 90px;
            background-color: #174c48;
            background-position: center;
            background-size: cover;
        }

        .referral-hero-overlay {
            position: absolute;
            inset: 0;
            z-index: -1;
            background: linear-gradient(100deg, rgba(9, 43, 40, .92), rgba(13, 65, 59, .68));
        }

        .referral-eyebrow,
        .referral-sidebar-label {
            display: inline-block;
            color: #75c8b4;
            font-size: 11px;
            font-weight: 800;
            letter-spacing: 2px;
            margin-bottom: 14px;
        }

        .referral-hero h1 {
            max-width: 760px;
            color: #fff;
            font-size: clamp(32px, 4vw, 52px);
            font-weight: 750;
            letter-spacing: -1.5px;
            margin: 0 0 15px;
        }

        .referral-hero p {
            max-width: 620px;
            color: rgba(255, 255, 255, .84);
            font-size: 16px;
            line-height: 1.8;
            margin: 0;
        }

        .referral-main {
            padding: 70px 0;
        }

        .referral-sidebar {
            position: sticky;
            top: 30px;
            padding: 30px;
            border-radius: 16px;
            background: #fff;
            border: 1px solid var(--ref-border);
        }

        .referral-sidebar h2 {
            font-size: 29px;
            font-weight: 750;
            letter-spacing: -.7px;
            margin-bottom: 14px;
        }

        .referral-sidebar>p {
            color: var(--ref-muted);
            line-height: 1.8;
            font-size: 14px;
            margin-bottom: 30px;
        }

        .referral-contact-item {
            display: flex;
            align-items: flex-start;
            gap: 13px;
            margin-top: 23px;
        }

        .referral-icon {
            display: flex;
            align-items: center;
            justify-content: center;
            flex: 0 0 42px;
            width: 42px;
            height: 42px;
            border-radius: 10px;
            color: var(--ref-primary);
            background: #eaf5f1;
            font-size: 18px;
        }

        .referral-contact-item strong {
            display: block;
            font-size: 13px;
            margin: 1px 0 5px;
        }

        .referral-contact-item p,
        .referral-contact-item a {
            color: var(--ref-muted);
            font-size: 13px;
            line-height: 1.7;
            overflow-wrap: anywhere;
            margin: 0;
            text-decoration: none;
        }

        .referral-help-box {
            display: flex;
            gap: 12px;
            padding: 17px;
            margin-top: 30px;
            border-radius: 10px;
            background: #edf6f3;
            color: var(--ref-primary);
        }

        .referral-help-box>i {
            font-size: 21px;
        }

        .referral-help-box strong {
            display: block;
            font-size: 13px;
            margin-bottom: 5px;
        }

        .referral-help-box p {
            color: #5e7772;
            font-size: 12px;
            line-height: 1.7;
            margin: 0;
        }

        .referral-map-link {
            display: inline-flex;
            align-items: center;
            gap: 8px;
            margin-top: 24px;
            color: var(--ref-primary);
            font-weight: 700;
            font-size: 13px;
            text-decoration: none;
        }

        .referral-form-card {
            padding: 38px;
            background: #fff;
            border: 1px solid var(--ref-border);
            border-radius: 16px;
            box-shadow: 0 12px 40px rgba(23, 67, 59, .035);
        }

        .referral-form-heading {
            display: flex;
            justify-content: space-between;
            align-items: center;
            gap: 20px;
            padding-bottom: 28px;
            border-bottom: 1px solid var(--ref-border);
        }

        .referral-form-heading h2 {
            font-size: clamp(24px, 3vw, 32px);
            font-weight: 750;
            letter-spacing: -.8px;
            margin: 0 0 8px;
        }

        .referral-form-heading p {
            color: var(--ref-muted);
            font-size: 14px;
            margin: 0;
        }

        .referral-form-symbol {
            display: flex;
            align-items: center;
            justify-content: center;
            flex: 0 0 56px;
            width: 56px;
            height: 56px;
            border-radius: 14px;
            background: var(--ref-accent);
            color: var(--ref-primary);
            font-size: 25px;
        }

        .referral-fieldset {
            min-width: 0;
            padding: 30px 0;
            border: 0;
            border-bottom: 1px solid var(--ref-border);
            margin: 0;
        }

        .referral-fieldset legend {
            display: flex;
            align-items: center;
            gap: 12px;
            float: none;
            width: 100%;
            padding: 0;
            margin-bottom: 24px;
            color: var(--ref-text);
            font-size: 18px;
            font-weight: 750;
        }

        .referral-step {
            display: inline-flex;
            align-items: center;
            justify-content: center;
            flex: 0 0 37px;
            width: 37px;
            height: 37px;
            border-radius: 10px;
            color: var(--ref-primary);
            background: #eaf5f1;
            font-size: 12px;
            letter-spacing: .5px;
        }

        .referral-fieldset label:not(.referral-check):not(.referral-service-option) {
            display: block;
            color: #344a47;
            font-size: 13px;
            font-weight: 700;
            margin-bottom: 9px;
        }

        .referral-fieldset label>span:not(.referral-step) {
            color: #b64a40;
        }

        .referral-fieldset input:not([type="checkbox"]):not([type="radio"]),
        .referral-fieldset select,
        .referral-fieldset textarea {
            display: block;
            width: 100%;
            min-height: 47px;
            padding: 11px 13px;
            border: 1px solid #dce6e2;
            border-radius: 8px;
            background: #fff;
            color: var(--ref-text);
            font-family: inherit;
            font-size: 14px;
            outline: none;
            transition: border-color .2s, box-shadow .2s;
        }

        .referral-fieldset textarea {
            min-height: 88px;
            resize: vertical;
        }

        .referral-fieldset input:focus,
        .referral-fieldset select:focus,
        .referral-fieldset textarea:focus {
            border-color: #4a9d8b;
            box-shadow: 0 0 0 3px rgba(74, 157, 139, .12);
        }

        .referral-options {
            display: flex;
            flex-wrap: wrap;
            gap: 10px;
            margin-top: 10px;
        }

        .referral-fieldset .referral-check {
            display: inline-flex;
            align-items: center;
            gap: 9px;
            min-height: 42px;
            padding: 10px 13px;
            border: 1px solid var(--ref-border);
            border-radius: 8px;
            color: #4b615d;
            background: #fff;
            font-size: 13px;
            font-weight: 500;
            cursor: pointer;
            margin: 0;
        }

        .referral-check input,
        .referral-service-option input {
            accent-color: var(--ref-primary);
            flex: 0 0 auto;
        }

        .referral-check:has(input:checked) {
            background: #eff8f4;
            border-color: #7eb8a8;
            color: var(--ref-primary-dark);
        }

        .referral-service-grid {
            display: grid;
            grid-template-columns: repeat(2, minmax(0, 1fr));
            gap: 12px;
            margin-top: 12px;
        }

        .referral-fieldset .referral-service-option {
            display: flex;
            align-items: center;
            gap: 11px;
            min-height: 65px;
            padding: 14px;
            margin: 0;
            border: 1px solid var(--ref-border);
            border-radius: 10px;
            color: #405651;
            font-size: 13px;
            font-weight: 650;
            cursor: pointer;
        }

        .referral-service-option:has(input:checked) {
            border-color: #7eb8a8;
            background: #eff8f4;
        }

        .service-check-icon {
            display: flex;
            align-items: center;
            justify-content: center;
            width: 27px;
            height: 27px;
            flex: 0 0 27px;
            border-radius: 7px;
            background: #e6f1ed;
            color: var(--ref-primary);
        }

        .referral-hint {
            color: var(--ref-muted);
            font-size: 12px;
            line-height: 1.7;
            margin-bottom: 0;
        }

        .referral-alert {
            display: flex;
            gap: 12px;
            padding: 15px;
            border-radius: 8px;
            background: #fff7e9;
            color: #8a6126;
        }

        .referral-alert i {
            font-size: 18px;
        }

        .referral-alert p {
            font-size: 12px;
            line-height: 1.7;
            margin: 0;
        }

        .referral-consent>p {
            color: #647773;
            font-size: 13px;
            line-height: 1.9;
        }

        .referral-fieldset .referral-consent-check {
            display: flex;
            align-items: flex-start;
            padding: 16px;
            margin-top: 16px;
            background: #f5f9f7;
            line-height: 1.7;
        }

        .referral-consent-check input {
            margin-top: 5px;
        }

        .referral-submit-area {
            padding-top: 28px;
        }

        .referral-submit-area>p {
            color: var(--ref-muted);
            font-size: 12px;
            margin-bottom: 18px;
        }

        .referral-submit-area>p i {
            color: var(--ref-primary);
            margin-right: 6px;
        }

        .referral-submit-btn {
            display: inline-flex;
            align-items: center;
            justify-content: center;
            gap: 16px;
            min-height: 52px;
            padding: 14px 25px;
            border: 0;
            border-radius: 9px;
            background: var(--ref-primary);
            color: #fff;
            font-weight: 700;
            font-size: 14px;
            cursor: pointer;
            transition: background .2s, transform .2s;
        }

        .referral-submit-btn:hover {
            background: var(--ref-primary-dark);
            transform: translateY(-1px);
        }

        .field-error {
            display: block;
            color: #b42318;
            font-size: 12px;
            margin-top: 6px;
        }

        @media (max-width: 991px) {
            .referral-main {
                padding: 40px 0;
            }

            .referral-sidebar {
                position: static;
            }

            .referral-hero {
                padding: 75px 0;
            }
        }

        @media (max-width: 575px) {
            .referral-hero {
                padding: 60px 0;
            }

            .referral-form-card {
                padding: 23px 17px;
            }

            .referral-form-heading {
                align-items: flex-start;
            }

            .referral-form-symbol {
                flex-basis: 43px;
                width: 43px;
                height: 43px;
                font-size: 20px;
            }

            .referral-fieldset {
                padding: 24px 0;
            }

            .referral-fieldset legend {
                font-size: 16px;
                gap: 9px;
            }

            .referral-step {
                flex-basis: 32px;
                width: 32px;
                height: 32px;
            }

            .referral-service-grid {
                grid-template-columns: 1fr;
            }

            .referral-submit-btn {
                width: 100%;
            }
        }
    </style>
@endsection


@push('scripts')
    <script>
        document.addEventListener('DOMContentLoaded', function() {
            const restrictiveInputs = document.querySelectorAll(
                'input[name="restrictive_practices"]'
            );
            const safetyInputs = document.querySelectorAll(
                'input[name="has_safety_risks"]'
            );

            const planGroup = document.getElementById('behaviourPlanGroup');
            const planInput = document.getElementById('behaviour_support_plan');
            const safetyGroup = document.getElementById('safetyDetailsGroup');
            const safetyDetails = document.getElementById('safety_details');

            function updateConditionalFields() {
                const restrictiveValue = document.querySelector(
                    'input[name="restrictive_practices"]:checked'
                )?.value;

                const safetyValue = document.querySelector(
                    'input[name="has_safety_risks"]:checked'
                )?.value;

                planGroup.hidden = restrictiveValue !== 'Yes';
                planInput.required = restrictiveValue === 'Yes';

                safetyGroup.hidden = safetyValue !== 'Yes';
                safetyDetails.required = safetyValue === 'Yes';
            }

            restrictiveInputs.forEach(input =>
                input.addEventListener('change', updateConditionalFields)
            );

            safetyInputs.forEach(input =>
                input.addEventListener('change', updateConditionalFields)
            );

            updateConditionalFields();
        });
    </script>
@endpush
