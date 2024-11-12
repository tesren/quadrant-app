<div>
    {{-- Stop trying to control. --}}

    @php
        $contact = request()->query('contact');
    @endphp

    @if ($contact != 'no')
        <div class="row justify-content-evenly mb-6">

            <div class="col-12 col-lg-5 align-self-center mb-5 mb-lg-0 px-4 px-lg-3">
                <div class="fs-1">
                    {{__('¿Necesitas más información?')}}
                </div>
                <div class="fs-3 fw-light">{{__('Completa el formulario y nos pondremos en contacto')}}</div>
                <hr class="blue-hr d-none d-lg-block">
            </div>

            <div class="col-12 col-lg-6 col-xxl-4 position-relative">

                <div class="d-flex justify-content-end">

                    <div class="fs-5 fw-light text-center align-self-center pe-3 pe-lg-5">
                        <i class="fa-solid fa-list-ol"></i> {{__('Formulario')}}
                    </div>

                    <div class="bg-blue rounded-top-5 col-7 col-lg-8 px-5 pt-3 pt-lg-4 pb-2 pb-lg-0 text-center">
                        <img class="w-75" src="{{asset('img/full-logo-quadrant-white.svg')}}" alt="">
                    </div>
                </div>

                <div class="p-4 p-lg-5 bg-blue rounded-bottom-5 rounded-start-5">
                    <form wire:submit="save" id="lead_form">
                                
                        <div class="row fs-5 fw-light">
                
                            <div class="col-12 d-flex mb-4">
                                <label for="full_name" class="me-3 align-self-center">{{__('Nombre')}}:</label>
                                <input type="text" wire:model="full_name" id="full_name" class="form-control mb-3 @error('full_name') is-invalid @enderror" required>
                            </div>
                
                            <x-honeypot/>
                
                            <div class="col-12 d-flex mb-4">
                                <label for="email" class="me-3 align-self-center">{{__('Correo')}}:</label>
                                <input type="email" wire:model="email" id="email" class="form-control mb-3" required>
                            </div>
                
                            <div class="col-12 d-flex mb-4">
                                <label for="phone" class="me-3 align-self-center">{{__('Teléfono')}}:</label>
                                <input type="tel" wire:model="phone" id="phone" class="form-control mb-3">
                            </div>
                
                            <div class="col-12 d-flex mb-4">
                                <label for="phone" class="me-3">{{__('Notas')}}:</label>
                                <textarea wire:model="message" id="message" cols="30" required class="form-control mb-4" rows="3"></textarea>
                            </div>
                
                            <input type="hidden" wire:model="url" id="url" value="{{ request()->fullUrl() }}">
                
                            <div class="col-12 text-center">
                                <button type="submit" class="btn btn-light rounded-pill fs-5 px-5" @if(session('message')) disabled @endif>
                                    {{__('Enviar')}}
                                </button>
                            </div>
                
                        </div>
                
                    </form>
                </div>
            
                {{-- Mensaje de éxito --}}
                @if (session('message'))
                    <div class="text-white rounded-2 p-3 bg-success fw-semibold fs-5 text-center mt-3 mb-4">
                        <i class="fa-regular fa-circle-check"></i> {{__(session('message'))}}
                    </div>

                    @script
                    <script>
                        const confirmationModal = new bootstrap.Modal('#confirmationModal');
                        confirmationModal.show();
                    </script>
                    @endscript
                @endif

                <div wire:loading class="text-center fs-5 my-3 text-warning"> 
                    <i class="fa-solid fa-spin fa-spinner"></i> {{__('Enviando, por favor espere')}}
                </div>            
            </div>

        </div>
    @endif
    
    {{-- Modal de confirmación --}}
    <div class="modal fade" id="confirmationModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
        <div class="modal-dialog modal-dialog-centered">
            <div class="modal-content text-white bg-blue">

                <img width="150px" src="{{asset('/img/quadrant-logo-icon-white.svg')}}" class="position-absolute start-0 top-0 m-3" alt="" style="opacity: 0.2;">

                <div class="modal-header">
                    <div class="modal-title fs-5 fw-light" id="exampleModalLabel">{{__('Formulario enviado')}}</div>
                    <button type="button" class="btn-close btn-close-white" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>

                <div class="modal-body text-center">
                    <div class="fs-1">{{__('¡Gracias!')}}</div>
                    <div class="fs-5 mb-4 fw-light">{{__('Su mensaje fue enviado exitosamente, nos comunicaremos con usted lo más pronto posible')}}</div>
                </div>
                
            </div>
        </div>
    </div>

</div>
