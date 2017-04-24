class SessionsController < ApplicationController
  def new
  end

  def create
  	user = User.find_by(username: params[:session][:username])
  	if user && user.authenticate(params[:session][:password])
  		if user.activated?
      #log the user in and redirect to user's show page
  		log_in user
      params[:session][:remember_me] == '1' ? remember(user) : forget(user)
  		redirect_back_or user
  	else
      message = "Account not activated."
      message = "Check your email for the activation link."
  		#creates an error message
	  	flash[:warning] = message
	  	redirect_to root_url
	  end
  end
  
  def destroy
  	log_out if logged_in?
  	  redirect_to root_url
    end
  end

end
