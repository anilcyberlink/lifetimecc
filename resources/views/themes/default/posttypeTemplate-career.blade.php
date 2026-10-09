@extends('themes.default.common.master')
@section('title',$data->post_type)
@section('meta_keyword',$data->meta_keyword)
@section('meta_description',$data->meta_description)
@section('thumbnail',$data->banner)
@section('content')

<main>

<section style=" background-image: url('{{asset('uploads/original/' . $data->banner)}}');
  background-repeat: no-repeat;
  background-position: center;
  background-size: cover;
  position: relative;
  padding-top: 150px;
  padding-bottom: 150px;">
<div class="section-overlay"></div>
<div class="container">
    <div class="row">

        <div class="col-lg-6 col-12 mx-auto">
        @include('themes.default.common.message')
          <form class="custom-form volunteer-form mb-5 mb-lg-0" action="{{route('career')}}" method="post" enctype="multipart/form-data" role="form">
                    @csrf    
                    <h3 class="mb-4">Become a caregiver today</h3>

                        <div class="row">
                            <div class="col-lg-6 col-12">
                                <input type="text" name="name" id="volunteer-name" class="form-control" placeholder="Name" required>
                            </div>

                            <div class="col-lg-6 col-12">    
                                <input type="email" name="email" id="volunteer-email" pattern="[^ @]*@[^ @]*" class="form-control" placeholder="Email" required>
                            </div>

                            <div class="col-lg-6 col-12">
                                <input type="text" name="subject" id="volunteer-subject" class="form-control" placeholder="Subject" required>
                            </div>

                            <div class="col-lg-6 col-12">
                                <div class="input-group input-group-file">
                                    <input type="file" name="cv" class="form-control" id="inputGroupFile02">
                                    
                                    <label class="input-group-text" for="inputGroupFile02">Upload your CV</label>

                                    <i class="bi-cloud-arrow-up ms-auto"></i>
                                </div>
                            </div>
                        </div>

                        <textarea name="message" rows="3" class="form-control" id="volunteer-message" placeholder="Comment (Optional)"></textarea>
                             {!! HCaptcha::renderJs() !!}
                             {!! HCaptcha::display() !!}
                        <button type="submit" class="form-control">Submit</button>
                    </form>
        </div>

    </div>
</div>
</section>
</main>

@endsection
