class ApplicationController < ActionController::Base
  #protect_from_forgery with: :exception
  include Pundit
  before_action :configure_permitted_parameters, if: :devise_controller?
  
  def after_sign_in_path_for(resource_or_scope)
   weeks_path
  end


  rescue_from Pundit::NotAuthorizedError, with: :user_not_authorized



  protected

  def configure_permitted_parameters
   devise_parameter_sanitizer.for(:sign_up) << :name
  end

  def user_not_authorized
    flash[:alert] = "Lo sentimos. No tienes autorización para ver esta página."
    redirect_to(request.referrer || root_path)
  end

end
