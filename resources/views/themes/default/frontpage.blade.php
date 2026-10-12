@extends('themes.default.common.master')
@section('content')
    <main>
        @if ($banner->count() > 0)
            <section class="hero-section hero-section-full-height">
                <div class="container-fluid">
                    <div class="row">
                        <div class="col-lg-12 col-12 p-0">
                            <div id="hero-slide" class="carousel carousel-fade slide" data-bs-ride="carousel">
                                <div class="carousel-inner">
                                    @foreach ($banner as $value)
                                        <div class="carousel-item {{ $loop->first ? 'active' : '' }}">
                                            <img src="{{ asset('uploads/banners/' . $value->picture) }}"
                                                class="carousel-image img-fluid" alt="{{ $value->title }}">
                                            <div class="banner-caption ">
                                                <h1>{{ $value->title }}</h1>
                                                <p>{{ $value->caption }}</p>
                                            </div>
                                        </div>
                                    @endforeach
                                </div>
                                @if ($banner->count() > 1)
                                    <button class="carousel-control-prev" type="button" data-bs-target="#hero-slide"
                                        data-bs-slide="prev">
                                        <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                                        <span class="visually-hidden">Previous</span>
                                    </button>

                                    <button class="carousel-control-next" type="button" data-bs-target="#hero-slide"
                                        data-bs-slide="next">
                                        <span class="carousel-control-next-icon" aria-hidden="true"></span>
                                        <span class="visually-hidden">Next</span>
                                    </button>
                                @endif
                            </div>
                        </div>

                    </div>
                </div>
            </section>
        @endif
        @if ($whywithus->count() > 0)
            <section class="section-padding">
                <div class="container">
                    <div class="row">
                        <div class="col-lg-10 col-12 text-center mx-auto">
                            <h2 class="mb-4">{{ $whyWithUsPost->uid }}</h2>
                            <p class="text-center mb-5">{!! $whyWithUsPost->content !!}
                            </p>
                        </div>
                        @foreach ($whywithus as $item)
                            <div class="col-lg-3 col-md-6 col-12 mb-4 mb-lg-0">
                                <div class="featured-block d-flex justify-content-center align-items-center">
                                    <a href="#" class="d-block">
                                        <img src="{{ asset('uploads/original/' . $item->page_thumbnail) }}"
                                            class="featured-block-image img-fluid" alt="{{ $item->post_title }}">
                                        <p class="featured-block-text"><strong>{{ $item->post_title }}</strong></p>
                                    </a>
                                </div>
                            </div>
                        @endforeach
                    </div>
                </div>
            </section>
        @endif
        <section class="section-padding section-bg" id="section_2">
            <div class="container">
                <div class="row">

                    <div class="col-lg-6 col-12 mb-5 mb-lg-0">
                        <img src="@if ($about->featured) {{ asset('uploads/original/' . $about->featured) }} @else {{ asset('uploads/default-placeholder.png') }} @endif"
                            class="custom-text-box-imageabout img-fluid" alt="{{ $about->post_type }}">
                    </div>

                    <div class="col-lg-6 col-12">
                        <div class="custom-text-box h-100">
                            <h2 class="mb-2">{{ $about->post_type }}</h2>

                            <h5 class="mb-4">{{ $about->uid }}</h5>

                            <!--<p class="mb-0">Lorem Ipsum dolor sit amet, consectetur adipsicing kengan omeg kohm tokito Sed leo nisl</p>-->
                            <p class="mb-4">{!! $about->caption !!}</p>
                            <a href="{{ url('page/' . posttype_url($about->uri)) }}" class="custom-btn btn">Know More</a>
                        </div>

                    </div>

                </div>
            </div>
        </section>

        <section class="cta-section section-padding section-bg">
            <div class="container">
                <div class="row justify-content-center align-items-center">

                    <div class="col-lg-5 col-12 ms-auto">
                        <h2 class="mb-0">{!! $career->uid !!}</h2>
                    </div>

                    <div class="col-lg-5 col-12">
                        <a href="{{ url('page/' . posttype_url($career->uri)) }}"
                            class="custom-btn btn smoothscroll">Become a Caregiver</a>
                    </div>

                </div>
            </div>
        </section>

        @if ($services->count() > 0)
            <section class="section-padding" id="section_3">
                <div class="container">
                    <div class="row">

                        <div class="col-lg-12 col-12 text-center mb-5">
                            <h2 class="mb-4">{{ $servicePost->post_type }}</h2>
                            <p class="text-center mb-0"> {!! $servicePost->caption !!}</p>
                        </div>
                        @foreach ($services->take(6) as $service)
                            <div class="col-lg-4 col-md-6 col-12 mb-4 mb-lg-0">
                                <div class="custom-block-wrap">
                                    <a href="{{ url(geturl($service['uri'], $service['page_key'])) }}"><img
                                            src="@if ($service->page_thumbnail) {{ asset('uploads/original/' . $service->page_thumbnail) }} @else {{ asset('uploads/default-placeholder.png') }} @endif"
                                            class="custom-block-image img-fluid" alt="{{ $service->post_title }}"></a>

                                    <div class="custom-block">
                                        <div class="custom-block-body">
                                            <h5 class="mb-3">{{ $service->post_title }}</h5>

                                        </div>

                                    </div>
                                </div>
                            </div>
                        @endforeach
                    </div>
                    <div class="text-center">
                        <a href="{{ url('page/' . posttype_url($servicePost->uri)) }}" class="custom-btn btn mt-3">Know
                            More</a>
                    </div>
                </div>
            </section>
        @endif
        <section class="news-section section-padding" id="section_5">
            <div class="container">
                <div class="row">

                    <div class="col-lg-12 col-12 mb-5">
                        <h2>Latest News</h2>
                    </div>

                    <div class="col-lg-7 col-12">
                        <div class="news-block">
                            <div class="news-block-top">
                                <a href="{{ url(geturl($latest_news['uri'], $latest_news['page_key'])) }}">
                                    <img src="{{ asset('uploads/original/' . $latest_news->page_thumbnail) }}"
                                        class="news-image img-fluid" alt="{{ $latest_news->post_title }}">
                                </a>

                            </div>

                            <div class="news-block-info">
                                <div class="d-flex mt-2">
                                    <div class="news-block-date">
                                        <p>
                                            <i class="bi-calendar4 custom-icon me-1"></i>
                                            {{ $latest_news->created_at->format('F d, Y') }}
                                        </p>
                                    </div>

                                </div>

                                <div class="news-block-title mb-2">
                                    <h4><a href="{{ url(geturl($latest_news['uri'], $latest_news['page_key'])) }}"
                                            class="news-block-title-link">{{ $latest_news->post_title }}</a></h4>
                                </div>

                                <div class="news-block-body">
                                    {!! $latest_news->post_excerpt !!}
                                </div>
                            </div>
                        </div>


                    </div>

                    <div class="col-lg-4 col-12 mx-auto">

                        <h5 class="mt-5 mb-3">Recent news</h5>
                        @foreach ($recent_news as $news)
                            <div class="news-block news-block-two-col d-flex mt-4">
                                <div class="news-block-two-col-image-wrap">
                                    <a href="{{ url(geturl($news['uri'], $news['page_key'])) }}">
                                        <img src="@if ($news->page_thumbnail) {{ asset('uploads/original/' . $news->page_thumbnail) }} @else {{ asset('uploads/default-placeholder.png') }} @endif"
                                            class="news-image img-fluid" alt="{{ $news->post_title }}">
                                    </a>
                                </div>

                                <div class="news-block-two-col-info">
                                    <div class="news-block-title mb-2">
                                        <h6><a href="{{ url(geturl($news['uri'], $news['page_key'])) }}"
                                                class="news-block-title-link">{{ $news->post_title }}</a></h6>
                                    </div>

                                    <div class="news-block-date">
                                        <p>
                                            <i class="bi-calendar4 custom-icon me-1"></i>
                                            {{ $news->created_at->format('F d, Y') }}
                                        </p>
                                    </div>
                                </div>
                            </div>
                        @endforeach
                    </div>

                </div>
            </div>
        </section>
        @if ($reviews->count() > 0)
            <section class="testimonial-section section-padding section-bg">
                <div class="container">
                    <div class="row">

                        <div class="col-lg-8 col-12 mx-auto">
                            <h2 class="mb-lg-3">Happy Customers</h2>

                            <div id="testimonial-carousel" class="carousel carousel-fade slide" data-bs-ride="carousel">

                                <div class="carousel-inner">
                                    @foreach ($reviews as $review)
                                        <div class="carousel-item {{ $loop->first ? 'active' : '' }}">
                                            <div class="carousel-caption">
                                                <h4 class="carousel-title">{{ $review->sub_title }}</h4>

                                                <small class="carousel-name"><span
                                                        class="carousel-name-title">{{ $review->post_title }}</span></small>
                                            </div>
                                        </div>
                                    @endforeach

                                    <ol class="carousel-indicators">
                                        @foreach ($reviews as $review)
                                            <li data-bs-target="#testimonial-carousel"
                                                data-bs-slide-to="{{ $loop->index }}"
                                                class="{{ $loop->first ? 'active' : '' }}">
                                                <img src="@if ($review->page_thumbnail) {{ asset('uploads/original/' . $review->page_thumbnail) }} @else {{ asset('uploads/Default_Profile_Picture.png') }} @endif"
                                                    class="img-fluid rounded-circle avatar-image"
                                                    alt="{{ $review->post_title }}">
                                            </li>
                                        @endforeach
                                    </ol>

                                </div>
                            </div>
                        </div>

                    </div>
                </div>
            </section>
        @endif



    </main>
@endsection
