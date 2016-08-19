class SessionsController < ApplicationController
	def new
	end

	def create
	  user = User.authenticate(params[:session][:email],params[:session][:password])
	  if user
	    session[:user_id] = user.id
	    redirect_to root_url, :notice => "Logged in!"
	  else
	    flash.now.alert = "Invalid email or password"
	  end
	end

	def destroy
	  session[:user_id] = nil
	  redirect_to root_url, :notice => "Logged out!"
	end

	def login
	end
end
