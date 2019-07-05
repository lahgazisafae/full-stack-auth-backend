class UsersController < ApplicationController
    before_action: :authorize, only: [:edit]
  
    def create
        @user = User.new(user_params)

        if @user.save
            render json: {user: @user.username}, status: :created
        else
            render json: {errors: @user.errors.full_messages}, status: :unprocessable_entity
        end

    end

    def edit
        render json: {message: "You have edited successfully"}
    end


    def user_params

        params.require(:user).permit([:username, :password, :first_name, :last_name])

    end

        


end
