class ApplicationController < ActionController::Base
  before_action :authenticate_user!
  before_action :configure_permitted_parameters, if: :devise_controller?

  private
  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:"sign_up", keys: [:name])
    devise_parameter_sanitizer.permit(:"sign_up", keys: [:proffile])
    devise_parameter_sanitizer.permit(:"sign_up", keys: [:occupation])
    devise_parameter_sanitizer.permit(:"sign_up", keys: [:position])
    devise_parameter_sanitizer.permit(:"signed_in", keys: [:title])
    devise_parameter_sanitizer.permit(:"signed_in", keys: [:image])
    devise_parameter_sanitizer.permit(:"signed_in", keys: [:catch_copy])
    devise_parameter_sanitizer.permit(:"signed_in", keys: [:concept])
  end
end
