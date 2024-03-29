class ApplicationController < ActionController::Base
  helper :all # include all helpers, all the time
  protect_from_forgery # See ActionController::RequestForgeryProtection for details

  # Scrub sensitive parameters from your log
  # filter_parameter_logging :password

helper_method :admin?

protected

def authorize
	unless admin?
	flash[:error] = "Unauthorized Access"
	redirect_to houses_path
	end
end

def admin?
	session[:password] == "goldadmin"
end
	
end
