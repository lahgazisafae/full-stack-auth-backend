class UsersController < ApplicationController

  #regular create method, B-crypt is taking care of changing password to password_digest
  def create
    @user = User.new(user_params)
    if @user.save
      render json:{user: @user}, status: :created
    else
      render json: {errors: @user.errors.full_messages }, status: :not_acceptable
    end
  end


  def user_params
    params.require(:user).permit(:username, :password, :first_name, :last_name)
  end


end
