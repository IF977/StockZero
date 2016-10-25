class UsersController < ApplicationController
  
  def new
    @user = User.new
  end
  def create
    @user = User.new(user_params)
    if @user.save
      session[:user_id] = @user.id
      #flash[:success] = "Usuario cadastrado com sucesso"
      redirect_to '/login'
    else
      redirect_to '/signup'
    end
  end
  
  private
  def user_params
    params.require(:user).permit(:email, :password)
  end
  
  def email_is_valid
  
  end
end
