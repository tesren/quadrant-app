<?php

namespace App\Livewire;

use App\Mail\NewLead;
use App\Models\Message;
use Livewire\Component;
use Livewire\Attributes\Validate;
use Illuminate\Support\Facades\Http;
use Illuminate\Support\Facades\Mail;
use Spatie\Honeypot\Http\Livewire\Concerns\HoneypotData;
use Spatie\Honeypot\Http\Livewire\Concerns\UsesSpamProtection;



class ContactForm extends Component
{
    use UsesSpamProtection;

    #[Validate('required')] 
    public $full_name = '';
 
    #[Validate('required')] 
    public $email = '';

    public $phone = '';
    public $message = '';
    public $url = '';

    public HoneypotData $extraFields;
    
    public function mount()
    {
        $this->extraFields = new HoneypotData();
        $this->url = request()->fullUrl();
    }
    
    public function render()
    {
        return view('livewire.components.contact-form');
    }

    public function save()
    {
        $this->validate(); 
        $this->protectAgainstSpam();

        $msg = new Message();

        $msg->name = $this->full_name;
        $msg->email = $this->email;
        $msg->phone = $this->phone;
        $msg->content = $this->message;
        $msg->url = $this->url;

        $msg->save();


        //para el webhook
        $type = "Contacto desde el sitio web de Quadrant Luxury Ocean Living";


        if( app()->getLocale() == 'es' ){
            $lang = 'Español';
        }
        else{
            $lang = 'Inglés';
        }

        //Envíamos webhook
        $webhookUrl = 'https://hooks.zapier.com/hooks/catch/4710110/288mlip/';

        // Datos que deseas enviar en el cuerpo de la solicitud
        $data = [
            'name' => $msg->name,
            'email' => $msg->email,
            'phone' => $msg->phone,
            'url' => $msg->url,
            'content' => $msg->content,
            'interest' => 'Condominios',
            'development' => 'Quadrant',
            'lang' => $lang,
            'type'  => $type,
            'created_at' => $msg->created_at,
        ];

        // Enviar la solicitud POST al webhook
        $response = Http::post($webhookUrl, $data);


        /* $email = Mail::to('info@domusvallarta.com')->bcc('ventas@punto401.com');
    
        //$email = Mail::to('erick@punto401.com');
        
        $email->send(new NewLead($msg)); */

        session()->flash('message', 'Mensaje enviado existosamente');

        $this->reset();

    }
}