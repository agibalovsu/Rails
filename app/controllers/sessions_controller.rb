class SessionsController < ApplicationController
  def index
    @user = current_user
  end

  def new

  end

  def create
    user = User.find_by(email: params[:email])

    if user&.authenticate(params[:password])
      session[:user_id] = user.id
      redirect_to tests_path
    else
      flash.now[:alert] = 'Проверьте правильность email и пароля'
      render :new
    end
  end

end
