
@if (Session::has('message'))
    <div class="alert alert-success referral-alert">
        <strong>{{ Session::get('message') }}</strong>
    </div>
@endif
@if (Session::has('error'))
    <div class="alert alert-danger referral-alert">
        <strong>{{ Session::get('error') }}</strong>
    </div>
@endif
@if (Session::has('success'))
    <div class="alert alert-success referral-alert">
        <strong>{{ Session::get('success') }}</strong>
    </div>
@endif
@if ($errors->any())
    <div class="alert alert-danger referral-alert">
        <ul>
            @foreach ($errors->all() as $error)
                <li>{{ $error }}</li>
            @endforeach
        </ul>
    </div>
@endif


<script>
    $(function () {
        setTimeout(function () {
            $('.referral-alert').fadeOut(400);
        }, 5000);
    });
</script>
