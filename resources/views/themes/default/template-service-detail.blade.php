@extends('themes.default.common.master')
@section('title', $data->post_title)
@section('thumbnail', $data->page_thumbnail)
@section('meta_keyword', $data->meta_keyword)
@section('meta_description', $data->meta_description)
@section('content')

<main>
 <section class="news-detail-header-section text-center" style="background-image: url('{{asset('uploads/original/' . $data->banner)}}');">
    <div class="section-overlay"></div>

    <div class="container">
        <div class="row">

            <div class="col-lg-12 col-12">
                <h1 class="text-white">{{$pos_type->post_type}}</h1>
            </div>

        </div>
    </div>
</section>

<section class="news-section section-padding">
    <div class="container">
        <div class="row">

            <div class="col-lg-9 col-12">
                <div class="news-block">
                    <div class="news-block-top">
                        <img src="@if($data->page_thumbnail) {{asset('uploads/original/' . $data->page_thumbnail)}} @else {{asset('uploads/default-placeholder.png')}} @endif" class="news-image img-fluid" alt="{{$data->post_title}}">
                       
                        </div>
                    </div>

                    <div class="news-block-info">
                        

                    <div class="news-block-title mb-2 mt-3">
                        <h4>{{$data->post_title}}</h4>
                    </div>

                        <div class="news-block-body">
                        {!!$data->post_content!!}
                        </div>
                        @if($images->count()>0)
                        <div class="row mt-5 mb-4">
                        @foreach($images as $image) 
                            <div class="col-lg-6 col-12 mb-4">
                                <img src="{{asset('uploads/original/' . $image->image)}}" class="news-detail-image img-fluid" alt="Image">
                            </div>
                        @endforeach
                        </div>                     
                        @endif

                    </div>
                </div>
            

            <div class="col-lg-3 col-12 mx-auto mt-4 mt-lg-0">             
               @if($related->count() > 0)
                <h5 class="mt-5 mb-3">Other Services</h5>
                @foreach($related as $item)
                <div class="news-block news-block-two-col d-flex mt-4">
                    <div class="news-block-two-col-image-wrap">
                        <a href="{{url(geturl($item['uri'], $item['page_key']))}}">
                            <img src="@if($item->page_thumbnail) {{asset('uploads/medium/' . $item->page_thumbnail)}} @else {{asset('uploads/default-placeholder.png')}} @endif" class="news-image img-fluid" alt="{{$item->post_title}}">
                        </a>
                    </div>

                    <div class="news-block-two-col-info">
                        <div class="news-block-title mb-2">
                            <h6><a href="{{url(geturl($item['uri'], $item['page_key']))}}" class="news-block-title-link">{{$item->post_title}}</a></h6>
                        </div>

                        
                    </div>
                </div>
               @endforeach
               @endif
            </div>

        </div>
    </div>
</section>
</main>

@endsection
