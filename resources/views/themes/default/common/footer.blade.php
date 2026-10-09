<footer class="site-footer">
    <div class="container">
        <div class="row">
            <div class="col-lg-3 col-12 mb-4">
                <img src="{{asset('themes-assets/images/LifetimeCare.png')}}" class="logo img-fluid" alt="">

            </div>

            <div class="col-lg-4 col-md-6 col-12 mb-4">
                <h5 class="site-footer-title mb-3">Quick Links</h5>
                @foreach ($navigations as $row)
                <ul class="footer-menu">
                    <li class="footer-menu-item"><a href="{{ url('page/' . posttype_url($row->uri)) }}" class="footer-menu-link">{{$row->post_type}}</a></li>
                </ul>
                @endforeach
                 @foreach ($links as $row)
                <ul class="footer-menu">
                    <li class="footer-menu-item"><a href="{{ url('page/' . posttype_url($row->uri)) }}" class="footer-menu-link">{{$row->post_type}}</a></li>
                </ul>
                @endforeach
            </div>

            <div class="col-lg-4 col-md-6 col-12 mx-auto">
                <h5 class="site-footer-title mb-3">Contact Infomation</h5>

                <p class="text-white d-flex mb-2">
                    <i class="bi-telephone me-2"></i>

                    <a href="tel: {{$setting->phone}}" class="site-footer-link">
                    {{$setting->phone}}
                    </a>
                </p>
               <p class="text-white d-flex mb-2"><i class="bi bi-briefcase me-2"></i> {{$setting->phone2}} </p>
               
                <p class="text-white d-flex mb-2"><i class="bi bi-person-badge me-2"></i>Registration ID: 4-L1CT2HY</p>

                <p class="text-white d-flex">
                    <i class="bi-envelope me-2"></i>

                    <a href="mailto:{{$setting->email_primary}}" class="site-footer-link">
                    {{$setting->email_primary}}
                    </a>
                </p>
                
                

                <p class="text-white d-flex mt-3"><i class="bi-geo-alt me-2"></i> {{$setting->location1}}</p>

                <a href="{{$setting->google_map2}}" target="_blank" class="custom-btn btn mt-3">Get Direction</a>
            </div>
        </div>
    </div>

    <div class="site-footer-bottom">
        <div class="container">
            <div class="row">

                <div class="col-lg-6 col-md-7 col-12">
                    <p class="copyright-text mb-0"><a href="#">{{$setting->copyright_text}}</a>
                  </p>
                </div>
                
                <div class="col-lg-6 col-md-5 col-12 d-flex justify-content-center align-items-center mx-auto">
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
                            <a href="{{$setting->linkedin_link}}" target="_blank" class="social-icon-link bi-linkedin"></a>
                        </li>

                        <li class="social-icon-item">
                            <a href="{{$setting->youtube_link}}" target="_blank" class="social-icon-link bi-youtube"></a>
                        </li>
                    </ul>
                </div>
                
            </div>
        </div>
    </div>
</footer>

<!-- JAVASCRIPT FILES -->
<script src="{{asset('themes-assets/js/jquery.min.js')}}"></script>
<script src="{{asset('themes-assets/js/bootstrap.min.js')}}"></script>
<script src="{{asset('themes-assets/js/jquery.sticky.js')}}"></script>
<script src="{{asset('themes-assets/js/click-scroll.js')}}"></script>
<script src="{{asset('themes-assets/js/counter.js')}}"></script>
<script src="{{asset('themes-assets/js/custom.js')}}"></script>

</body>
</html>