 <form class="custom-form contact-form" action="{{route('contact-us')}}" method="post" role="form">
    <h2>Contact form</h2>
    @csrf
    <p class="mb-4">Or, you can just send an email:
        <a href="mailto:{{$setting->email_primary}}">{{$setting->email_primary}}</a>
    </p>
    <div class="row">
        <div class="col-lg-6 col-md-6 col-12">
            <input type="text" name="first_name" id="first-name" class="form-control" placeholder="Name" required>
        </div>

        <div class="col-lg-6 col-md-6 col-12">
            <input type="text" name="last_name" id="last-name" class="form-control" placeholder="Last name" required>
        </div>
    </div>

    <input type="email" name="email" id="email" pattern="[^ @]*@[^ @]*" class="form-control" placeholder="Email" required>
    
   
    <p><strong>Services</strong></p>
    @foreach($services as $service)
    <label for="{{$service->uri}}">
        <input type="checkbox" id="{{$service->uri}}" name="services[]" value="{{$service->post_title}}"> {{$service->post_title}}
    </label>
  
    @endforeach
    
    <!--<p>Selected services:</p>-->
    
    <!--<ul id="selectedServices">-->
    <!--    <li>No services selected</li>-->
    <!--</ul>-->

    <textarea name="message" rows="5" class="form-control" id="message" placeholder="What can we help you?"></textarea>
     {!! HCaptcha::renderJs() !!}
     {!! HCaptcha::display() !!}
    <button type="submit" class="form-control">Send Message</button>
</form>