@extends('themes.default.common.master')
@section('title',$data->post_type)
@section('meta_keyword',$data->meta_keyword)
@section('meta_description',$data->meta_description)
@section('thumbnail',$data->page_thumbnail)
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

    <section class="news-section section-padding section-bg">
    <div class="container">
        <div class="row">           
         @foreach($posts->slice(0,2) as $value)
            <div class="col-lg-6 col-12">
                <div class="news-block">
                    <div class="news-block-top">
                        <a href="{{url(geturl($value['uri'], $value['page_key']))}}">
                            <img src="@if($value->page_thumbnail) {{asset('uploads/original/' . $value->page_thumbnail)}} @else {{asset('uploads/default-placeholder.png')}} @endif" class="news-image img-fluid" alt="">
                        </a>                       
                    </div>

                    <div class="news-block-info custom-text-box">
                        <div class="d-flex mt-2">
                            <div class="news-block-date">
                                <p>
                                    <i class="bi-calendar4 custom-icon me-1"></i>
                                    {{$value->created_at->format('F d, Y')}}
                                </p>
                            </div>                            
                        </div>

                        <div class="news-block-title mb-2">
                            <h4><a href="{{url(geturl($value['uri'], $value['page_key']))}}" class="news-block-title-link">{{$value->post_title}}</a></h4>
                        </div>

                        <div class="news-block-body ">
                        {!!$value->post_excerpt!!}
                        </div>
                    </div>
                </div>
            </div>
            @endforeach
            @foreach($posts->skip(2) as $value)
             <div class="col-lg-4 col-12">
                <div class="news-block">
                    <div class="news-block-top">
                        <a href="{{url(geturl($value['uri'], $value['page_key']))}}">
                            <img src="@if($value->page_thumbnail) {{asset('uploads/original/' . $value->page_thumbnail)}} @else {{asset('uploads/default-placeholder.png')}} @endif" class="news-image img-fluid" alt="">
                        </a>                       
                    </div>

                    <div class="news-block-info custom-text-box">
                        <div class="d-flex mt-2">
                            <div class="news-block-date">
                                <p>
                                    <i class="bi-calendar4 custom-icon me-1"></i>
                                    {{$value->created_at->format('F d, Y')}}
                                </p>
                            </div>                           
                        </div>

                        <div class="news-block-title mb-2">
                            <h4><a href="{{url(geturl($value['uri'], $value['page_key']))}}" class="news-block-title-link">{{$value->post_title}}</a></h4>
                        </div>

                        <div class="news-block-body">
                            {!!$value->post_excerpt!!}
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
