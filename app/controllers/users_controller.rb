class UsersController < ApplicationController
    #find user by id and render
    def show
        user = User.find(params[:id])
        render json: user, include: :items, status: :ok
    rescue ActiveRecord::RecordNotFound
        render json: {error: "User not found"}
    end
end