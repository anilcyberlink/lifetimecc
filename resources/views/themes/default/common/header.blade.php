<!doctype html>
<html lang="en">

<head>
    <title>@yield('post_title') {{$setting->site_name}} </title> 
   <meta charset="utf-8">
   <meta name="viewport" content="width=device-width, initial-scale=1">

   <meta name="author" content="{{ env('APP_NAME') }}">
   
    <meta name="keywords" content="{{$setting->meta_key}}, @yield('meta_keyword') "/>
    <meta name="description" content="{{$setting->meta_description}}, @yield('meta_description')"/>   

    <meta property="og:title" content="@yield('title')" />
	<meta property="og:description" content="@yield('meta_description')" />
	<meta property="og:url" content="{{url()->current()}}" />
	<meta property="og:locale" content="en_US" />
	<meta property="og:site_name" content="{{$setting->site_name}}" />
	<meta property="og:type" content="website" />
    @if (trim($__env->yieldContent('thumbnail')))
    <meta property="og:image" content="{{ asset('uploads/medium/' ) }}/@yield('thumbnail')"/>
    @else
    <meta property="og:image" content="{{asset('themes-assets/images/LifetimeCare.png')}}"/>
    @endif
    <meta property="og:image:width" content="1000"/>
    <meta property="og:image:height" content="600"/>
    @if (trim($__env->yieldContent('thumbnail')))
    <meta name="twitter:image" content="{{ asset('uploads/medium/' ) }}/@yield('thumbnail')"/>
    @else
    <meta property="twitter:image" content="{{asset('themes-assets/images/LifetimeCare.png')}}"/>
    @endif
    <meta name="twitter:url" content="{{url()->current()}}">
    <meta name="twitter:title" content="@yield('title')">
    <meta name="twitter:description" content="@yield('meta_description')">
    <meta name="twitter:card" content="summary_large_image"/>
   <!-- CSS FILES -->
   <link href="{{asset('themes-assets/css/bootstrap.min.css')}}" rel="stylesheet">

   <link href="{{asset('themes-assets/css/bootstrap-icons.css')}}" rel="stylesheet">

   <link href="{{asset('themes-assets/css/style.css')}}" rel="stylesheet">

    <link rel="shortcut icon" href="{{asset('themes-assets/images/life-favicon.png')}}" type="image/x-icon" />
   <script type='text/javascript' src='https://platform-api.sharethis.com/js/sharethis.js#property=66069f3158eed300122e7d22&product=sop' async='async'></script>

</head>

<body id="section_1">

   <header class="site-header">
      <div class="container">
         <div class="row">

            <div class="col-lg-8 col-12 d-flex flex-wrap">
               <p class="d-flex me-4 mb-0">
                  <i class="bi-geo-alt me-2"></i>
                  {{$setting->location1}}
               </p>

               <p class="d-flex mb-0">
                  <i class="bi-envelope me-2"></i>

                  <a href="mailto:{{$setting->email_primary}}">
                  {{$setting->email_primary}}
                  </a>
               </p>
            </div>

            <div class="col-lg-3 col-12 ms-auto d-lg-block d-none">
               <ul class="social-icon">
                  <li class="social-icon-item">
                     <a href="{{$setting->twitter_link}}" target="_blank" class="social-icon-link bi-twitter"></a>
                  </li>

                  <li class="social-icon-item">
                     <a href="{{$setting->facebook_link}}" target="_blank" class="social-icon-link bi-facebook"></a>
                  </li>

                  <li class="social-icon-item">
                     <a href="{{$setting->instagram_link}}" target="_blank" class="social-icon-link bi-instagram"></a>
                  </li>

                  <li class="social-icon-item">
                     <a href="{{$setting->youtube_link}}" target="_blank" class="social-icon-link bi-youtube"></a>
                  </li>

                  <li class="social-icon-item">
                     <a href="{{$setting->google_plus}}" target="_blank" class="social-icon-link bi-whatsapp"></a>
                  </li>
               </ul>
            </div>

         </div>
      </div>
   </header>

   <nav class="navbar navbar-expand-lg bg-light shadow-lg">
      <div class="container">
         <a class="navbar-brand" href="{{url('/')}}">
            <img src="{{asset('themes-assets/images/LifetimeCare.png')}}" class="logo img-fluid" alt="Lifetime Community Care">
            <!--<span>-->
            <!--    Lifetime Community Care                      -->
            <!--</span>-->
            <img src="{{asset('themes-assets/images/ndis-logo.png')}}"  class="logo img-fluid-logo" alt="Lifetime Community Care">

         </a>

         <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
         </button>

         <div class="collapse navbar-collapse" id="navbarNav">
            <ul class="navbar-nav ms-auto">
               <li class="nav-item">
                  <a class="nav-link" href="{{url('/')}}">Home</a>
               </li>
            @foreach ($navigations as $row)
               <li class="nav-item {{$loop->last ? 'ms-3' : ''}}">
                  <a class="nav-link {{$loop->last ? 'custom-btn custom-border-btn btn' : ''}} " href="{{ url('page/' . posttype_url($row->uri)) }}">{{$row->post_type}}</a>
               </li> 
            @endforeach
            </ul>
         </div>
      </div>
   </nav>