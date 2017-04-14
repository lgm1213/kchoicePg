class SessionsController < ApplicationController
  def new
  end

  def create
  	user = User.find_by(username: params[:session][:username])
  	if user && user.authenticate(params[:session][:password])
  		#log the user in and redirect to user's show page
  		log_in user
  		redirect_to root_url
  	else
  		#creates an error message
	  	flash.now[:danger] = 'Invalid email/password combination'
	  	render 'new'
	  end
  end

  def destroy
  	log_out
  	redirect_to root_url
  end
end