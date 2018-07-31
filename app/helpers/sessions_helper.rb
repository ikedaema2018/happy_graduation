module SessionsHelper
  def log_in(user)
    session[:user_id] = user.id
  end

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

  private
    def check_logined
      if session[:user_id]
        begin
          @user = current_user
        rescue ActiveRecord::RecordNotFound
          reset_session
        end
      end

      unless @user
        flash[:refer] = request.fullpath
        redirect_to controller: :sessions, action: :new
      end
    end
end
