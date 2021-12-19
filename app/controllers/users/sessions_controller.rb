class Users::SessionsController < Devise::SessionsController
  def create
    super
      flash[:notice] = "Привет, #{current_user.first_name}!" if current_user
  end
end
