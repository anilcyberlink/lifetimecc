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

    <section class="contact-section section-padding" id="section_6">
        <div class="container">
            <div class="row">

                <div class="col-lg-4 col-12 ms-auto mb-5 mb-lg-0">
                    <div class="contact-info-wrap">
                        <h2>Get in touch</h2>
                         <?php /* ?>
                        <div class="contact-image-wrap d-flex flex-wrap">
                           
                            <!-- <img src="images/avatar/studio-portrait-emotional-happy-funny.jpg" class="img-fluid avatar-image" alt="">

                            <div class="d-flex flex-column justify-content-center ms-3">
                                <p class="mb-0">Anish Shrestha</p>
                                <p class="mb-0"><strong>HR & Office Manager</strong></p>
                            </div> -->
                            
                        </div>
                        <?php */?>
                        <div class="contact-info">
                            <h5 class="mb-3">Contact Infomation</h5>

                            <p class="d-flex mb-2">
                                <i class="bi-geo-alt me-2"></i>
                                {{$setting->location1}}
                            </p>

                            <p class="d-flex mb-2">
                                <i class="bi-telephone me-2"></i>

                                <a href="tel: {{$setting->phone}}">
                                {{$setting->phone}}
                                </a>
                            </p>
                                    <p class="d-flex">
                                <i class="bi-envelope me-2"></i>

                                <a href="mailto:{{$setting->email_primary}}">
                                {{$setting->email_primary}}
                                </a>
                            </p>
                            <p class="d-flex mb-2">
                        <i class="bi bi-briefcase me-2"></i>

                        
                        {{$setting->phone2}}
                       
                     </p>
                                     <p class="d-flex mb-2"><i class="bi bi-person-badge me-2"></i>Registration ID: 4-L1CT2HY</p>

                    

                            <a href="{{$setting->google_map2}}" target="_blank" class="custom-btn btn mt-3">Get Direction</a>
                        </div>
                    </div>
                </div>

                <div class="col-lg-5 col-12 mx-auto">
                @include('themes.default.common.message')
                @include('themes.default.common.contact-us')
                </div>

            </div>
        </div>
    </section>
</main>

@endsection
<script>
    document.addEventListener('DOMContentLoaded', function () {
       var cb = document.querySelectorAll("input[type=checkbox]");
       var fs = document.querySelector('#selectedServices');
       cb.forEach((e) => {
           e.addEventListener('change', function() {
              myfun(); 
           });
       });
       
       function myfun() {
        // console.log("hello");
        fs.innerHTML = "";
        cb.forEach((e) => {
           if(e.checked){
               var option = document.createElement("li");
            //   console.log(e);
               option.appendChild(document.createTextNode(e.value));
               fs.appendChild(option);
           } 
        });
    }
    });
</script>