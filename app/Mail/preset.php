<?php

namespace App\Mail;

use Illuminate\Bus\Queueable;
use Illuminate\Contracts\Queue\ShouldQueue;
use Illuminate\Mail\Mailable;
use Illuminate\Queue\SerializesModels;

class preset extends Mailable
{
    use Queueable, SerializesModels;

    public $useremail;
    private $password;
    public $code;
    /**
     * Create a new message instance.
     *
     * @return void
     */
    public function __construct(String $useremail, $code)
    {
        $this->useremail = $useremail;
        $this->code = $code;
    }

    /**
     * Build the message.
     *
     * @return $this
     */
    public function build()
    {
        return $this->view('mail.passwordreset');
    }
}
