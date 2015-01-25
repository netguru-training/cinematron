class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :authenticate_user

  def current_user
    User.where(id: session[:user_id]).first
  end

  def authenticate_user
    if current_user.nil?
      redirect_to root_path, notice: 'Musisz być zalogowany'
    end
  end

  helper_method :current_user

  decent_configuration do
    strategy DecentExposure::StrongParametersStrategy
  end
end
