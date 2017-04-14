module SessionsHelper
		#logs in the given user
	def log_in(user)
		session[:user_id] = user.id
	end
	
	# returns the current logged in user (if any are logged in at all)
	def current_user
		@current_user ||= User.find_by(id: session[:user_id])
	end

  # Returns true if a user is logged in, if not returns false
  def logged_in?
  	!current_user.nil?
  end

  # Logs out the current user if logged in
  def log_out
  	session.delete(:user_id)
  	@current_user = nil
  end
end
