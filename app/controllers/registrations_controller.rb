class RegistrationsController < Devise::RegistrationsController
  protected

  def after_sign_up_path_for(resource)
    if resource.coach?
      user_path(resource)
    else
      root_path
    end
  end
end
