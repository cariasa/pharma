class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def authorize_admin
  	if not user_signed_in?
  		redirect_to root_path, alert: 'Acceso Denegado A'
  	else
      if not current_user.admin?
  		  redirect_to root_path, alert: 'Acceso Denegado B'
      end
  	end
  end

end
