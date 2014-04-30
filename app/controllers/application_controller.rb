class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  before_filter :configure_permitted_parameters, if: :devise_controller?

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.for(:sign_up) << :name
    devise_parameter_sanitizer.for(:sign_up) << :phone
    devise_parameter_sanitizer.for(:sign_up) << :numberofcourts
    devise_parameter_sanitizer.for(:sign_up) << :sponsorshiplevel
    devise_parameter_sanitizer.for(:sign_up) << :courtsname
    devise_parameter_sanitizer.for(:sign_up) << :courtsaddress
    devise_parameter_sanitizer.for(:sign_up) << :courtscity
    devise_parameter_sanitizer.for(:sign_up) << :courtszip
    devise_parameter_sanitizer.for(:sign_up) << :public
    devise_parameter_sanitizer.for(:account_update) << :name
    devise_parameter_sanitizer.for(:account_update) << :phone
    devise_parameter_sanitizer.for(:account_update) << :numberofcourts
    devise_parameter_sanitizer.for(:account_update) << :sponsorshiplevel
    devise_parameter_sanitizer.for(:account_update) << :courtsname
    devise_parameter_sanitizer.for(:account_update) << :courtsaddress
    devise_parameter_sanitizer.for(:account_update) << :courtscity
    devise_parameter_sanitizer.for(:account_update) << :courtszip
    devise_parameter_sanitizer.for(:account_update) << :public
  end
end
