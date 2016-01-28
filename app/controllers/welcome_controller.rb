# app/controllers/welcome_controller.rb
class WelcomeController < ApplicationController
  # auth callback POST comes from Steam so we can't attach CSRF token
  skip_before_filter :verify_authenticity_token, :only => :auth_callback

  def index
  end

  def auth_callback
    auth = request.env['omniauth.auth']
    session[:current_user] = { :nickname => auth.info['nickname'],
                               :name => auth.info['name'],
                               :location => auth.info['location'],
                               :image => auth.extra.raw_info['avatarfull'],
                               :profileurl => auth.extra.raw_info['profileurl'],
                               :uid => auth.uid }
    redirect_to root_url
  end

  def destroy 
    session[:current_user]=nil
    sleep 3
    redirect_to root_url
  end

  def show

  end
end