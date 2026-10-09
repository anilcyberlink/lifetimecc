<?php

namespace App\Http\Controllers\FrontendControllers;

use App\Models\ContactUs;
use App\Models\ServiceContactModel;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Mail;
use App\Mail\ContactMail;

class ContactUsController extends Controller
{
    //
    public function index(){
        //
    }

    private function getCaptcha($secretKey){
        $secret_key = env('SECRET_KEY');
        $response = file_get_contents("https://www.google.com/recaptcha/api/siteverify?secret=".$secret_key."&response={$secretKey}");
        $result = json_decode($response);
        return $result;
    }

    public function store(Request $request){
       
            $formFields = $request->validate([
                'first_name'=>'required',
                'last_name'=>'required',
                'email'=>['required', 'email'],
                'h-captcha-response' => 'required|HCaptcha',
            ]);
            $data = ContactUs::create([
                'first_name' => $request->first_name,
                'last_name' => $request->last_name,
                'email' => $request->email,
                'message' => $request->message,
            ]);
            
            if($data){
                foreach($request->services as $service){
                    $formFields = ServiceContactModel::create([
                    'contact_us_id' => $data->id,
                    'service_name' => $service
                    ]);
                }
            }
            
            Mail::send(new ContactMail());
            // return new ContactMail();
            return redirect()->back()->with('message','Thank you for contacting us.');  
            
          
    }
}
