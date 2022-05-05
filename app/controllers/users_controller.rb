class UsersController < ApplicationController

    def new 
        # @user = User.new(user_params)

        @user = User.new

       
    end 

    def create 

        @user = User.new(user_params)

        if @user.save 
            redirect_to new_user_path

        else 
            render :new, status: :unprocessable_entity

        end 
    end 

    def edit 
        @user = User.find(params[:id])
    end 

    def update 
        @user = User.find(params[:id])

        if @user.update(edit_params)
            render new_user_path 
        else :edit 
        end 
    end 

    private 

    def user_params 
        params.require(:user).permit(:username, :email, :password)
    end 

    def edit_params 
        params.require(:user).permit(:username, :email)
    end 

end
