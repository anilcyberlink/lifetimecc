<?php

namespace App\Mail;

use Illuminate\Bus\Queueable;
use Illuminate\Contracts\Queue\ShouldQueue;
use Illuminate\Http\Request;
use Illuminate\Mail\Mailable;
use Illuminate\Queue\SerializesModels;
use App\Models\Settings\SettingModel;
use App\Models\ServiceContactModel;

class ContactMail extends Mailable
{
    use Queueable, SerializesModels;

    /**
     * Create a new message instance.
     *
     * @return void
     */
    public function __construct()
    {
        //
    }

    /**
     * Build the message.
     *
     * @return $this
     */
    public function build(Request $request)
    {
        $admin = SettingModel::where('id',1)->first();
        $mail = $admin->email_secondary;
        $services = $request->services;
        $first = $request->first_name;
        $last = $request->last_name;
        $email = $request->email;
        $messages = $request->message;
        return $this->view('emails.contact_us', ['first'=>$first,'last'=>$last,'messages'=>$messages,'services' => $services,'email' => $email])->to($mail)->cc('bishika@lifetimecommunitycare.com.au');
    }
}
