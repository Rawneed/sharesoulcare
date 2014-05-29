class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
#  before_action :authenticate_user!

 helper_method :admin?

 protected

 def admin?
  false
 end

 def authorize
  unless admin?
   flash[:error] = "authorized access"
   redirect_to root_path
   false
  end
 end
end
