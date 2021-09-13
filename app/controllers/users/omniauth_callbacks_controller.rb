# frozen_string_literal: true

class Users::OmniauthCallbacksController < Devise::OmniauthCallbacksController
  # You should configure your model like this:
  # devise :omniauthable, omniauth_providers: [:discord]

  # You should also create an action method in this controller like this:
  # def twitter
  # end
  def discord
    puts '-=-=-=-=-=-=-=- DISCORD -=-=-=-=-=-=-=-'
    puts request.env['omniauth.auth']
    redirect_to 'http://localhost:3000'
  end

  # More info at:
  # https://github.com/heartcombo/devise#omniauth

  # GET|POST /resource/auth/twitter
  def passthru
    super
  end

  # GET|POST /users/auth/twitter/callback
  def failure
    redirect_to 'http://localhost:3000'
  end

  # protected

  # The path used when OmniAuth fails
  def after_omniauth_failure_path_for(scope)
    super(scope)
  end
end
