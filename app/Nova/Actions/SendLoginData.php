<?php

namespace App\Nova\Actions;

use App\Models\User;
use App\Models\Email;
use App\Mail\LoginData;
use Illuminate\Bus\Queueable;
use Laravel\Nova\Actions\Action;
use Illuminate\Support\Collection;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\Http;
use Illuminate\Support\Facades\Mail;
use Laravel\Nova\Fields\ActionFields;
use Illuminate\Queue\InteractsWithQueue;
use Illuminate\Contracts\Queue\ShouldQueue;
use Laravel\Nova\Http\Requests\NovaRequest;


class SendLoginData extends Action
{
    use InteractsWithQueue, Queueable;

    /**
     * Perform the action on the given models.
     *
     * @param  \Laravel\Nova\Fields\ActionFields  $fields
     * @param  \Illuminate\Support\Collection  $models
     * @return mixed
     */
    public function handle(ActionFields $fields, Collection $models)
    {
        if( count($models) > 1 ){
            return Action::danger(__('Por favor no enviar más de 1 correo al mismo tiempo'));
        }else{

            foreach($models as $user){

                /* if($user->role == 'client' or $user->role == 'agent'){ */
                    try{

                        //primeras 3 letras del nombre
                        $generatedPass = substr($user->name, 0, 3);
            
                        //gion bajo y primeras 2 letras del correo
                        $generatedPass .= '_'.substr($user->email, 0, 2);
        
                        //lenguage en mayusculas y año actual
                        $generatedPass .= strtoupper($user->lang).date('Y');
        
                        //simbolo en caso de que no haya pais
                        $generatedPass .= '&';

                        
                        //notificacion a asesores
                        if( $user->role == 'client' ){

                            //contraseña del agente
                            $agentPass = substr($user->agent->name, 0, 3);
                
                            //gion bajo y primeras 2 letras del correo
                            $agentPass .= '_'.substr($user->agent->email, 0, 2);
            
                            //lenguage en mayusculas y año actual
                            $agentPass .= strtoupper($user->agent->lang).date('Y');
            
                            //simbolo en caso de que no haya pais
                            $agentPass .= '&';


                            //Envíamos webhook
                            $webhookUrl = 'https://hooks.zapier.com/hooks/catch/4710110/2wj7gl2/';

                            // Datos que deseas enviar en el cuerpo de la solicitud
                            $data = [
                                'client_name' => $user->name,
                                'client_email' => $user->email,
                                'client_pass' => $generatedPass,
                                'agent_email' => $user->agent->email,
                                'agent_name' => $user->agent->name,
                                'agent_pass' => $agentPass,
                            ];

                            // Enviar la solicitud POST al webhook
                            $response = Http::post($webhookUrl, $data);

                            $agent_mod = User::find($user->agent->id);
                            $agent_mod->password = Hash::make($agentPass);
                            $agent_mod->save();

                            //correo al cliente
                            $email = Mail::to($user->email);

                            //$email->bcc( ['javier@punto401.com', 'erick@punto401.com'] );


                            $email->send(new LoginData($user));

            
                            if ($email) {
                                // El correo electrónico se envió correctamente
                                
                                $mail = new Email();
                                $mail->user_id = $user->id;
                                $mail->agent_id = auth()->user()->id;
                                $mail->email = $user->email;
                                $mail->password = $generatedPass;
                                $mail->save();

                                //actualizamos la contraseña a la generada
                                $user->password = Hash::make($generatedPass);
                                $user->save();
        
                                return Action::message(__('Datos de acceso enviados correctamente.'));

                            } else {
                                // Ocurrió un error al enviar el correo electrónico
                                return Action::danger(__('Error al enviar el correo a ').$user->email);
                            }

                        }
                        else{

                            //Envíamos webhook
                            $webhookUrl = 'https://hooks.zapier.com/hooks/catch/4710110/2gbsc5j/';

                            // Datos que deseas enviar en el cuerpo de la solicitud
                            $data = [
                                'name' => $user->name,
                                'email' => $user->email,
                                'pass' => $generatedPass,
                            ];

                            // Enviar la solicitud POST al webhook
                            $response = Http::post($webhookUrl, $data);

                            $user_mod = User::find($user->id);
                            $user_mod->password = Hash::make($generatedPass);
                            $user_mod->save();
                        }

                        
                    }
                    catch(\Exception $e){
                        return Action::danger(__('Error al enviar email: ').$e->getMessage() );
                    }
                /* }
                else{
                    return Action::danger('El usuario '.$user->name.' no es cliente ni asesor.' );
                } */
                

            }

        }
    }

    /**
     * Get the fields available on the action.
     *
     * @param  \Laravel\Nova\Http\Requests\NovaRequest  $request
     * @return array
     */
    public function fields(NovaRequest $request)
    {
        return [];
    }

    /**
     * Get the displayable name of the action.
     *
     * @return string
    */
    public function name()
    {
        return __('Enviar datos de acceso');
    }
}
