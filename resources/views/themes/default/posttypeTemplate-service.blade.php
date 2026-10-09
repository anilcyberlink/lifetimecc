@extends('themes.default.common.master')
@section('title',$data->post_type)
@section('meta_keyword',$data->meta_keyword)
@section('meta_description',$data->meta_description)
@section('thumbnail',$data->banner)
@section('content')

<main>
   <section class="news-detail-header-section text-center" style="background-image: url('{{asset('uploads/original/' . $data->banner)}}');">
      <div class="section-overlay"></div>
      <div class="container">
         <div class="row">
            <div class="col-lg-12 col-12">
               <h1 class="text-white">{{$data->post_type}}</h1>
            </div>
         </div>
      </div>
   </section>
   
   <section class="section-padding" id="section_3">
      <div class="container">
          @if($data->uid || $data->content)
        <div class="custom-text-box">
            <h5 class="mb-3">{{$data->uid}}</h5>
            <p class="mb-0">{!!$data->content!!}</p>
        </div>
        @endif
         <div class="row">
         @foreach($posts as $value)
            <div class="col-lg-4 col-md-6 col-12 mb-4 mt-3">
               <div class="custom-block-wrap">
                  <a href="{{url(geturl($value['uri'], $value['page_key']))}}" > <img src="@if($value->page_thumbnail) {{asset('uploads/original/' . $value->page_thumbnail)}} @else {{asset('uploads/default-placeholder.png')}} @endif" class="custom-block-image img-fluid" alt="{{$value->post_title}}"></a>
                  <div class="custom-block">
                     <div class="custom-block-body">
                        <h5 class=""> {{$value->post_title}}</h5>
                     </div>
                  </div>
               </div>
            </div>
         @endforeach
         </div>
      </div>
   </section>
</main>

@endsection
