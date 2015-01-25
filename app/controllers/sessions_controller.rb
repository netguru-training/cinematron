class SessionsController < ApplicationController

  def create
    user = User.find_or_create_by(user_params)
    reset_session
    session[:user_id] = user.id
    redirect_to root_path, notice: 'You are logged in'
  end

  def destroy
    reset_session
    redirect_to root_path, notice: 'You are logged out '
  end

  private

  def auth_hash
    request.env['omniauth.auth']
  end
  
  def user_params 
    {
        email: auth_hash[:info][:email],
        fullname: auth_hash[:info][:name],
        provider: auth_hash[:provider],
        uid: auth_hash[:uid]
    }
  end
end
