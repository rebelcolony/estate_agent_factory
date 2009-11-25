class SessionsController < ApplicationController

	def new
		
	end

	def create
		session[:password] = params[:password]
		if
		session[:password] == "goldadmin"
		flash[:notice] = "Sucessfully logged in"
		redirect_to houses_path
		else
		flash[:error] = "Password is incorrect, please try again"
		redirect_to(:controller => 'sessions', :action => 'new')
		end
	end

	def destroy
		reset_session
		flash[:notice] = "Sucessfully logged out"
		redirect_to houses_path
	end
end
