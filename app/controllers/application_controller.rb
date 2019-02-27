class ApplicationController < ActionController::Base
  before_action :authenticate_user!

  before_action :configure_permitted_parameters, if: :devise_controller?

  def configure_permitted_parameters
    # For additional fields in app/views/devise/registrations/new.html.erb
    devise_parameter_sanitizer.permit(:sign_up, keys: [:first_name, :bio, :last_name, :address, :user_image, :coach])

    # For additional in app/views/devise/registrations/edit.html.erb
    # when we have update profil we need to put more things here
    devise_parameter_sanitizer.permit(:account_update, keys: [:username])
  end
end
