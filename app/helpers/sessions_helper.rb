module SessionsHelper
		#logs in the given user
	def log_in(user)
		session[:user_id] = user.id
	end
	
	# returns the current logged in user (if any are logged in at all)
	def current_user
		if (user_id = session[:user_id])
			@current_user ||= User.find_by(id: session[:user_id])
		elsif (user_id = cookies.signed[:user_id])
			user = User.find_by(id: user_id)
			if user && user.authenticated?(cookies[:remember_token])
				log_in user
				@current_user = user
			end
		end
	end

  # Returns true if a user is logged in, if not returns false
  def logged_in?
  	!current_user.nil?
  end

  def forget(user)
  	user.forget
  	cookies.delete(:user_id)
  	cookies.delete(:remember_token)
  end


  # Logs out the current user if logged in
  def log_out
  	current_user && forget(current_user)
  	session.delete(:user_id)
  	@current_user = nil
  end
end



def current_user
    if (user_id = session[:user_id])
      @current_user ||= User.find_by(id: user_id)
    elsif (user_id = cookies.signed[:user_id])
      user = User.find_by(id: user_id)
      if user && user.authenticated?(cookies[:remember_token])
        log_in user
        @current_user = user
      end
    end
  end