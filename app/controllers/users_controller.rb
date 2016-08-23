class UsersController < ApplicationController
  def create
    @user = User.new user_params

    if @user.save
      render json: @user, root: nil
    else
      render json: { error: ('Email in use') }, status: :unprocessable_entity
    end
  end

  private
  def user_params
    params.require(:user).permit(:email, :password)
  end
end