class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?

  rescue_from ActionController::Redirecting::UnsafeRedirectError do
    redirect_to root_url
  end

  protected

  public def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:first_name])
    devise_parameter_sanitizer.permit(:sign_up, keys: [:last_name])
    devise_parameter_sanitizer.permit(:sign_up, keys: [:about_me])
    devise_parameter_sanitizer.permit(:sign_up, keys: [:phone_number])
  end
end
