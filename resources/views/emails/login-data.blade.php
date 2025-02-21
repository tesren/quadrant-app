<!DOCTYPE html>

<html lang="es">

    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta http-equiv="X-UA-Compatible" content="ie=edge">
        <title>Mensaje de Quadrant Luxury Ocean Living</title>
    </head>

    @php
        $lang = $user->lang;
        App::setLocale($lang);

        //primeras 3 letras del nombre
        $generatedPass = substr($user->name, 0, 3);

        //gion bajo y primeras 2 letras del correo
        $generatedPass .= '_'.substr($user->email, 0, 2);

        //lenguage en mayusculas y año actual
        $generatedPass .= strtoupper($user->lang).date('Y');

        //simbolo en caso de que no haya pais
        $generatedPass .= '&';
    @endphp

    <body>

        <img src="{{asset('img/mail-logo-quadrant.jpg')}}" alt="Quadrant logo" style="width: 100%; margin-bottom:25px;">

        @if($lang == 'es')
            <h1 style="text-align: center;">
                {{__('BIENVENIDO')}} <br>
                {{__('Pre-Venta Privada Especial')}} <br>
                {{__('Quadrant Torre Elara')}}
            </h1>

            <h2>Estimado(a) {{$user->name}}</h2>

            <p>Esperamos que al recibir este correo, usted y su familia se encuentren muy bien.</p>

            <p>En Domus nos enorgullece informarle que finalmente ha llegado el momento de salir a la preventa privada especial de Quadrant Torre Elara, que es exclusiva para las personas que como usted, solicitaron ser incluidos en este evento exclusivo.</p>

            <p>A partir de este momento, usted podrá ingresar al sitio especial Quadrant Torre Elara <a href="https://www.quadrantrn.com.mx/login">https://www.quadrantrn.com.mx/login</a>, en donde podrá encontrar información detallada</p>
            
            <p>
                {{__('Correo')}}: {{ $user->email }}<br>
                {{__('Contraseña')}}: {{ $generatedPass }}<br>
            </p>

            <p>
                Atentamente, <br>
                DOMUS Fine Real Estate
            </p>


            <hr style="opacity: 1; color:2A345A;">

        @else

            <h1 style="text-align: center;">
                {{__('WELCOME')}} <br>
                {{__('Special Private Presale')}} <br>
                {{__('Quadrant Tower Elara')}}
            </h1>

            <h2>Dear {{$user->name}}:</h2>

            <p>We hope that upon receiving this email, you and your family are doing very well.</p>
            
            <p>We at Domus are proud to inform you that the time has finally come to go on the special private presale of Quadrant Tower Elara, which is exclusive for people like you, who requested to be included in this exclusive event.</p>
            
            
            <p>From this moment on, you will be able to enter the special Quadrant Tower Elara site <a href="https://www.quadrantrn.com.mx/en/login">https://www.quadrantrn.com.mx/en/login</a>, where you will be able to find detailed information</p>
            <p>
                Email: {{ $user->email }}<br>
                Password: {{ $generatedPass }}<br>
            </p>
            
            <p>
                Sincerely yours, <br>
                DOMUS Fine Real Estate
            </p>
            

            <hr style="opacity: 1; color:2A345A;">

        @endif
        

    </body>

</html>