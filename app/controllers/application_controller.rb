class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception


  def after_sign_in_path_for(resource_or_scope)
  	users_path
  end

  def authenticate_admin
  	redirect_to root_path, notice: "You do not have rights to perform this action" unless admin_signed_in?
  end

end
