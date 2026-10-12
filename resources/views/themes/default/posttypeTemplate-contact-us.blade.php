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
                            <h2>Get in touch</h2>
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

                                    @if (!empty($setting->google_map2))
                                        <a href="{{ $setting->google_map2 }}" target="_blank" rel="noopener noreferrer"
                                            class="referral-map-link">
                                            Get directions <i class="bi bi-arrow-up-right"></i>
                                        </a>
                                    @endif
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

                            {{-- <div class="referral-help-box">
                                <i class="bi bi-shield-check"></i>
                                <div>
                                    <strong>Your information matters</strong>
                                    <p>Participant information should be handled securely
                                        and only by authorised personnel.</p>
                                </div>
                            </div> --}}

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

                            <form action="{{route('referral')}}" method="POST" enctype="multipart/form-data" id="referralForm">
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
                                {!! HCaptcha::renderJs() !!}
                                {!! HCaptcha::display() !!}

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
