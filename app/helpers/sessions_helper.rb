module SessionsHelper

	def sign_in (user_id)
		session[:user_id] = @user.id
	end

	def current_user
		@current_user ||= User.find_by(id: session[:user_id])
	end

	def block_access
		if current_user.present?
			redirect_to root_path
		end
	end

	def logged_in?
	   !current_user.nil?
	end

	def is_traveler?
		if current_user.type == 'Traveler'
			return true
		end
	end

	def sign_out
	   session.delete(:user_id)
	   @current_user = nil
	end
end
