module SessionsHelper

	def log_in(user)
        session[:user_id] = user.id
      end

      # Returns the current logged-in user (if any).
      def current_user
        @current_user ||= User.find_by(id: session[:user_id])
      end

      def logged_in?
        !current_user.nil?
      end

      def log_out
        session.delete(:user_id)
        @current_user = nil
      end

      def destroy
        log_out
        redirect_to '/login'
      end
end
