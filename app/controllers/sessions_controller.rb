class SessionsController < ApplicationController
  skip_before_action :check_logined

  def new
  end

  def create 
    user = User.find_by(email: params[:session][:email].downcase)
    
    if user && user.authenticate(params[:session][:password])
      flash[:success] = 'ログインに成功しました'
      log_in user
      redirect_to user
    else
      flash[:danger] = 'メールアドレスかパスワードが間違っています'
      render 'new'
    end 
  end

  def destroy 
    log_out
    redirect_to login_path
  end
end
