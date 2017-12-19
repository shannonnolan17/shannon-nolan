class UserController < ApplicationController
  def new
    erb :'views/users/sessions/new.html'
  end

  def create
    @user = User.new
    if @user.save(user_params)
      redirect_to '/'
    else
      @errors = @user.errors.full_messages
    end

  end


  def user_params
    params.require(:user).permit(:email, :password)
  end
end
