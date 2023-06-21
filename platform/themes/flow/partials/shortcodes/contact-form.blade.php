<section class="pb-65 contact-form">
    <div class="container">
        @if(!empty($title))
        <h3 class="font-heading mb-50">{{ $title }}</h3>
        @endempty
        <div class="row">
            <div class="col-md-12">
                {!! Form::open(['route' => 'public.send.contact', 'method' => 'POST', 'class' => 'contact-form', 'id' => 'contactForm']) !!}
                <div class="row">
                    <div class="col-12 col-sm-6">
                        <div class="form-group">
                            <input class="form-control" name="name" id="name" type="text" placeholder="Name" required>
                        </div>
                    </div>
                    <div class="col-12 col-sm-6">
                        <div class="form-group">
                            <input class="form-control" name="email" id="email" type="email" placeholder="Email" required>
                        </div>
                    </div>
                    <div class="col-12">
                        <div class="form-group">
                            <input type="text" class="form-control" name="phone" value="{{ old('phone') }}"
                                id="contact_phone" placeholder="{{ __('Phone') }}" required>
                        </div>
                    </div>
                    <div class="col-12">
                        <div class="form-group">
                            <textarea class="form-control w-100" name="content" id="content" cols="30" rows="9"
                                placeholder="Message" required></textarea>
                        </div>
                    </div>
                </div>
                @if (setting('enable_captcha') && is_plugin_active('captcha'))
                <div class="contact-form-row">
                    <div class="contact-column-12">
                        <div class="contact-form-group">
                            {!! Captcha::display() !!}
                        </div>
                    </div>
                </div>
                @endif
                <div class="form-group">
                    <button class="btn btn-lg bg-dark text-white" type="submit">{{ __('Finish & Submit') }}</button>
                </div>
                {!! Form::close() !!}
            </div>
        </div>
    </div>
</section>
