@extends('themes.default.common.master')
@section('title',$data->post_title)
@section('meta_keyword',$data->meta_keyword)
@section('meta_description',$data->meta_description)
@section('thumbnail',$data->page_thumbnail)
@section('content')

<main>
<section class="news-section section-padding">
    <div class="container">
        <div class="row">

            <div class="col-lg-12 col-12">
                <div class="news-block">
                    <div class="news-block-top">
                        <img src="{{asset('uploads/original/' . $data->banner)}}" class="news-image img-fluid" alt="">
                    </div>

                    <div class="news-block-info">
                        <div class="d-flex mt-2">
                        <div class="news-block-date">
                            <p>
                                <i class="bi-calendar4 custom-icon me-1"></i>
                                {{$data->created_at->format('F d, Y')}}
                            </p>
                        </div>
                     
                    </div>

                    <div class="news-block-title mb-2">
                        <h4>{{$data->post_title}}</h4>
                    </div>

                        <div class="news-block-body">
                        {!!$data->post_content!!}

                           @if($data->sub_title) <blockquote>{{$data->sub_title}}</blockquote> @endif
                        </div>                     
                      
                        <div class="social-share border-top mt-5 py-4 d-flex flex-wrap align-items-center">                           

                            <div class="d-flex">
                                <!-- ShareThis BEGIN --><div class="sharethis-inline-share-buttons"></div><!-- ShareThis END -->
                            </div>
                        </div>

                       
                    </div>
                </div>
            </div>            
        </div>
    </div>
</section>

<section class="news-section section-padding section-bg">
    <div class="container">
        <div class="row">

            <div class="col-lg-12 col-12 mb-4">
                <h2>Related news</h2>
            </div>
             @foreach($related as $item)
                <div class="col-lg-4 col-12">
                    <div class="news-block">
                        <div class="news-block-top">
                            <a href="{{url(geturl($item['uri'], $item['page_key']))}}">
                                <img src="@if($item->page_thumbnail){{asset('uploads/medium/' . $item->page_thumbnail)}}@else {{asset('uploads/default-placeholder.png')}} @endif" class="news-image img-fluid" alt="">
                            </a>
                        </div>
    
                        <div class="news-block-info">
                            <div class="d-flex mt-2">
                                <div class="news-block-date">
                                    <p> <i class="bi-calendar4 custom-icon me-1"></i> {{$item->created_at->format('F d, Y')}} </p>
                                </div>                           
                            </div>
    
                            <div class="news-block-title mb-2">
                                <h4><a href="{{url(geturl($item['uri'], $item['page_key']))}}" class="news-block-title-link">{{$item->post_title}}</a></h4>
                            </div>
    
                            <div class="news-block-body">
                            {!!$item->post_excerpt!!}
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
